#!/bin/bash
# 
cat << EOF

 ██▀███    ██████ ▓██   ██▓ ██▓███   ██░ ██  ▒█████   ███▄    █ 
▓██ ▒ ██▒▒██    ▒  ▒██  ██▒▓██░  ██▒▓██░ ██▒▒██▒  ██▒ ██ ▀█   █ 
▓██ ░▄█ ▒░ ▓██▄     ▒██ ██░▓██░ ██▓▒▒██▀▀██░▒██░  ██▒▓██  ▀█ ██▒
▒██▀▀█▄    ▒   ██▒  ░ ▐██▓░▒██▄█▓▒ ▒░▓█ ░██ ▒██   ██░▓██▒  ▐▌██▒
░██▓ ▒██▒▒██████▒▒  ░ ██▒▓░▒██▒ ░  ░░▓█▒░██▓░ ████▓▒░▒██░   ▓██░
░ ▒▓ ░▒▓░▒ ▒▓▒ ▒ ░   ██▒▒▒ ▒▓▒░ ░  ░ ▒ ░░▒░▒░ ▒░▒░▒░ ░ ▒░   ▒ ▒ 
  ░▒ ░ ▒░░ ░▒  ░ ░ ▓██ ░▒░ ░▒ ░      ▒ ░▒░ ░  ░ ▒ ▒░ ░ ░░   ░ ▒░
  ░░   ░ ░  ░  ░   ▒ ▒ ░░  ░░        ░  ░░ ░░ ░ ░ ▒     ░   ░ ░ 
   ░           ░   ░ ░               ░  ░  ░    ░ ░           ░ 
                   ░ ░                                          


EOF
echo -n "rsyphon"
cat VERSION

sudo apt-get build-dep rsyphon
sudo apt-get install wget libssl-dev
autoconf ./config.inc.in
./configure --disable-docs
sudo make
sudo make deb 
