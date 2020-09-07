
bash setups/fonts.sh
bash setups/xserver.sh

rm ~/.profile
ln -s ~/dotfiles/profile ~/.profile

bash setups/rofi.sh
bash setups/i3.sh
bash setups/polybar.sh

bash setups/zsh.sh
bash setups/vim.sh

cp -r ~/dotfiles/Wallpapers ~/Pictures/
ln -s ~/dotfiles/scripts ~/.scripts

bash setups/gtk.sh
bash setups/ranger.sh
