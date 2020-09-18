# Reinstall properly i3 after second login
rm -rf ~/.config/i3/*
ln -s ~/dotfiles/i3/config ~/.config/i3/config
ln -s ~/dotfiles/i3/configus ~/.config/i3/configus
ln -s ~/dotfiles/i3/configfr ~/.config/i3/configfr
ln -s ~/dotfiles/i3/i3status.conf ~/.config/i3/i3status.conf
ln -s ~/dotfiles/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
ln -s ~/dotfiles/i3/scripts ~/.config/i3/scripts
ln -s ~/dotfiles/i3/i3lock ~/.config/i3/i3lock

pkill polybar
