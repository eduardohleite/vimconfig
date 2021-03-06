#!/bin/sh

BREW="/opt/homebrew/bin/brew"

# install neovim
$BREW install --HEAD neovim

# install nodejs
$BREW install node

# install python modules
python3 -m venv env

./env/bin/python3 -m pip install --upgrade pip
./env/bin/python3 -m pip install neovim
./env/bin/python3 -m pip install pynvim --upgrade

# install node modules
npm install -g neovim

# create configuration
mkdir -p $HOME/.config/nvim

# install vimplug
sh -c 'curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# install plugin dependencies
$BREW install ctags
$BREW tap homebrew/cask-fonts
$BREW install --cask font-jetbrains-mono-nerd-font

# copy init.vim
cp init.vim $HOME/.config/nvim

echo "Now run nvim and execute :PlugInstall"
echo "Execute :CocInstall coc-pyright to install Python intellisense"
echo "Execute :VimspectorInstall debugpy for Python debug support"
echo "Set jetbrains mono nerd as the terminal font for full devicon support"
