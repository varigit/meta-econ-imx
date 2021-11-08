FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = "\
    file://0001-media-platform-imx8-add-e-con-AR1335AF-camera-suppor.patch  \
    file://0002-defconfig-add-support-for-e-con-AR1335AF-camera-on-i.patch  \
    file://0003-mxc-capture-add-new-device-tree-property-pixel-mode-.patch  \
    file://0004-devicetree-add-e-con-camera-support-to-imx8mm-var-da.patch  \
"

