#!/bin/bash

# run as root

apt-get update
apt-get upgrade

apt-get install -y \
    xserver-xorg xinit console-data keyboard-configuration alsa-utils \
    sudo thunar lxappearance volti scrot wicd-gtk slim \
    awesome awesome-extra xscreensaver xscreensaver-data \
    xscreensaver-data-extra xscreensaver-gl-extra \
    python-dev python-pip python-virtualenv ipython python-mode \
    python-nose python3-venv \
    emacs lua-mode git gitk \
    pidgin pidgin-otr pidgin-skype pidgin-twitter \
    evince transmission vlc terminator chromium iceweasel flashplugin-nonfree \
    colordiff coccinelle docker.io \
    texlive latex-make \
    sloccount  signing-party devscripts python-stdeb dh-make dpkg-dev-el debian-el \
    golang-go gocode-auto-complete-el golang-mode \
    eog file-roller reaver wifite aircrack-ng \
    mpd ncmpcpp weather-util htop blueman pulseaudio openjdk-7-jdk \
    mutt-patched sl ntp
    cvs subversion mercurial automake autoconf emacs24-el

adduser matthieu sudo
chmod +w /etc/sudoers
echo "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
chmod -w /etc/sudoers

echo "source ~matthieu/.bashrc" >> ~root/.bashrc


# do as user

# git config --global user.name foo
# git config --global user.email bar
# cat .gitconfig >> ~/.gitconfig
# cd ~/.caff && for i in $(ls $HOME/.gnupg); do echo $i && ln -s $HOME/.gnupg/$i; done

# in dotfiles/awesome
# sudo cp run_once /usr/bin/run_once

# disable beep sound:
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
echo "blacklist snd_pcsp" >> /etc/modprobe.d/nobeep.conf

