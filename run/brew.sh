#!/usr/bin/env bash
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# - - ] sudoFiles/run/brew.sh
# - - ] updated: 2018.07.23
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

declare -a taps=(
                 "bramstein/webfonttools"
                 "homebrew/cask"
                 "homebrew/cask-fonts"
                 "homebrew/cask-versions"
                 "homebrew/core"
                 "homebrew/services"
                 "homebrew/x11"
                 "jeffreywildman/virt-manager"
                 "phinze/cask"
                 )
for i in "${taps[@]}"
do
    brew tap "$i" >> ~/.brew_install_log.txt 2>&1
done
brew install bash >> ~/.brew_install_log.txt 2>&1
brew install bash-completion2 >> ~/.brew_install_log.txt 2>&1
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi
declare -a apps=(
                 "bash"
                 "bash-completion2"
                 "git"
                 "python"
                 "python3"
                 "ruby"
                 "go"
                 "autoconf"
                 "autogen"
                 "automake"
                 "brew-cask-completion"
                 "cabextract"
                 "cask"
                 "check"
                 "colordiff"
                 "coreutils"
                 "dash"
                 "dbus"
                 "docker-completion"
                 "findutils"
                 "fontconfig"
                 "freetype"
                 "gem-completion"
                 "geoip"
                 "gettext"
                 "git-extras"
                 "glib"
                 "glib-networking"
                 "gnu-sed"
                 "gobject-introspection"
                 "graphite2"
                 "graphviz"
                 "highlight"
                 "hub"
                 "icu4c"
                 "intltool"
                 "ipython"
                 "kubernetes-cli"
                 "launchctl-completion"
                 "libsoup"
                 "libtool"
                 "libvirt"
                 "libvirt-glib"
                 "libvterm"
                 "libxml2"
                 "libyaml"
                 "moreutils"
                 "msgpack"
                 "mtr"
                 "ncurses"
                 "neovim"
                 "nettle"
                 "nmap"
                 "npth"
                 "openconnect"
                 "openssl"
                 "pango"
                 "pcre"
                 "perl"
                 "pkg-config"
                 "pyenv"
                 "pyenv-virtualenv"
                 "pyenv-virtualenvwrapper"
                 "qemu"
                 "readline"
                 "sqlite"
                 "tig"
                 "tmux"
                 "unrar"
                 "usbredir"
                 "utf8proc"
                 "vagrant-completion"
                 "vala"
                 "vim"
                 "virt-manager"
                 "virt-viewer"
                 "vte3"
                 "webp"
                 "wget"
                 "wireshark"
                 "wp-cli-completion"
                 "xz"
                 "youtube-dl"
                 "zeromq"
                 )
for i in "${apps[@]}"
do
    brew install "$i" >> ~/.brew_install_log.txt 2>&1
done
declare -a guiapps=(
                    "atom"
                    "dropbox"
                    "firefox"
                    "google-chrome"
                    "sublime-text3"
                    "virtualbox"
                    "vlc"
                    "alfred"
                    "dash"
                    "flux"
                    "mou"
                    "popclip"
                    "1password"
                    "omnigraffle"
                    "marked"
                    "atext"
                    "wireshark"
                    "mindnode-pro"
                    "byword"
                    "discord"
                    "docker"
                    "feedly"
                    "gimp"
                    "iterm2"
                    "omnifocus"
                    "postman"
                    "rescuetime"
                    "skitch"
                    "slack"
                    "visual-studio-code"
                    "google-earth-pro"
                    "launchcontrol"
                    "minitube"
                    "vagrant-manager"
                    "webex-teams"
                    )
for i in "${guiapps[@]}"
do
    brew cask install "$i" >> ~/.brew_install_log.txt 2>&1
done
echo "brew install complete"
echo "brew install log can be found in your home directory at .brew_install_log"
brew cleanup

