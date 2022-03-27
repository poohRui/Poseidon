#!/bin/bash

if [[ -f ~/.vimrc ]]; then
    mv ~/.vimrc ~/.vimrc.bk
fi
cp vimrc.template ~/.vimrc

mkdir -p ~/.vim/ftplugin
mkdir -p ~/.vim/autoload
cp -r ftplugin/* ~/.vim/ftplugin
cp -r autoload/* ~/.vim/autoload

if [[ ! -f ~/.vim/autoload/plug.vim ]]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim -c "PlugInstall" -c "q" -c "q"
