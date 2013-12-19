#!/bin/bash -ex

# This is intended to be run as follows:
#
# curl https://raw.github.com/jedcn/dev-machines/master/saucy64-dev-jedcn/setup.sh | /bin/bash

if [ -d $HOME/.homesick/repos/homeshick ]
then
  echo ""
  echo "Homesick already installed.."
  echo ""
else
  echo ""
  echo "Installing homeshick.."
  echo ""
  git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
  source "$HOME/.homesick/repos/homeshick/homeshick.sh"

  echo ""
  echo "Adding Castles.."
  echo ""
  homeshick clone https://github.com/robbyrussell/oh-my-zsh
  ln -s $HOME/.homesick/repos/oh-my-zsh $HOME/.oh-my-zsh

  homeshick clone --batch https://github.com/jedcn/dot-org-files
  homeshick link --force
fi

#
# Change shell to zsh if zsh is present.
zsh=$(which zsh)
if [ -x "$zsh" ] ; then
  echo ""
  echo "Changing Shell to ${zsh}.. may need password"
  echo ""
  sudo chsh --shell $zsh `whoami`
  echo ""
  echo "Logout and log back in to start using new shell"
  echo ""
fi
