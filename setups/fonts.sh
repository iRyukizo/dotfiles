# Install San Francisco Font
git clone https://github.com/AppleDesignResources/SanFranciscoFont.git
cp SanFrancisco/* ~/.local/share/fonts/
rm -rf SanFranciscoFont

#Install San Francisco Mono Nerd Font
wget https://github.com/artofrawr/powerline-fonts/raw/master/fonts/SFMono/SF%20Mono%20Regular%20Nerd%20Font%20Complete.otf

#Patch San Francisco Font
sudo pacman -S fontforge
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
python3 font-patcher -c ~/.local/share/fonts/SanFranciscoDisplay-Regular.otf
mv San\ Francisco\ Display\ Regular\ Nerd\ Font\ Complete.otf ~/.local/share/fonts

./install.sh Meslo
./install.sh RobotoMono
./install.sh Ubuntu
./install.sh DroidSansMono
./install.sh DejaVuSansMono

# install siji font
git clone https://github.com/stark/siji && cd siji
./install.sh -d ~/.local/share/fonts

# move fonts to font directory
mv *.{otf,ttf} ~/.local/share/fonts/

# rebuild font cache
fc-cache -f -v
