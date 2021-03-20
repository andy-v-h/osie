#!/bin/bash

case $(uname -m) in
aarch64) grub_efi_arch=arm64 ;;
x86_64) grub_efi_arch=amd64 ;;
*) echo "unknown arch" && exit 1 ;;
esac

# shellcheck disable=SC2206
packages=(
	binutils
	curl
	dmidecode
	dosfstools
	efibootmgr
	ethtool
	file
	lshw
	gdisk
	git
	grub-efi-$grub_efi_arch-bin
	grub2-common
	hdparm
	inetutils-ping
	ipmitool
	iproute2
	jq
	mdadm
	nvme-cli
	parted
	pciutils
	pv
	python3
	python3-pip
	python3-apt
	python3-distutils
	sg3-utils
	smartmontools
	systemd
	unzip
	vim
	wget
	xmlstarlet
)
echo "${packages[@]}"

[[ $(uname -m) == 'x86_64' ]] && echo 'grub-pc-bin'
