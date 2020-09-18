# Install i3, i3lock-color, i3blocks
sudo pacman -S i3-gaps i3lock-color i3blocks

# Install URxvt
sudo pacman -S rxvt-unicode

# Install pavucontrol, playerctl
sudo pacman -S pavucontrol playerctl

# Link i3 config files
rm -rf ~/.config/i3/*
ln -s ~/dotfiles/i3/config ~/.config/i3/config
ln -s ~/dotfiles/i3/configus ~/.config/i3/configus
ln -s ~/dotfiles/i3/configfr ~/.config/i3/configfr
ln -s ~/dotfiles/i3/i3status.conf ~/.config/i3/i3status.conf
ln -s ~/dotfiles/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
ln -s ~/dotfiles/i3/scripts ~/.config/i3/scripts
ln -s ~/dotfiles/i3/i3lock ~/.config/i3/i3lock

#Install screenshot supports
sudo pacman -S xclip scrot

xrandr --output eDP1 --primary
