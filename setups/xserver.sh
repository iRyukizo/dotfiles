# Link xinitrc
rm ~/.xinitrc
ln -s ~/dotfiles/xinitrc ~/.xinitrc

# Link xprofile
ln -s ~/dotfiles/xprofile ~/.xprofile

# Link Xresources
rm ~/.Xresources
ln -s ~/dotfiles/Xresources ~/.Xresources

# Install Xresources-themes
git clone git@github.com:logico-dev/Xresources-themes.git ~/.Xresources-themes

# Link Xclients
ln -s ~/dotfiles/Xclients ~/.Xclients

# Merge .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
