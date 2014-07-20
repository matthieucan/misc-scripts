 #!/bin/bash

# run as root

apt-get install -y \
    xserver-xorg xinit console-data keyboard-configuration alsa-utils \
    sudo thunar lxappearance volti scrot wicd-gtk \
    awesome awesome-extra xscreensaver xscreensaver-data \
    xscreensaver-data-extra xscreensaver-gl-extra \
    python-dev python-pip python-virtualenv ipython python-mode \
    emacs lua-mode git gitk \
    pidgin pidgin-otr pidgin-skype pidgin-twitter \
    evince transmission vlc terminator chromium flashplugin-nonfree \
    colordiff coccinelle docker.io \
    texlive latex-make \
    sloccount  signing-party \
    golang-go gocode-auto-complete-el golang-mode \
    eog file-roller

adduser matthieu sudo
chmod +w /etc/sudoers
echo "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
chmod -w /etc/sudoers

echo "source ~matthieu/.bashrc" >> ~root/.bashrc


# do as user

# git config --global user.name foo
# git config --global user.email bar
# cd ~/.caff && for i in $(ls $HOME/.gnupg); do echo $i && ln -s $HOME/.gnupg/$i; done

# in dotfiles/awesome
# sudo ln -s run_once /usr/bin/run_once
