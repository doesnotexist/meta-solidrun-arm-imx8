FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
PATCHTOOL = "git"
SRC_URI += " \
        file://0001-Add-2024.patch \
"

LTO:class-target = ""

include ${@bb.utils.contains('BBFILE_COLLECTIONS', 'mender', 'u-boot-imx-mender.inc', '', d)}
