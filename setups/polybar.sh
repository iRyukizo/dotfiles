#Install dependencies
sudo pacman -S cmake pkg-config libxcb xcb-proto

#Download polybar
git clone --recursive https://github.com/polybar/polybar
cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
cd ../..
rm -rf polybar

#Install media control
sudo pacman -S mpc dbus

#Install hddtemp
sudo pacman -S hddtemp

#Link polybar
ln -s ~/dotfiles/polybar/config ~/.config/polybar/config
ln -s ~/dotfiles/polybar/launch.sh ~/.config/polybar/launch.sh
