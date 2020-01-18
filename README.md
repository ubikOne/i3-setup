# i3-EndeavourOS
## joekamprad: setup for i3 under [EndeavourOS](https://endeavouros.com)

* get my dot files
* copy files to the right directories (.config of your user):
* scripts inside ~/.config/i3/scripts must be executable ! [chmod +x] them please ;)

`git clone https://github.com/endeavouros-team/i3-EndeavourOS.git`

`cd i3-EndeavourOS`

`cp -R .config/* ~/.config/`

`chmod -R +x ~/.config/i3/scripts` (make scripts executable)

`cp .Xresources ~/` (needed colorcheme for menu)


# install needed apps and programms for i3wm:

`sudo pacman -S --needed - < packages-repository.txt`

# Tutorial for i3-wm settings:
* background handled by [nitrogen](https://wiki.archlinux.org/index.php/nitrogen)
* gtk3 theme handled by [lxappearance-gtk3](https://wiki.lxde.org/de/LXAppearance)
* Filebrowser = [PCManFM](https://wiki.lxde.org/de/PCManFM)
* default Terminal emulator = [Terminator](https://terminator-gtk3.readthedocs.io/en/latest/)

# Main shortcuts:
mod key is set to the winkey (or should i call it linkey?)
![alt text](https://raw.githubusercontent.com/endeavouros-team/i3-EndeavourOS/master/linkey.png "linkey")
* [mod]+**enter** = open terminal (terminator)
* [mod]+**w** =  open Browser (firefox)
* [mod]+**n** =  open Filebrowser (PCmanfm)
* **F9** =  app menu (rofi)
* **F4** =  close focused app [kill]
* **Print**-key = screenshot

# default i3-wm keycodes: 
https://i3wm.org/docs/userguide.html#_default_keybindings

# Tiling mode is tabbed: 
so each new window will open fullscreen as a tab, you can change between window-tabs with mouse or shortcut:
* [mod]+**Left** focus left (left arrow key)
* [mod]+**Right** focus right (right arrow key)

# i3blocks:
* pulseaudio (mousewheel volume level, rightclick open pulseaudio control)
* weather (openweather you need to get city code and apikey first [adding it to ~/.config/i3/scripts/openweather.sh])
get your api key here: https://openweathermap.org/appid and City code: https://openweathermap.org/find?q= (search your city     and take the city code from the url in your browser [7 numbers at the end of the url])
* tray-icons (showing network-manager and update-icon)
* logout button (poweroff, logout, suspending, hibernate e.t.c.)
![alt text](https://raw.githubusercontent.com/endeavouros-team/i3-EndeavourOS/master/bar.png "i3blocks")

# Logout Menu:
![alt text](https://raw.githubusercontent.com/endeavouros-team/i3-EndeavourOS/master/logoutmenu.png "logout-menu")

# F9 application menu:
![alt text](https://raw.githubusercontent.com/endeavouros-team/i3-EndeavourOS/master/menu.png "application-menu")

![alt text](https://raw.githubusercontent.com/endeavouros-team/i3-EndeavourOS/master/screenshot.png "i3-running")

login to i3... 
