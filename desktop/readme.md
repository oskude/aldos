# [`ALDOS`](../readme.md) Desktop

_under-construction.gif_

<br>

## ToDo

- pkgs: `--assume-installed ttf-font=1.0`
- is setvtrgb color change so "spotty on start" also on real hardware?
- firefox (gsettings-desktop-schemas) hardcoded fonts https://bugs.archlinux.org/task/62046

<br>

## Meta

| | |
|-|-|
| [System_Disk](https://man.archlinux.org/man/fstab.5) | [`etc/fstab`](./etc/fstab) |
| [Main Theme](./usr/local/bin/aldos-theme) | [`theme.json`](./theme.json) |
| [etc/aldos/ handler](https://man.archlinux.org/man/systemd.generator.7) | [`etc/systemd/system-generators/aldos`](./etc/systemd/system-generators/aldos) |

<br>

## Boot

pkgs: `linux linux-firmware intel-ucode amd-ucode mkinitcpio systemd`

| | |
|-|-|
| [Bootloader_binary](https://wiki.archlinux.org/index.php/Unified_Extensible_Firmware_Interface) | [`boot/efi/boot/bootx64.efi`](#symlink) |
| [Bootloader config](https://wiki.archlinux.org/index.php/Systemd-boot#Configuration) | [`boot/loader/entries/default.conf`](./boot/loader/entries/default.conf) |

<br>

## Core

pkgs: `base dhcpcd micro htop`

| | |
|-|-|
| [Host Name](https://tools.ietf.org/html/rfc1178) | [`etc/hostname`](./etc/hostname) |
| [Locales](https://wiki.archlinux.org/index.php/Locale#Generating_locales) | [`etc/locale.gen`](./etc/locale.gen) |
| [Locale](https://wiki.archlinux.org/index.php/Locale#Setting_the_system_locale) | [`etc/locale.conf`](./etc/locale.conf) |
| [Timezone](https://wiki.archlinux.org/index.php/System_time#Time_zone) | [`etc/localtime`](#symlink) |
| [Package_manager](https://man.archlinux.org/man/pacman.conf.5) | [`etc/pacman.conf`](./etc/pacman.conf) |
| [DHCP client](https://wiki.archlinux.org/index.php/Dhcpcd) | [`etc/aldos/dhcpcd.service`](#symlink) |
| [Temp to RAM](https://man.archlinux.org/man/systemd.mount.5) | [`etc/aldos/tmp.mount`](./etc/aldos/tmp.mount) |
| [Logs to RAM](https://man.archlinux.org/man/systemd.mount.5) | [`etc/aldos/var-log.mount`](./etc/aldos/var-log.mount) |
| [setup commands](https://wiki.archlinux.org/index.php/Installation_guide) | [`core.setup.sh`](./core.setup.sh) |

<br>

## Console

pkgs: `bash`

| | |
|-|-|
| [Keyboard_Layout](https://man.archlinux.org/man/vconsole.conf.5) | [`etc/vconsole.conf`](./etc/vconsole.conf) |
| [Shell config](https://wiki.archlinux.org/index.php/Bash) | [`etc/bash.bashrc`](./etc/bash.bashrc) |
| [Boot messages](https://wiki.archlinux.org/index.php/Getty#Have_boot_messages_stay_on_tty1) | [`etc/systemd/system/getty@tty1.service.d/noclear.conf`](./etc/systemd/system/getty@tty1.service.d/noclear.conf) |
| [Theme](https://man.archlinux.org/man/setvtrgb.8) | [`etc/setvtrgb.theme`](./etc/setvtrgb.theme) |
| [Theme hook](https://wiki.archlinux.org/index.php/Mkinitcpio#Runtime_hooks) | [`etc/initcpio/hooks/setvtrgb`](./etc/initcpio/hooks/setvtrgb) |
| [Theme install](https://wiki.archlinux.org/index.php/Mkinitcpio#Build_hooks) | [`etc/initcpio/install/setvtrgb`](./etc/initcpio/install/setvtrgb) |
| [Theme initcpio](https://wiki.archlinux.org/index.php/Mkinitcpio#HOOKS) | [`etc/mkinitcpio.conf`](./etc/mkinitcpio.conf) |

<br>

## Audio

pkgs: `pipewire pipewire-alsa pipewire-jack pipewire-pulse`

| | |
|-|-|
| [JACK helper](https://aur.archlinux.org/packages/pipewire-jack-dropin/) | [`etc/ld.so.conf.d/pipewire-jack.conf`](./etc/ld.so.conf.d/pipewire-jack.conf)

<br>

## Desktop

pkgs: `xorg-server xorg-xinit ttf-jetbrains-mono i3-gaps xorg-xrandr xorg-xsetroot dmenu rxvt-unicode`

| | |
|-|-|
| [Xorg config](https://wiki.archlinux.org/index.php/Xorg#Configuration) | [`etc/X11/xorg.conf.d/hardware.conf`](etc/X11/xorg.conf.d/hardware.conf) |
| [X resources](https://wiki.archlinux.org/index.php/X_resources) | [`etc/X11/xinit/xresources`](./etc/X11/xinit/xresources) |
| [Desktop setup](https://wiki.archlinux.org/index.php/Xinit#xinitrc) | [`etc/X11/xinit/xinitrc`](./etc/X11/xinit/xinitrc) |
| [Default Fonts](https://wiki.archlinux.org/index.php/Font_configuration) | [`etc/fonts/local.conf`](./etc/fonts/local.conf) |
| [Window Manager](https://i3wm.org/docs/userguide.html) | [`etc/i3/config`](./etc/i3/config) |
| ["win.exe"](https://man.archlinux.org/man/startx.1) | [`usr/local/bin/xwin`](./usr/local/bin/xwin) |

<br>

## Toolkits

| | |
|-|-|
| [GTK3 Theme](https://wiki.archlinux.org/index.php/GTK#Configuration) | [`etc/gtk-3.0/settings.ini`](./etc/gtk-3.0/settings.ini) |

<br>

## Apps

pkgs: `gjs gtk3 qt5-declarative`

| | |
|-|-|
| [Theme Editor](#nodocs) | [`usr/local/bin/aldos-theme`](./usr/local/bin/aldos-theme)
| [Usage Monitor](https://gjs.guide) | [`usr/local/bin/aldos-dock`](./usr/local/bin/aldos-dock) |
| [dmenu_workaround](#workaround) | [`usr/local/bin/aldos-launcher`](./usr/local/bin/aldos-launcher) |

<br>

## Modules

pkgs: `dkms linux-headers`

| | |
|-|-|
| [workaround](../../proc-topstats) | [`usr/src/proc-topstats-1.0.0/Makefile`](./usr/src/proc-topstats-1.0.0/Makefile) |
| [workaround](../../proc-topstats) | [`usr/src/proc-topstats-1.0.0/dkms.conf`](./usr/src/proc-topstats-1.0.0/dkms.conf) |
| [workaround](../../proc-topstats) | [`usr/src/proc-topstats-1.0.0/proc-topstats.c`](./usr/src/proc-topstats-1.0.0/proc-topstats.c) |
| [workaround](../../proc-topstats) | [`etc/modules-load.d/mods.conf`](./etc/modules-load.d/mods.conf) |

<br>

## User

pkgs: `polkit`

| | |
|-|-|
| [Create_Human](https://man.archlinux.org/man/useradd.8) | [`user.setup.sh`](./user.setup.sh) |
| [Homes in RAM](https://man.archlinux.org/man/systemd.mount.5) | [`etc/aldos/home.mount`](./etc/aldos/home.mount) |
| [Create Home](https://man.archlinux.org/man/tmpfiles.d.5) | [`etc/tmpfiles.d/human-home.conf`](./etc/tmpfiles.d/human-home.conf) |

<br>

## Login

| | |
|-|-|
| [Login Human](https://wiki.archlinux.org/index.php/Getty#Automatic_login_to_virtual_console) | [`etc/systemd/system/getty@tty1.service.d/override.conf`](./etc/systemd/system/getty@tty1.service.d/override.conf) |
| [Start_Desktop](#todo) | [`etc/profile.d/start-desktop.sh`](./etc/profile.d/start-desktop.sh) |

<br>

## Secrets

TODO: current wish: on plug-in automount a disk by label and symlink all its root files/dirs to humans home. and most importantly write any data to the disk right away! so that we could umount on plug-out and remove those symlinks from humans home...
