# Copyright (C) 2018 Daniel Dickinson <cshored@thecshore.com>

# Released under the MIT license (see COPYING.MIT for the terms)

inherit openwrt openwrt-services

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "\
	file://modutils.init \
	"

do_install_append() {
	install -dm 0755 ${D}/etc/init.d
	install -Dm 0755 ${S}/modutils.init ${D}/etc/init.d/modutils
}
