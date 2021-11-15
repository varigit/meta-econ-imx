FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = "\
    file://econ_camera.cfg  \
    file://0001-media-platform-imx8-add-e-con-AR1335AF-camera-suppor.patch  \
    file://0002-defconfig-add-support-for-e-con-AR1335AF-camera-on-i.patch  \
    file://0003-mxc-capture-add-new-device-tree-property-pixel-mode-.patch  \
    file://0004-devicetree-add-e-con-camera-support-to-imx8mm-var-da.patch  \
    file://0005-ar1335_af-add-missing-compatible-specification.patch  \
"

# imx8mm-var-dart make added devicetree default
pkg_postinst_kernel-devicetree_append_imx8mm-var-dart () {
        cd $D/boot
        mv imx8mm-var-dart-dt8mcustomboard.dtb imx8mm-var-dart-dt8mcustomboard-ov5640.dtb
        ln -fs imx8mm-var-dart-dt8mcustomboard-econ-camera.dtb imx8mm-var-dart-dt8mcustomboard.dtb
        mv imx8mm-var-dart-dt8mcustomboard-legacy.dtb imx8mm-var-dart-dt8mcustomboard-legacy-ov5640.dtb
        ln -fs imx8mm-var-dart-dt8mcustomboard-legacy-econ-camera.dtb imx8mm-var-dart-dt8mcustomboard-legacy.dtb
        mv imx8mm-var-som-symphony.dtb imx8mm-var-som-symphony-ov5640.dtb
        ln -fs imx8mm-var-som-symphony-econ-camera.dtb imx8mm-var-som-symphony.dtb
        mv imx8mm-var-som-symphony-legacy.dtb imx8mm-var-som-symphony-legacy-ov5640.dtb
        ln -fs imx8mm-var-som-symphony-legacy-econ-camera.dtb imx8mm-var-som-symphony-legacy.dtb
}

