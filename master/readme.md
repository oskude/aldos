# [`ALDOS`](../readme.md) Master

Minimal system to run [`setup`](../setup) and install [`desktop/`](../desktop/readme.md):

```
# /aldos/setup /aldos/desktop/ /dev/somedisk
```

<br>

# Boot

pkgs: `linux linux-firmware intel-ucode amd-ucode systemd mkinitcpio`

| | |
|-|-|
| [Bootloader_binary](https://wiki.archlinux.org/index.php/Unified_Extensible_Firmware_Interface) | [`boot/efi/boot/bootx64.efi`](#symlink)
| [Bootloader config](https://wiki.archlinux.org/index.php/Systemd-boot#Configuration) | [`boot/loader/entries/default.conf`](./boot/loader/entries/default.conf) |

<br>

# Core

pkgs: `base dhcpcd nano`

| | |
|-|-|
| [System Disk](https://man.archlinux.org/man/fstab.5) | [`etc/fstab`](./etc/fstab)
| [DHCP Client](https://wiki.archlinux.org/index.php/Dhcpcd) | [`etc/systemd/system/multi-user.target.wants/dhcpcd.service`](#symlink) |
| [Package_Mirror](https://archlinux.org/mirrorlist/) | [`etc/pacman.d/mirrorlist`](./etc/pacman.d/mirrorlist)
| [Login root](https://wiki.archlinux.org/index.php/Getty#Automatic_login_to_virtual_console) | [`etc/systemd/system/getty@tty1.service.d/override.conf`](./etc/systemd/system/getty@tty1.service.d/override.conf) |

<br>

# ALDOS

pkgs: `git parted gptfdisk e2fsprogs dosfstools arch-install-scripts`

| | |
|-|-|
| [Update /aldos/](https://git-scm.com/doc) | [`git-repo.setup.sh`](./git-repo.setup.sh) |
