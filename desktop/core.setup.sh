ShowRun arch-chroot "$SYSdir" mkinitcpio -p linux
ShowRun arch-chroot "$SYSdir" locale-gen
ShowRun arch-chroot "$SYSdir" passwd

# TODO: below just keeps cleaning build area like forever...
#ShowRun arch-chroot "$SYSdir" dkms install proc-topstats/1.0.0
# so i'll just do this...
ShowRun pacstrap -i -c -M -C "$ARGtemplate"/etc/pacman.conf "$SYSdir" linux
