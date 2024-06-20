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
		file://0014-arm-mvebu-clearfog-enable-tlv-library-for-spl-in-fav.patch \
		file://0016-imx8mp-detect-board-from-tlv-eeprom.patch \
		file://0017-imx8mp-don-t-pre-define-fdtfile-environment-variable.patch \
		file://0020-imx8mp-implement-tlv-eeprom-vendor-extension-for-kit.patch \
		file://0022-net-dwc_eth_qos-enable-clocks-in-write_hwaddr.patch \
		file://0023-imx8mp-solidrun-For-yocto-only-pass-the-fdtfile.patch \
		file://0024-Automatic-DDR-detection-for-i.MX8MP.patch \
		file://0025-Add-HummingBoard-Extended-tlv-based-support.patch \
		file://0027-board-solidrun-imx8mp-fix-fdtfile-variable-setting.patch \
		file://0028-board-solidrun-imx8mp-update-spl_print_ddr_tables-wi.patch \
		file://0029-imx8mp-solidrun-add-ddr-training-for-8gb-micron-modu.patch \
		file://0030-board-solidrun-imx8mp-introduce-ddr-training-patches.patch \
		file://0031-board-solidrun-imx8mp-remove-dtb-fixup-for-hummingbo.patch \
		file://0032-net-phy-genphy_config-disable-BMCR_PDOWN-if-set.patch \
		file://0036-configs-imx8mp-solidrun-move-environment-to-fit-with.patch \
		file://0037-net-fec_mxc-add-weak-implementation-of-board_get_mac.patch \
"

LTO:class-target = ""

include ${@bb.utils.contains('BBFILE_COLLECTIONS', 'mender', 'u-boot-imx-mender.inc', '', d)}
