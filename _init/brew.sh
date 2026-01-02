#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
# brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
# brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install a modern version of Bash.
# brew install bash
# brew install bash-completion2

# Switch to using brew-installed bash as default shell
# if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#   echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#   chsh -s "${BREW_PREFIX}/bin/bash";
# fi;

# Install `wget` with IRI support.
brew install wget

# Install GnuPG to enable PGP-signing commits.
# brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
# brew install screen
# brew install php
# brew install gmp

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.
# brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install git-open
# brew install gs
# brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install node
brew install interactive-rebase-tool
brew install diff-so-fancy
brew install bat
brew install htop
brew install prettyping
brew install zsh-syntax-highlighting
brew install python
# brew install vbindiff
# brew install zopfli
brew install go

# Brew casks
# brew cask
# brew tap homebrew/cask-fonts
# brew install --cask 1password
# brew install --cask firefox-nightly
# brew install --cask google-chrome-canary
# brew install --cask monitorcontrol
# brew install --cask vagrant
# brew install --cask altair-graphql-client
# brew install --cask font-cascadia-code
# brew install --cask google-cloud-sdk
brew install --cask phoenix
# brew install --cask virtualbox
# brew install --cask android-platform-tools
# brew install --cask font-cascadia-code-pl
# brew install --cask insomnia
brew install --cask rowanj-gitx
brew install --cask visual-studio-code
brew install --cask boop
# brew install --cask font-cascadia-mono
# brew install --cask intellij-idea-ce
# brew install --cask safari-technology-preview
brew install --cask whatsapp
brew install --cask bruno
# brew install --cask font-cascadia-mono-pl
# brew install --cask iterm2
brew install --cask sequel-ace
# brew install --cask zoom
# brew install --cask chromedriver
# brew install --cask font-fira-code
# brew install --cask karabiner-elements
# brew install --cask sketch
# brew install --cask cyberduck
# brew install --cask font-monaspace
# brew install --cask keepassxc
brew install --cask telegram
# brew install --cask figma
brew install --cask font-victor-mono-nerd-font
brew install --cask maccy
brew install --cask the-unarchiver
brew install --cask stow

# Remove outdated versions from the cellar.
brew cleanup
