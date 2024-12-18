#!/bin/sh

# Script Name: copy_etc_configs.sh
# Script Path: <git_root>/copy_etc_configs.sh
# Description: Copy etc configuration files.

# Copyright (c) 2024 Aryan
# SPDX-License-Identifier: BSD-3-Clause

# Version: 1.0.0

# Singular files
cp "/etc/dracut.conf" "./kotori/"
cp "/etc/environment" "./kotori/"
cp "/etc/hostname" "./kotori/"
cp "/etc/i3blocks.conf" "./kotori/"
cp "/etc/imv_config" "./kotori/"
cp "/etc/resolv.conf.head" "./kotori/"
cp "/etc/sysctl.conf" "./kotori/"
cp "/etc/wgetrc" "./kotori/"
cp "/etc/zathurarc" "./kotori/"

# X11
mkdir -p "./kotori/X11/xinit/"
cp "/etc/X11/xinit/xinitrc" "./kotori/X11/xinit/"

# Chrony
mkdir -p "./kotori/chrony/"
cp "/etc/chrony/chrony.conf" "./kotori/chrony/"

# OpenRC configuration files
mkdir -p "./kotori/conf.d/"
cp "/etc/conf.d/hostname" "./kotori/conf.d/"
cp "/etc/conf.d/keymaps" "./kotori/conf.d/"
cp "/etc/conf.d/net" "./kotori/conf.d/"
cp "/etc/conf.d/syncthing" "./kotori/conf.d/"

# Libvirt
mkdir -p "./kotori/libvirt/"
cp "/etc/libvirt/libvirtd.conf" "./kotori/libvirt/"

# Explicitly loaded modules
mkdir -p "./kotori/modules-load.d/"
cp "/etc/modules-load.d/netfilter.conf" "./kotori/modules-load.d/"

# MPV
mkdir -p "./kotori/mpv/"
cp "/etc/mpv/input.conf" "./kotori/mpv/"
cp "/etc/mpv/mpv.conf" "./kotori/mpv/"
mkdir -p "./kotori/mpv/script-opts/"
cp "/etc/mpv/script-opts/osc.conf" "./kotori/mpv/script-opts/"
mkdir -p "./kotori/mpv/scripts/"
cp "/etc/mpv/scripts/osc_on_seek.lua" "./kotori/mpv/scripts/"
cp "/etc/mpv/scripts/seek_to.lua" "./kotori/mpv/scripts/"
cp "/etc/mpv/scripts/visualizer.lua" "./kotori/mpv/scripts/"

# PAM
mkdir -p "./kotori/pam.d/"
cp "/etc/pam.d/doas" "./kotori/pam.d/"
cp "/etc/pam.d/su" "./kotori/pam.d/"
cp "/etc/pam.d/system-local-login" "./kotori/pam.d/"

# Portage
mkdir -p "./kotori/portage/"
cp "/etc/portage/make.conf" "./kotori/portage/"
mkdir -p "./kotori/portage/env/"
cp "/etc/portage/env/no_hardening.conf" "./kotori/portage/env/"
cp "/etc/portage/env/no_lto.conf" "./kotori/portage/env/"
cp "/etc/portage/env/no_tmpfs.conf" "./kotori/portage/env/"
cp "/etc/portage/env/no_trapv.conf" "./kotori/portage/env/"
mkdir -p "./kotori/portage/package.env/"
cp "/etc/portage/package.env/package.env" "./kotori/portage/package.env/"
mkdir -p "./kotori/portage/package.license/"
cp "/etc/portage/package.license/package.license" "./kotori/portage/package.license/"
mkdir -p "./kotori/portage/package.mask/"
cp "/etc/portage/package.mask/deny.mask" "./kotori/portage/package.mask/"
mkdir -p "./kotori/portage/package.unmask/"
cp "/etc/portage/package.unmask/allow.unmask" "./kotori/portage/package.unmask/"
mkdir -p "./kotori/portage/package.use/"
cp "/etc/portage/package.use/disable.use" "./kotori/portage/package.use/"
cp "/etc/portage/package.use/enable.use" "./kotori/portage/package.use/"
cp "/etc/portage/package.use/x.use" "./kotori/portage/package.use/"
mkdir -p "./kotori/portage/repos.conf/"
cp "/etc/portage/repos.conf/repos.conf" "./kotori/portage/repos.conf/"
mkdir -p "./kotori/portage/savedconfig/sys-kernel/"
cp "/etc/portage/savedconfig/sys-kernel/linux-firmware" "./kotori/portage/savedconfig/sys-kernel/"
mkdir -p "./kotori/portage/sets/"
cp "/etc/portage/sets/llvm-tc" "./kotori/portage/sets/"

# SSH
mkdir -p "./kotori/ssh/"
touch "./kotori/ssh/sshd_config"

# Stubby
mkdir -p "./kotori/stubby/"
cp "/etc/stubby/stubby.yml" "./kotori/stubby/"

# Sway
mkdir -p "./kotori/sway/"
cp "/etc/sway/config" "./kotori/sway/"

# Wireplumber
mkdir -p "./kotori/wireplumber/wireplumber.conf.d/"
cp "/etc/wireplumber/wireplumber.conf.d/90-rename_main_output.conf" "./kotori/wireplumber/wireplumber.conf.d/"

# XDG configuration files
mkdir -p "./kotori/xdg/"
cp "/etc/xdg/mimeapps.list" "./kotori/xdg/"
cp "/etc/xdg/user-dirs.conf" "./kotori/xdg/"
cp "/etc/xdg/user-dirs.defaults" "./kotori/xdg/"
mkdir -p "./kotori/xdg/alacritty/"
cp "/etc/xdg/alacritty/alacritty.toml" "./kotori/xdg/alacritty/"
cp "/etc/xdg/alacritty/dark.toml" "./kotori/xdg/alacritty/"
mkdir -p "./kotori/xdg/nvim/"
cp "/etc/xdg/nvim/init.lua" "./kotori/xdg/nvim/"
cp "/etc/xdg/nvim/sysinit.vim" "./kotori/xdg/nvim/"
mkdir -p "./kotori/xdg/nvim/colors/"
cp "/etc/xdg/nvim/colors/aurora.vim" "./kotori/xdg/nvim/colors/"
mkdir -p "./kotori/xdg/nvim/ftplugin/"
cp "/etc/xdg/nvim/ftplugin/html.lua" "./kotori/xdg/nvim/ftplugin/"
cp "/etc/xdg/nvim/ftplugin/tex.lua" "./kotori/xdg/nvim/ftplugin/"
cp "/etc/xdg/nvim/ftplugin/text.lua" "./kotori/xdg/nvim/ftplugin/"

# ZSH
mkdir -p "./kotori/zsh/"
cp "/etc/zsh/zprofile" "./kotori/zsh/"
cp "/etc/zsh/zsh_aliases" "./kotori/zsh/"
cp "/etc/zsh/zshenv" "./kotori/zsh/"
cp "/etc/zsh/zshrc" "./kotori/zsh/"
