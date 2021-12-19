#!/bin/sh
echo "Downloading dein.vim installer..."
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
echo "Run install script"
sh ./installer.sh $HOME/.config/nvim/dein
rm ./installer.sh
echo "All Done !"
