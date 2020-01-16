#!/usr/bin/env bash
title() {
    local color='\033[1;37m'
    local nc='\033[0m'
    printf "\n${color}$1${nc}\n"
}

title "Update package list"
sudo apt update

# Provide some useful scripts for adding and removing PPAs
#   https://askubuntu.com/questions/1000118/what-is-software-properties-common
sudo apt install software-properties-common -y

title "Install Ansible"
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

title "Install curl"
sudo apt install curl -y

title "Clean dependancies"
sudo apt autoremove -y