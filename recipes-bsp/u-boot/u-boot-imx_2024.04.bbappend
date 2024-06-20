FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
PATCHTOOL = "git"
SRC_URI += " \
        file://0001-Add-imx8mp-solidrun-support-for-lf_v2022.04.patch \
        file://0002-imx8mp-add-memory-support-for-2GByte-Samsung.patch \
        file://0003-imx8mp_solidrun-add-ddr-calibration-for-Samsung-4GB-.patch \
		file://0006-cmd-tlv_eeprom-do_tlv_eeprom-stop-using-non-api-read.patch \
"

LTO:class-target = ""

include ${@bb.utils.contains('BBFILE_COLLECTIONS', 'mender', 'u-boot-imx-mender.inc', '', d)}
