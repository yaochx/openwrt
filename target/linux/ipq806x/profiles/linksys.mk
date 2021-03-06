#
# Copyright (c) 2014 The Linux Foundation. All rights reserved.
# Copyright (C) 2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/EA8500
	NAME:=Linksys EA8500 Max-Stream AC2600 MU-MIMO
	PACKAGES:= \
		kmod-usb-core kmod-usb-ohci kmod-usb2 \
		kmod-usb3 kmod-usb-dwc3-qcom kmod-usb-phy-qcom-dwc3 \
		kmod-ath10k wpad-mini ath10k-firmware-qca99x0 \
		kmod-usb-storage-extras kmod-fs-msdos \
		kmod-fs-ntfs kmod-fs-ext4 kmod-fs-cifs \
		kmod-nls-utf8 kmod-nls-iso8859-1 kmod-nls-cp437 \
		uboot-envtools caldata-utils
endef

define Profile/EA8500/Description
	Package set for the Linksys EA8500 Max-Stream AC2600 MU-MIMO.
endef

$(eval $(call Profile,EA8500))
