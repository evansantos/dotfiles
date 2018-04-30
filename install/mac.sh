# GIT
 echo "\nWhat is your name to be displayed at your GIT user.name?\n\nFor Example, mine is \"Almeidinha\"\n"
 read git_config_user_name
 git config --global user.name "$git_config_user_name"
 
 echo "\nWhat is your common used GIT email?\n\n(Beetech one)\n"
 read git_config_user_email
 git config --global user.email $git_config_user_email
 
 echo "\nI'm about to set as your default GIT editor as VIM and I highly recommend it.\n\n"
 echo "Can I do that for you? (y/n)\n\n"
 read git_core_editor_to_vim
 if echo "$git_core_editor_to_vim" | grep -iq "^y" ;then
   git config --global core.editor vim
 else
   echo "\nOk, it's on your hands. :) Let's move on"
 fi

cp .gitconfig ~/.gitconfig
cp .gitignore ~/.gitignore
cp .gitmessage ~/.gitmessage

# SSH
echo "Generating SSH Key"
ssh-keygen -t rsa -b 4096 -C $git_config_user_email
ssh-add ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
read -p "Key has been generated.\nPaste it on SSH Keys on BitBucket, GitLab or Github.\n\nThen push any button to continue..."

# GPG
brew install gpg
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG | grep rsa
echo "Copy keyID from sec and paste here"
read gpg_keyid
gpg --armor --export $gpg_keyid | pbcopy
read -p "GPG Key has been generated.\nPaste it on GPG Keys on BitBucket, GitLab or Github.\n\nThen push any button to continue..."

# Homebrew
sh brew/global.sh

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh

# Node
echo export NVM_DIR=$(brew --prefix nvm) >> ~/.zshrc

# VIM
cp .vimrc ~/.vimrc
echo "\nGetting latest python for supporting operations in Neovim"
brew install python
echo "\nInstalling Neovim"
brew install neovim
mkdir ~/.config
mkdir ~/.config/nvim
cp ./neovim/init.vim ~/.config/nvim/init.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "\nWe need to perform the VIM dependencies installation. The screen will open and some errors will show up. Just ignore it following the instructions and the installations will run properly."
echo "\n\nPress ENTER to continue to the installation"
read press_anything
nvim -c "PlugInstall" -c "q" -c "q"
echo "\n\nWe've just installed vim plugins\n\nPress ENTER to continue to the installation"
read press_anything

clear

echo "Installation done :)"
