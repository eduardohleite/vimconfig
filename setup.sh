#!/bin/sh

BREW="/opt/homebrew/bin/brew"

# install neovim
$BREW install --HEAD neovim

# install nodejs
$BREW install node

# install python modules
python3 -m pip install neovim
python3 -m pip install pynvim --upgrade

# install node modules
npm install -g neovim

# create configuration
mkdir -p $HOME/.config/nvim

# install vimplug
sh -c 'curl -fLo $HOME/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# install plugin dependencies
$BREW install ctags

# copy init.vim
cp init.vim $HOME/.config/nvim

echo "Now run nvim and execute :PlugInstall"
echo "Execute CocInstall coc-pyright to install Python intellisense"
