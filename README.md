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

Install Depedencies
```
sudo pacman -S rofi i3-gaps i3status picom hsetroot rxvt-unicode xsel noto-fonts xsettingsd lxappearance scrot viewnior feh git unzip network-manager-applet psensor
```
```
yay -S greenclip betterlockscreen i3lock-color
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
