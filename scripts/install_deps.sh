# Copyright (c) 2026 Sameer Al Sahab
# SPDX-License-Identifier: GPL-3.0-or-later

DEPENDENCY_CONFIG=(
    # Ubuntu / Arch (AUR)
    "openjdk-17-jdk|jdk17-openjdk|java|true"
    "python3|python|python|true"
    "xmlstarlet|xmlstarlet|xmlstarlet|false"
    "zipalign|android-sdk-build-tools|zipalign|false"
)

DETECTED_DISTRO_TYPE=""

GET_DISTRO_TYPE()
{
    if [ -f /etc/os-release ]; then
        . /etc/os-release

        if [[ "$ID" == "arch" || "$ID_LIKE" == *"arch"* ]]; then
            echo "arch"
            return
        elif [[ "$ID" == "debian" || "$ID_LIKE" == *"debian"* || "$ID" == "ubuntu" || "$ID_LIKE" == *"ubuntu"* ]]; then
            echo "debian"
            return
        fi
    fi

    if command -v pacman &>/dev/null; then
        echo "arch"
    elif command -v apt &>/dev/null; then
        echo "debian"
    else
        echo "unknown"
    fi
}

INSTALL_DEPENDENCY()
{
    local DEBIAN_PACKAGE="$1"
    local ARCH_PACKAGE="$2"
    local COMMAND_NAME="$3"
    local REQUIRED="$4"

    if command -v "$COMMAND_NAME" &>/dev/null; then
        return 0
    fi

    case "$DETECTED_DISTRO_TYPE" in
        arch)
            LOGI "Installing $ARCH_PACKAGE using pacman..."

            if sudo pacman -Sy --needed --noconfirm "$ARCH_PACKAGE"; then
                LOGI "$ARCH_PACKAGE installed successfully."
            else
                LOGW "$ARCH_PACKAGE not found in pacman repositories"

                if command -v yay &>/dev/null; then
                    LOGI "Trying to install $ARCH_PACKAGE using yay..."
                    if yay -S --noconfirm "$ARCH_PACKAGE"; then
                        LOGI "$ARCH_PACKAGE installed successfully with yay"
                    else
                        LOGE "Failed to install $ARCH_PACKAGE using yay"
                        [ "$REQUIRED" == "true" ] && exit 1
                    fi
                else
                    LOGE "yay is not installed"
                    LOGI "Install yay manually:"
                    echo "    sudo pacman -S yay"

                    [ "$REQUIRED" == "true" ] && exit 1
                fi
            fi
            ;;

        debian)
            LOGI "Installing $DEBIAN_PACKAGE using apt..."

            sudo apt update

            if sudo apt install -y "$DEBIAN_PACKAGE"; then
                LOGI "$DEBIAN_PACKAGE installed successfully"
            else
                LOGE "Failed to install $DEBIAN_PACKAGE"

                [ "$REQUIRED" == "true" ] && exit 1
            fi
            ;;

        *)
            LOGE "Unsupported Linux distribution"
            LOGI "Please install dependencies manually:"

            exit 1
            ;;
    esac
}

CHECK_DEPS()
{
    DETECTED_DISTRO_TYPE=$(GET_DISTRO_TYPE)

    LOGI "Detected distro : $DETECTED_DISTRO_TYPE"

    for DEP in "${DEPENDENCY_CONFIG[@]}"; do
        IFS='|' read -r DEBIAN_PACKAGE ARCH_PACKAGE COMMAND_NAME REQUIRED <<< "$DEP"

        INSTALL_DEPENDENCY \
            "$DEBIAN_PACKAGE" \
            "$ARCH_PACKAGE" \
            "$COMMAND_NAME" \
            "$REQUIRED"
    done
}


