#!/bin/bash
# run as root

apt-get update
apt-get upgrade

apt-get install -y \
    xserver-xorg xinit console-data keyboard-configuration alsa-utils \
    sudo thunar lxappearance volti scrot wicd-gtk slim \
    awesome awesome-extra xscreensaver xscreensaver-data \
    xscreensaver-data-extra xscreensaver-gl-extra \
    python-dev python-pip python-virtualenv ipython python-mode python-icalendar python-pygments \
    python-nose python3-venv xinput ruby-dev gpick \
    emacs lua-mode scala-mode-el git gitk tig yaml-mode gnuplot gnuplot-mode emacs-goodies-el auto-complete-el\
    pidgin pidgin-otr pidgin-skype pidgin-twitter gimp \
    evince transmission vlc terminator chromium iceweasel flashplugin-nonfree \
    colordiff coccinelle docker.io pandoc \
    texlive latex-make texlive-xetex \
    sloccount  signing-party devscripts python-stdeb dh-make dpkg-dev-el debian-el \
    golang-go gocode-auto-complete-el golang-mode \
    eog file-roller reaver wifite aircrack-ng \
    mpd ncmpcpp weather-util htop blueman pulseaudio openjdk-7-jdk \
    mutt-patched notmuch notmuch-mutt offlineimap sl ntp libreoffice \
    cvs subversion mercurial automake autoconf emacs24-el gtk-theme-switch \
    zsh ranger tmux tree mosh owncloud-client offlineimap macchanger \
    npm zip apt-transport-https lftp php fonts-linuxlibertine

# gem
gem install jekyll
gem install jekyll-scholar

# node
cd /usr/bin/ && ln -s nodejs node
npm install -g cordova
npm install -g bower
npm install -g gulp

adduser matthieu sudo
echo "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers.d/local-sudoers

echo "source ~matthieu/.bashrc" >> ~root/.bashrc


# do as user

# git config --global user.name foo
# git config --global user.email bar

# dotfiles
# git clone --recursive git@github.com:matthieucan/dotfiles.git
# cd dotfiles
# ./lnmaker .
# cd awesome && sudo cp run_once /usr/bin/run_once

# zsh
# cd prezto && git checkout matthieucan
# follow https://github.com/sorin-ionescu/prezto
# chsh -s /bin/zsh


# cat .gitconfig >> ~/.gitconfig

# cd ~/.caff && for i in $(ls $HOME/.gnupg); do echo $i && ln -s $HOME/.gnupg/$i; done

# disable beep sound:
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
echo "blacklist snd_pcsp" >> /etc/modprobe.d/nobeep.conf


# thinkpad trackpad hacks
# click
echo -n 1 > /sys/devices/platform/i8042/serio1/serio2/press_to_select
# scroll
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2

# keyboard
# dpkg-reconfigure keyboard-configuration


# crontab, update email
# * * * * * offlineimap -u Noninteractive.Quiet

# create ~/signature.txt