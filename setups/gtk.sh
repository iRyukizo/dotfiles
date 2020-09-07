# Link gtkrc-2.0
rm ~/.gtkrc-2.0
ln -s ~/dotfiles/gtkrc-2.0 ~/.gtkrc-2.0

# Link gtk-3.0
rm ~/.config/gtk-3.0/settings.ini
ln -s ~/dotfiles/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini

# Install Papirus icon theme
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.local/share/icons" sh

# Install dependencies
sudo pacman -S autoconf automake pkg-config gtk2 gtk3 gnome-themes-extra

# Install arc gtk theme
sudo pacman -S arc-gtk-theme

# Install lxappearance
sudo pacman -S lxappearance

# Start lxappearance and setup manually
lxappearance
