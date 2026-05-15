# Copyright (c) 2026 Sameer Al Sahab
# SPDX-License-Identifier: GPL-3.0-or-later

LOG() {
    local indent=0

    while [[ $# -gt 0 ]]; do
        case "$1" in
            --indent|-i)
                indent="$2"
                shift 2
                ;;
            *)
                break
                ;;
        esac
    done

    local pad=""
    for ((i=0; i<indent; i++)); do
        pad+=" "
    done

    echo -e "${pad}$*"
}

LOGE() {
    echo -e "\033[0;31m[ERROR] $1\033[0m" >&2
}

LOGW() {
    echo -e "\033[0;33m[WARN] $1\033[0m" >&2
}

LOGS() {
    echo -e "\033[0;32m[DONE] $1\033[0m"
}
