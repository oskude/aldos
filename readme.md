# `ALDOS`

**Adventures in Linux Dream Operating Setup, for [fun](master/readme.md) and [passion](./desktop/readme.md).**

```
┌──────────────┐                    ┏━━━━━━━━━━━━━━━━━┓
│ Template Dir │  ┌──["dump"]──────▶┃ System Disk     ┃
├╴╴╴╴╴╴╴╴╴╴╴╴╴╴┤  │                 ┡╸╸╸╸╸╸╸╸╸╸╸╸╸╸╸╸╸┩
│ etc/fstab    │──┴────────────────▶│ System Mounts   │
│ theme.json   │─────[§name§]──┐    ├╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴┤
│ */**         │───────────────┴───▶│ System Files    │
│ readme.md    │─────[pkgs:`.*`]───▶│ System Packages │
│ *.setup.sh   │───────────────────▶│ System Commands │
└──────────────┘                    └─────────────────┘
```

```
setup <template dir> <system file|disk|dir>
```

<br>

# Template Dir

a template directory is a plain "linux directory" (with file modes and symlinks) that contain all the standard system files i need to setup a system to my liking. plus couple extra files:

## `etc/fstab`

so [fstab](https://man.archlinux.org/man/fstab.5) contains all the infos i need to setup a partition, except one, the size. now, i've been using linux for over a decade, and have _never_ seen/heard the fifth field ([fs_freq](https://man.archlinux.org/man/fstab.5)/[dump](https://man.archlinux.org/man/dump.8.en)) used, so _joink_...

`setup` uses following fields from `etc/fstab`:

0. order of lines is order of partitions
1. only lines with `PARTLABEL` are used
2. mount here
3. format with `mkfs.<fs_vfstype>`
4. mount options
5. partition size, in gigabytes, 0 is rest.
6. ignored

## `theme.json`

technically just a simple name-value pair object that can be referenced as `§name§` in any system file, and `setup` will replace all those with the value

## `*/**`

any non-hidden sub dir is handled by `setup` as a system file.

there's one big caveat though, cause vfat (required by UEFI) does not support symlinks, there `setup` copies the symlinks target content, instead of the symlink as is.

## `readme.md`

just to get the cheapest documentation (group files to "features") for us humans, `setup` reads pkgs from the `readme.md` file, and ignores all the rest.

## `*.setup.sh`

cause not everything can be done with (simple) files, any `*.setup.sh` bash scripts are run (sourced) at the end of all other tasks. As they are sourced, these script have all the variables and functions of [`setup`](./setup) available.

<br>

# System File

if the given `<system file>` path is a normal file, `setup` will use it as raw disk image, and attach it as loop device. and uses that as `<system disk>`

<br>

# System Disk

if the given `<system disk>` path is a block device, `setup` will check/do the in `etc/fstab` defined partitions and mount them. and uses that as `<system dir>`

<br>

# System Dir

if the given `<system dir>` path is a directory, `setup` will install all the packages found in `readme.md`, `theme.json`ify all the `*/**` files and copy them over, and lastly run any `*.setup.sh` scripts.
