# Install zsh and curl
sudo pacman -S zsh curl

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Link zshrc
rm ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

# Link aliases
rm ~/.oh-my-zsh/custom/aliases.zsh
ln -s ~/dotfiles/zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh

# Create plugins folder
mkdir ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins
mkdir ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes

# Install fish-like autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install 256-color plugin
( cd ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins && git clone https://github.com/chrissicool/zsh-256color )

# Install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

# Change shell to zsh
chsh -s $(which zsh)
