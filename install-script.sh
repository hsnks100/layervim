#!/bin/bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
cd ~/
git clone https://github.com/hsnks100/layervim.git

echo 'set rtp+=~/layervim' >> ~/.vimrc
echo 'source ~/layervim/config.vim' >> ~/.vimrc

mkdir -p /.config/nvim/
echo 'set rtp+=~/layervim' >> ~/.config/nvim/init.vim
echo 'source ~/layervim/config.vim' >> ~/.config/nvim/init.vim
