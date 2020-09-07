#Install dependencies
sudo pacman -S cmake pkg-config libxcb xcb-proto

#Download polybar
git clone --recursive https://github.com/polybar/polybar polybarinstall
cd polybarinstall
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
cd ../..
rm -rf polybarinstall

#Install media control
sudo pacman -S mpc dbus

#Install hddtemp
sudo pacman -S hddtemp

#Link polybar
mkdir ~/.config/polybar/
ln -s ~/dotfiles/polybar/config ~/.config/polybar/config
ln -s ~/dotfiles/polybar/launch.sh ~/.config/polybar/launch.sh
