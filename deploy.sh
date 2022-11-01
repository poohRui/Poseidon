#!/bin/bash

if [[ -f ~/.vimrc ]]; then
    mv ~/.vimrc ~/.vimrc.bk
fi

rm -rf ~/.vim/{autoload,ftplugin,pack}
mkdir -p ~/.vim/{ftplugin,autoload}
cp -r ftplugin/* ~/.vim/ftplugin
cp -r autoload/* ~/.vim/autoload
cp -r pack ~/.vim
cp vimrc.template ~/.vimrc

cd ~/.vim/pack/syntax/start/YouCompleteMe && python3 install.py  --clangd-completer --force-sudo
