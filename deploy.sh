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

#vim -c "execute 'silent !cp vimrc.template ~/.vimrc'" -c \
#    "execute 'source ~/.vimrc'" -c "LeaderfInstallCExtension" -c "q" -c "q"
#cd ~/.vim/pack/syntax/opt/YouCompleteMe
#git submodule update --init --recursive && python3 install.py  --clangd-completer --force-sudo
