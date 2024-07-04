FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
PATCHTOOL = "git"
SRC_URI += " \
        file://0001-Add-2024.patch \
        file://0002-update-dts.patch \
        file://0003-remove-comments.patch \
        file://0004-update-defconfig.patch \
        file://0005-configs.patch \
        file://0006-fix-tlv-eeprom-mac-retrieval.patch \
"

LTO:class-target = ""

include ${@bb.utils.contains('BBFILE_COLLECTIONS', 'mender', 'u-boot-imx-mender.inc', '', d)}
