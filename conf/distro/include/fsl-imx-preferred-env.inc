PREFERRED_PROVIDER_virtual/bootloader:imx-nxp-bsp = "u-boot-imx"
PREFERRED_PROVIDER_virtual/kernel:imx-nxp-bsp = "linux-imx"
PREFERRED_PROVIDER_linux-imx-mfgtool = "linux-imx-mfgtool"

PREFERRED_PROVIDER_opencl-headers:imxgpu = "imx-gpu-viv"
PREFERRED_PROVIDER_opencl-icd-loader:imxgpu = "imx-gpu-viv"
PREFERRED_PROVIDER_virtual/libgles3:imxgpu3d = "imx-gpu-viv"

PREFERRED_VERSION_gstreamer1.0-plugins-base = "1.20.0.imx"
PREFERRED_VERSION_gstreamer1.0-plugins-bad  = "1.20.0.imx"
PREFERRED_VERSION_gstreamer1.0-plugins-good = "1.20.0.imx"
PREFERRED_VERSION_gstreamer1.0-plugins-good-qt = "1.20.0.imx"
PREFERRED_VERSION_gstreamer1.0-plugins-ugly = "1.20.4"
PREFERRED_VERSION_gstreamer1.0              = "1.20.0.imx"
PREFERRED_VERSION_gstreamer1.0-libav        = "1.20.4"
PREFERRED_VERSION_gstreamer1.0-rtsp-server  = "1.20.4"

PREFERRED_VERSION_gstreamer1.0-plugins-base:mx8-nxp-bsp = "1.20.0.imx"
PREFERRED_VERSION_gstreamer1.0-plugins-bad:mx8-nxp-bsp  = "1.20.0.imx"
PREFERRED_VERSION_gstreamer1.0-plugins-good:mx8-nxp-bsp = "1.20.0.imx"
PREFERRED_VERSION_gstreamer1.0-plugins-good-qt:mx8-nxp-bsp = "1.20.0.imx"
PREFERRED_VERSION_gstreamer1.0-plugins-ugly:mx8-nxp-bsp = "1.20.4"
PREFERRED_VERSION_gstreamer1.0:mx8-nxp-bsp              = "1.20.0.imx"
PREFERRED_VERSION_gstreamer1.0-libav:mx8-nxp-bsp        = "1.20.4"
PREFERRED_VERSION_gstreamer1.0-rtsp-server:mx8-nxp-bsp  = "1.20.4"

PREFERRED_VERSION_opengl-es-cts:mx6-nxp-bsp = "3.2.4.0"
PREFERRED_VERSION_opengl-es-cts:mx7-nxp-bsp = "3.2.4.0"
PREFERRED_VERSION_opengl-es-cts:aarch64 = "3.2.7.0"

# Use systemd as default init manager
VIRTUAL-RUNTIME_init_manager = "systemd"
PREFERRED_PROVIDER_udev = "systemd"
PREFERRED_PROVIDER_udev-utils = "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
POKY_DEFAULT_DISTRO_FEATURES += " systemd"