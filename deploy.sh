#!/bin/bash

if [[ -f ~/.vimrc ]]; then
    mv ~/.vimrc ~/.vimrc.bk
fi

rm -r ~/.vim/{autoload,ftplugin}
mkdir -p ~/.vim/{ftplugin,autoload}
cp -r ftplugin/* ~/.vim/ftplugin
cp -r autoload/* ~/.vim/autoload

if [[ ! -f ~/.vim/autoload/plug.vim ]]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim -c "execute 'silent !cp vimrc.template ~/.vimrc'" -c \
    "execute 'source ~/.vimrc'" -c "PlugInstall" -c "q" -c "q"
#cd ~/.vim/plugged/YouCompleteMe && python3 install.py  --clangd-completer --force-sudo
