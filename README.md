=== What this is ===

This adds a systemd service to poweroff the discrete GPU on boot, and reenable it on poweroff/reboot (as the system will otherwise hang).

You will need to have `debugfs` enabled in the kernel. If you are running the vanilla linux kernel, it is enabled by default.

=== Installation ===

This can be installed from the [AUR](https://aur.archlinux.org/packages/systemd-vgaswitcheroo-units/).

You can also do a manual install by cloning this repo:

  git clone https://github.com/0x414A/systemd-vgaswitcheroo-units.git
  cd systemd-vgaswitcheroo-units
  sudo make install

=== Credits ===

- Original packaged was based on [vgaswitcheroo_systemd](https://github.com/fredoche/vgaswitcheroo_systemd) 
- Old AUR package [here](http://pkgbuild.com/git/aur-mirror.git/tree/systemd-vgaswitcheroo-units)
