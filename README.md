# i3-setup
## forked from [EndeavourOS](https://endeavouros.com)

# Tutorial for i3-wm settings:
* background handled by [nitrogen](https://wiki.archlinux.org/index.php/nitrogen)
* gtk3 theme handled by [lxappearance-gtk3](https://wiki.lxde.org/de/LXAppearance)
* Filebrowser = [Thunar](https://docs.xfce.org/xfce/thunar/start)
* default Terminal-Emulator = [alacritty](https://github.com/alacritty/alacritty)
* Text-Editor = [vim](https://www.vim.org/)
* Text-Editor = [doom emacs](https://github.com/hlissner/doom-emacs)

# Main shortcuts:
**[mod] key is set to the** ***superkey/winkey***

**[$mod]+c kill focused window** ***exit / terminate***

**[$mod]+F1 open keybindings overview**

* [mod]+enter    **open terminal** ***(alacritty)***
* [mod]+w        **open Browser** ***(firefox)***
* [mod]+n        **open Filebrowser** ***(Thunar)***
* [mod]+d        **app menu** ***(rofi)***
* [mod]+o        **chooe open windows over menu** ***(rofi)***
* [mod]+s        **chooe ssh session** ***(rofi)***
* [mod]+Shift+d  **app menu** ***(dmenu)***
* Print-key      **screenshot** ***(flameshot)***
* [mod]+Shift+m  **mattermost client** ***(matterhorn)***
* [mod]+Shift+n  **file manger** ***(ranger)***
* [mod]+Shift+p  **music player** ***(mocp)***

or check [here](https://github.com/ubikOne/i3-setup/blob/master/.config/i3/keybindings.md)

# For more open cheatsheet

***alt+F1*** **open keybindings overview**

----

# Tutorial to install i3-setup from scratch 
**for later installs, if you have installed another DE on initial install from the ISO**

1. get the dot files
2. copy files to the right directories (.config of your user):
3. copy scripts inside ~/.config/i3/scripts must be executable ! [chmod +x] them please ;)
4. install needed packages

`git clone https://github.com/ubikOne/i3-setup.git`
`cd i3-setup`
`cp -R .config/* ~/.config/`
`sudo cp .wallpapers/dune.jpg /usr/share/endeavouros/backgrounds/`
`mkdir ~/.screensaver`
`cp .wallpapers/dune.jpg ~/.screensaver/`
`chmod -R +x ~/.config/i3/scripts`
`cp .Xresources ~/`
`cp .gtkrc-2.0 ~/`
`cp .moc -R ~/.moc`

# install needed apps and programms for i3wm:

`yay -S --needed --noconfirm - < packages-repository.txt`
`cd ..`

# srceenlock

`cp /usr/share/doc/betterlockscreen/examples/betterlockscreenrc ~/.config`

`betterlockscreen -u ~/.screensaver/dune.jpg`

# [Ly display manager](https://github.com/nullgemm/ly) install
![alt text](https://raw.githubusercontent.com/ubikOne/i3-setup/master/.screenshot/ly_display_manager.png)

`git clone https://github.com/nullgemm/ly.git`

`cd ly`

`make github`

`make`

`sudo make install`

`sudo systemctl enable ly.service`

`sudo systemctl disable getty@tty2.service`

`cd ..`

# moc

![alt text](https://raw.githubusercontent.com/ubikOne/i3-setup/master/.screenshot/moc_1.png)
<!-- ![alt text](https://raw.githubusercontent.com/ubikOne/i3-setup/master/.screenshot/moc_2.png)
![alt text](https://raw.githubusercontent.com/ubikOne/i3-setup/master/.screenshot/moc_3.png) -->

# matterhorn

### It's additional step!

![alt text](https://raw.githubusercontent.com/ubikOne/i3-setup/master/.screenshot/matterhorn.png)

`git clone https://aur.archlinux.org/ncurses5-compat-libs.git`

`cd ncurses5-compat-libs`

`makepkg -si --skippgpcheck --noconfirm`

`yay -S --noconfirm matterhorn-bin`

In `.config/matterhorn/config.ini` change
- user
- pass
- host (without 'https://' e.g. `mattermost.contact.me`)

# bash & vim 

`sh -c "$(curl -fsSL https://gitlab.com/ubikOne/vim-config/raw/master/install)"`

# emacs (DOOM emacs)

`git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d`

`~/.emacs.d/bin/doom -y install`

`cp -R .doom.d/* ~/.doom.d/`

`.emacs.d/bin/doom sync`

# i3 swallow

`pip install i3ipc`

# for non manual installation 

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ubikOne/i3-setup/master/install)"`
