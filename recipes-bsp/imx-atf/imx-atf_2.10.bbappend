###############################################################
# BEGIN: Changes to imx-atf_2.8.bb

FILESEXTRAPATHS:prepend:solidsensen8 := "${THISDIR}/${PN}-2.8:"

SRC_URI:append:solidsensen8 = " \
file://0001-changed-the-RDC-for-imx8mn-uart4.patch \
"
