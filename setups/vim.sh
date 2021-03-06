# Install vim
#sudo pacman -S vim

# Install Vundle package manager for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Link vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc

# Install all plugins
vim +PluginInstall +qall

# Install powerline fonts for airline
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install Chewie EPITA C snippets
git clone https://github.com/Chewie/EPITA-snippets.git
cp EPITA-snippets/c_EPITA.snippets ~/.vim/bundle/ultisnips/
rm -rf EPITA-snippets/
