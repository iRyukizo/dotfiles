# Install rofi and compton
sudo pacman -S rofi compton

# Install rofi themes
git clone https://github.com/davatorium/rofi-themes.git
cd rofi-themes
./install.sh
cd ..
rm -rf rofi-themes
mkdir ~/.config/rofi/
ln -s ~/dotfiles/rofi/config.rasi ~/.config/rofi/config.rasi
ln -s ~/dotfiles/rofi/custom_nord.rasi ~/.local/share/rofi/themes/

# Install calculate
sudo pacman -S libqalculate libtool
git clone https://github.com/svenstaro/rofi-calc.git
cd rofi-calc
autoreconf -i
mkdir build
cd build
../configure
make
sudo make install
cd ../..
rm -rf rofi-calc
