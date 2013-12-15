#!/bin/bash -ex

echo "Installing homeshick.."
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

echo "Adding Castles.."
homeshick clone --batch https://github.com/robbyrussell/oh-my-zsh
homeshick clone https://github.com/jedcn/dot-org-files
cd; ln -s .homesick/repos/oh-my-zsh .oh-my-zsh
