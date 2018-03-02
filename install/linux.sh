if [[ -f /etc/os-release ]]; then
  . /etc/os-release
  OS=$NAME
fi

if [[ "$OS" == "Antergos Linux" ]]; then
  ln -sfvn $HOME/.dotfiles/.yaourtrc ~/.yaourtrc
  source ~/.bashrc

  echo "Installing or updating GIT"
  yaourt -Syu git --noconfirm
  clear

  echo "\nWhat is your name to be displayed at your GIT user.name?\n\nFor Example, mine is \"Almeidinha\"\n"
  read git_config_user_name
  git config --global user.name "$git_config_user_name"
  clear 

  echo "\nWhat is your common used GIT email?\n\n(Beetech one)\n"
  read git_config_user_email
  git config --global user.email $git_config_user_email
  clear

  echo "\nI'm about to set as your default GIT editor as VIM and I highly recommend it.\n\n"
  echo "Can I do that for you? (y/n)\n\n"
  read git_core_editor_to_vim
  if echo "$git_core_editor_to_vim" | grep -iq "^y" ;then
    git config --global core.editor vim
  else
    echo "\nOk, it's on your hands. :) Let's move on"
  fi

else
  apt-get install git
fi