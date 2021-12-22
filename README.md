# birulangit
My Custom i3wm config with other config

Depedencies
- Greenclip
- i3-volume (bin)
- rofi-power-menu (bin)
- dunst 1.6.1 (compile)
- rofi
- i3-gaps
- betterlockscreen
- i3lock-color
- i3status
- picom
- hsetroot
- rxvt-unicode
- xsel
- noto-fonts
- xsettingsd
- lxappearance
- scrot
- viewnior
- git
- unzip
- psensor
- nm-applet
- pyhton-gobject
- polkit-gnome
- ttf-icomoon-feather

Install Depedencies
```
sudo pacman -S polkit-gnome rofi i3-gaps i3status picom hsetroot rxvt-unicode xsel noto-fonts xsettingsd lxappearance scrot viewnior feh git unzip network-manager-applet psensor python-gobject
```
```
yay -S greenclip betterlockscreen i3lock-color ttf-icomoon-feather
```

Install Configuration
```
git clone https://github.com/falzikla/birulangit.git

cd birulangit
cp -r .fonts/ ~/
cp -r .urxvt/ ~/
cp .bashrc ~/
cp .dir_colors ~/
cp .fehbg ~/
cp .wallpaper.jpg ~/
cp .xinitrc ~/
cp .Xresources ~/
cp .xsettingsd ~/

cd bin/
unzip dunst-1.6.1.zip

cd dunst-1.6.1/
make
sudo make install

cd ../
sudo cp i3-volume /bin
sudo cp rofi-power-menu /bin

cd ../
cd config/
cp -r dunst/ ~/.config/
cp -r i3/ ~/.config/
cp -r i3status/ ~/.config/
cp -r rofi/ ~/.config/
cp betterlockscreenrc ~/.config/
cp compton.conf ~/.config/
cp greenclip.toml ~/.config/
cd ../../
```

Betterlockscreen
```
betterlockscreen -u ~/.wallpaper.jpg
```

Greenclip
```
systemctl --user enable greenclip.service
```

Keybinds
- Super + Return/Enter, Launch i3 sensible terminal
- Super + D, Launch rofi menu program
- Super + Shift + Q, Launch rofi power menu
- Super + S, Launch Grennclip clipboard
- Super + Shift + S, Clear Greenclip clipboard
- Print, Screenshot fullscreen
- Super + Shift + L, Lock screen
- Super + Period ( . ), Increase 5% volume
- Super + Comma ( , ), Decrease 5% volume
- Super + M, Mute Sound
- Super + C or Alt + F4, Close the program
- Super + Up, Move focus to up
- Super + Down, Move focus to down
- Super + Left, Move focus to left
- Super + Right, Move focus to right
- Super + Shift + Up, Move focused to up
- Super + Shift + Down, Move focused to down
- Super + Shift + Left, Move focused to left
- Super + Shift + Right, Move focused to right
- Super + H, Change orientation split to horizontal
- Super + V, Change orientation split to Vertical
- Super + F, Fullscreen the focus program
- Super + P, Change container to stacking
- Super + O, Change container to tabbed
- Super + I, Change container to split
- Super + Space, Floating
- Alt + Ctrl + Left, Change to workspace left
- Alt + Ctrl + Right, Change to workspace right
- Super + 1 ... 0, Change to workspace 1 ... 10
- Super + Shift + 1 ... 0, Move program to workspace 1 ... 10
- Super + R, Resize program in floating or tiling window
- Super + E, Restart i3
- Super + W, Reload i3 configuration
- Super + Q, Exit i3 session
- Super + K, Move to scratchpath (minimize the program)
- Super + L, Open scratchpath (show minimize program)
- Super + T, Border with name program
- Super + Shift + T, No border just name program
- Super + Y, border (Default)
- Super + Shift Y, Border None
- Super + N, Open internet connection
