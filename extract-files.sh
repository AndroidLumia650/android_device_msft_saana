#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=saana
VENDOR=mmo

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

ANDROID_ROOT="${MY_DIR}/../../.."

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Default to sanitizing the vendor folder before extraction
CLEAN_VENDOR=true

KANG=
SECTION=

while [ "${#}" -gt 0 ]; do
    case "${1}" in
        -n | --no-cleanup )
                CLEAN_VENDOR=false
                ;;
        -k | --kang )
                KANG="--kang"
                ;;
        -s | --section )
                SECTION="${2}"; shift
                CLEAN_VENDOR=false
                ;;
        * )
                SRC="${1}"
                ;;
    esac
    shift
done

if [ -z "${SRC}" ]; then
    SRC="adb"
fi

function blob_fixup() {
    case "${1}" in
    # Provide shim for libdpmframework.so
    lib/libdpmframework.so)
        for  LIBCUTILS_SHIM in $(grep -L "libcutils_shim.so" "${2}"); do
            "${PATCHELF}" --add-needed "libcutils_shim.so" "$LIBCUTILS_SHIM"
        done
        ;;
    # Patch blobs for VNDK
    vendor/lib/libmmcamera2_stats_modules.so)
        "${PATCHELF}" --remove-needed "libgui.so" "${2}"
        sed -i "s|/data/misc/camera|/data/vendor/qcam|g" "${2}"
        sed -i "s|libandroid.so|libcamshim.so|g" "${2}"
        ;;

    # Patch blobs for VNDK
    vendor/lib/lib-dplmedia.so)
        "${PATCHELF}" --remove-needed "libmedia.so" "${2}"
        ;;

    # Add shim for libbase LogMessage functions
    vendor/bin/imsrcsd | vendor/lib/lib-uceservice.so)
        for  LIBBASE_SHIM in $(grep -L "libbase_shim.so" "${2}"); do
            "${PATCHELF}" --add-needed "libbase_shim.so" "$LIBBASE_SHIM"
        done
        ;;

    esac
}
# Initialize the helper
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}" false "${CLEAN_VENDOR}"

extract "${MY_DIR}/proprietary-files.txt" "${SRC}" "${KANG}" --section "${SECTION}"

"${MY_DIR}/setup-makefiles.sh"
