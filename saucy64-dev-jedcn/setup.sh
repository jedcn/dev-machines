#!/bin/bash -ex

# This is intended to be run as follows:
#
# curl https://raw.github.com/jedcn/dev-machines/master/saucy64-dev-jedcn/setup.sh | /bin/bash

if [ -d $HOME/.homesick/repos/homeshick ]
then
  echo ""
  echo "Homesick already installed.."
else
  echo ""
  echo "Installing homeshick.."
  git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
  source "$HOME/.homesick/repos/homeshick/homeshick.sh"

  echo ""
  echo "Adding Castles.."
  homeshick clone --batch https://github.com/robbyrussell/oh-my-zsh
  homeshick clone --batch https://github.com/jedcn/dot-org-files
  homeshick link --force

  cd; ln -s .homesick/repos/oh-my-zsh .oh-my-zsh
fi
