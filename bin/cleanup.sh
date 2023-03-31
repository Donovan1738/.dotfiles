#!/bin/bash
#removes the .vimrc file from home directory 
rm ~/.vimrc
#removes a line from the .bashrc file 
sed '$d' .bashrc
#remove the trash directory
rm -r .TRASH
