FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
PATCHTOOL = "git"
SRC_URI += " \
        file://0001-Add-imx8mp-solidrun-support-for-lf_v2022.04.patch \
        file://0002-imx8mp-add-memory-support-for-2GByte-Samsung.patch \
        file://0003-imx8mp_solidrun-add-ddr-calibration-for-Samsung-4GB-.patch \
        file://0006-cmd-tlv_eeprom-do_tlv_eeprom-stop-using-non-api-read.patch \
        file://0007-cmd-tlv_eeprom-convert-functions-used-by-command-to-.patch \
        file://0008-cmd-tlv_eeprom-remove-empty-function-implementations.patch \
        file://0009-cmd-tlv_eeprom-move-missing-declarations-and-defines.patch \
        file://0010-cmd-tlv_eeprom-hide-access-to-static-tlv_devices-arr.patch \
"

LTO:class-target = ""

include ${@bb.utils.contains('BBFILE_COLLECTIONS', 'mender', 'u-boot-imx-mender.inc', '', d)}
