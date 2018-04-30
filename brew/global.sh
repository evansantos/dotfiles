# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# remove outdated versions from the cellar
brew cleanup

# browsers
brew cask install firefox 2> /dev/null
brew cask install google-chrome 2> /dev/null

# dev-app
brew install nvm 2> /dev/null
brew cask install iterm2 2> /dev/null
brew cask install alfred 2> /dev/null
brew install zsh 2> /dev/null
brew install fd 2> /dev/null

# apps
brew cask install spotify 2> /dev/null
brew cask install stremio 2> /dev/null

