#!/bin/bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd ~/
git clone https://github.com/hsnks100/layervim.git

echo 'set rtp+=~/layervim' >> ~/.vimrc
echo 'source ~/layervim/config.vim' >> ~/.vimrc
