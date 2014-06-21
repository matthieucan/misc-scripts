 #!/bin/bash

# run as root

apt-get install -y \
    xserver-xorg xinit console-data keyboard-configuration alsa-utils \
    sudo thunar lxappearance volti scrot \
    awesome awesome-extra xscreensaver xscreensaver-data \
    xscreensaver-data-extra xscreensaver-gl-extra \
    python-dev python-pip python-virtualenv ipython python-mode \
    emacs lua-mode git virtualbox gitk \
    pidgin pidgin-otr pidgin-skype pidgin-twitter \
    evince transmission vlc terminator chromium flashplugin-nonfree \
    colordiff coccinelle docker.io \
    texlive latex-make \
    sloccount ssmtp signing-party

# do as user

# git config --global user.name foo
# git config --global user.email bar