#!/bin/sh

apt-get install vim
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
mkdir  ~/.vim/bundle/dracula-theme  && cd ~/.vim/bundle/dracula-theme
git clone https://github.com/dracula/vim.git .
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
cd ~/.vim
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
cd ~/.vim/bundle
git clone https://github.com/terryma/vim-multiple-cursors.git
git clone https://github.com/bling/vim-bufferline ~/.vim/bundle/vim-bufferline
cd ~
curl -O https://raw.githubusercontent.com/owlypixel/Dotfiles/master/vim/.vimrc
sed -i 's/\r//g' .vimrc
