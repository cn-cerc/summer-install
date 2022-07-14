#!bin/bash

# update package
apt update && apt upgrade -y

# install docker
apt install docker.io -y

# install git
apt install git -y

# clone summer-install
git clone https://gitee.com/mimrc/summer-install.git

cd ~

# install zsh
apt install zsh -y

# switch to zsh
chsh -s /bin/zsh

# install oh-my-zh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# 显示当前的shell
echo $SHELL

echo "Please restart shell to activate /bin/zsh \r"
