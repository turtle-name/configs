programs I use:

* [`odus`](https://github.com/mekb-turtle/odus) [`do`](https://github.com/mekb-turtle/do) [`1`](https://github.com/mekb-turtle/1) (these are programs I've made)
* bootloader: `limine`<sup>AUR</sup> `efibootmgr` (used to use `grub` instead of `limine`<sup>AUR</sup>)
* `git` `base-devel` (includes `sudo`)
* `mandoc` `man-pages` (used to use `man-db` instead of `mandoc`)
* iwd and dhcpcd (used to use `networkmanager`)
* `neofetch`
* `openssh`
* text editor: `vim` (used to use `nano`)
* if ssh'ing into: terminfo for my terminal emulator
* `gpm`, `gpm-vm`<sup>AUR</sup> if on VM
* `rsync`
* `exa`<sup>arch</sup>
* `bash-completion`

for desktop:

* wm: `dwm`, also `slstatus`, `dmenu`, `slock`, (these aren't from AUR, they're built manually so I can tweak them, see [suckless](https://github.com/mekb-turtle/suckless))
* theming: `yaru-colors-gtk-theme-git`<sup>AUR</sup> (Yaru-Lavender-dark), `deepin-icon-theme`<sup>arch</sup> (bloom-dark)
* fonts: `noto-fonts-cjk`, `ttf-ubuntu-font-family`, `ttf-twemoji`<sup>AUR</sup>, `ttf-fira-code`, `ttf-nerd-fonts-symbols`
* terminal emulator: `kitty`
* xorg: `xorg-server` `xorg-setxkbmap` `xorg-xev` `xorg-xinit` `xorg-xinput` `xorg-xmodmap` `xorg-xprop` `xorg-xset` `xorg-xsetroot` `xorg-xrandr`

post-install for Artix install I do:

* `rm -rfv /etc/bash`, it messes up my environment variables
* edit `/etc/makepkg.conf` and set `MAKEFLAGS="-j4"` where 4 is what `nproc` returns
* add `consolefont` hook to `/etc/mkinitcpio.conf`, and regenerate initramfs `mkinitcpio -P`
* set `Color`, `ILoveCandy`, and `ParallelDownloads = 5` in `/etc/pacman.conf`
* remove azerty in `/home/mekb/.xinitrc` and `/etc/vconsole.conf` if you don't use azerty
