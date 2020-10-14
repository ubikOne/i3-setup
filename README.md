# i3-setup

## forked from [EndeavourOS](https://endeavouros.com)

## Tutorial for i3-wm settings

* background handled by [nitrogen](https://wiki.archlinux.org/index.php/nitrogen)
* gtk3 theme handled by [lxappearance-gtk3](https://wiki.lxde.org/de/LXAppearance)
* Filebrowser = [Thunar](https://docs.xfce.org/xfce/thunar/start)
* default Terminal-Emulator = [alacritty](https://github.com/alacritty/alacritty)
* Text-Editor = [vim](https://www.vim.org/)
* Text-Editor = [doom emacs](https://github.com/hlissner/doom-emacs)

## Main shortcuts

**super+c kill focused window** ***exit / terminate***

### alt+F1 open keybindings overview

* super+enter      **open terminal** ***(alacritty)***
* super+w          **open Browser** ***(firefox)***
* super+n          **open Filebrowser** ***(Thunar)***
* super+space      **app menu** ***(rofi)***
* super+ctrl+stace **chooe open windows over menu** ***(rofi)***
* super+alt+space  **chooe ssh session** ***(rofi)***
* super+d          **app menu** ***(dmenu)***
* Print-key        **screenshot** ***(flameshot)***
* super+Shift+m    **mattermost client** ***(matterhorn)***
* super+Shift+n    **file manger** ***(ranger)***
* super+Shift+p    **music player** ***(mocp)***

or check [here](https://github.com/ubikOne/i3-setup/blob/master/.config/i3/keybindings.md)

## For more open cheatsheet

***alt+F1*** **open keybindings overview**

----

```bash
git clone https://github.com/ubikOne/i3-setup.git
cd i3-setup
cp -R .config/* ~/.config/
sudo cp .wallpapers/dune.jpg /usr/share/endeavouros/backgrounds/
mkdir ~/.screensaver
cp .wallpapers/dune.jpg ~/.screensaver/
chmod -R +x ~/.config/i3/scripts
cp .Xresources ~/
cp .gtkrc-2.0 ~/
cp .moc -R ~/.moc
```

### install needed apps and programms for i3wm

```bash
yay -S --needed --noconfirm - < packages-repository.txt

```

### srceenlock

```bash
cp /usr/share/doc/betterlockscreen/examples/betterlockscreenrc ~/.config
```

### alfter login type in terminal

```bash
betterlockscreen -u ~/.screensaver/dune.jpg
```

### [Ly display manager](https://github.com/nullgemm/ly)

```bash
git clone https://github.com/nullgemm/ly.git
cd ly
make github
make
sudo make install
sudo systemctl enable ly.service
sudo systemctl disable getty@tty2.service
cd ..
```

## matterhorn

```bash
git clone https://aur.archlinux.org/ncurses5-compat-libs.git
cd ncurses5-compat-libs
makepkg -si --skippgpcheck --noconfirm
yay -S --noconfirm matterhorn-bin
```

**In `.config/matterhorn/config.ini` change**

* user
* pass
* host (without 'https://' e.g. `mattermost.contact.me`)

### bash & vim

```bash
sh -c "$(curl -fsSL https://gitlab.com/ubikOne/vim-config/raw/master/install)"
```

### emacs (DOOM emacs)

```bash
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom -y install
cp -R .doom.d/* ~/.doom.d/
.emacs.d/bin/doom sync
```

### i3 swallow

```bash
pip install i3ipc
```

## for "automatic" installation

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ubikOne/i3-setup/master/install)"
```
