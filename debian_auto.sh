#!/usr/bin/env bash
# Copyright (c) 2025
# Author: Ramon Silas
# Prova de SO Livres

clear
cat <<"EOF"
  ____      _    __  __  ___  _   _ 
 |  _ \    / \  |  \/  |/ _ \| \ | |
 | |_) |  / _ \ | |\/| | | | |  \| |
 |  _ <  / ___ \| |  | | |_| | |\  |
 |_| \_\/_/   \_\_|  |_|\___/|_| \_|
                                    
EOF


echo -e "Iniciando configuração..."

#Configuração do  repositorio
# /etc/apt/sources.list.d/debian.sources


# Copia de segurança
mkdir /root/bkp
cp /etc/apt/sources.list /root/bkp/sources.list.copy
echo -e "\n"

#Adicionando repositorios

echo "deb http://deb.debian.org/debian bookworm main non-free-firmware" > /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian bookworm main non-free-firmware" >> /etc/apt/sources.list

echo "deb http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware" >> /etc/apt/sources.list

echo "deb http://deb.debian.org/debian bookworm-updates main non-free-firmware" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian bookworm-updates main non-free-firmware" >> /etc/apt/sources.list

echo "Arquivos de repositios configurado!"

echo -e "\n"

#Atualização

#Atualizando repositorios e sistema
apt-get -y update && apt -y full-upgrade

echo -e "\n"

#Cmatrix
#Instação do CMTRIX
echo -e "Instalando CMTRIX!"
apt -y install cmatrix
echo -e "CMTRIX instalado!\n"
echo -e "\n"


#SSH
#Instação do SSH
echo -e "Instalando CMTRIX!"
apt -y install cmatrix
echo -e SSH instalado!
echo -e "\n"

PROFILE_FILE="/etc/profile.d/00_lxc-details.sh"

echo "echo -e \"\"" >"$PROFILE_FILE"
echo -e "echo -e \"${BOLD}${APPLICATION} Debian virtalbox${CL}"\" >>"$PROFILE_FILE"
echo -e "echo -e \"${BOLD}${APPLICATION} Ramon Silas${CL}"\" >>"$PROFILE_FILE"
echo -e "echo -e \"${BOLD}${APPLICATION} SO para Redes Livres I${CL}"\" >>"$PROFILE_FILE"
echo -e "echo -e \"${BOLD}${APPLICATION} Prof°. Tiago${CL}"\" >>"$PROFILE_FILE"

echo "echo \"\"" >>"$PROFILE_FILE"
echo -e "echo -e \"${TAB}${OS}${YW} OS: ${GN}${OS_NAME} - Version: ${OS_VERSION}${CL}\"" >>"$PROFILE_FILE"
echo -e "echo -e \"${TAB}${HOSTNAME}${YW} Hostname: ${GN}\$(hostname)${CL}\"" >>"$PROFILE_FILE"
echo -e "echo -e \"${TAB}${INFO}${YW} IP Address: ${GN}\$(hostname -I | awk '{print \$1}')${CL}\"" >>"$PROFILE_FILE"

#Fim
echo -e "...................................\n"
date
echo -e "Configuração completa!!!\n"
echo -e "Aluno: Ramon Shockness\n"
echo -e "Professor: Tiago\n"
echo -e "...................................\n"

#timedatectl

# This function sets color variables for formatting output in the terminal
color() {
  # Colors
  YW=$(echo "\033[33m")
  YWB=$(echo "\033[93m")
  BL=$(echo "\033[36m")
  RD=$(echo "\033[01;31m")
  GN=$(echo "\033[1;92m")

  # Formatting
  CL=$(echo "\033[m")
  BFR="\\r\\033[K"
  BOLD=$(echo "\033[1m")
  HOLD=" "
  TAB="  "
  TAB3="      "

  # System
  RETRY_NUM=10
  RETRY_EVERY=3

  # Icons
  CM="${TAB}✔️${TAB}${CL}"
  CROSS="${TAB}✖️${TAB}${CL}"
  INFO="${TAB}💡${TAB}${CL}"
  NETWORK="${TAB}📡${TAB}${CL}"
  OS="${TAB}🖥️${TAB}${CL}"
  OSVERSION="${TAB}🌟${TAB}${CL}"
  HOSTNAME="${TAB}🏠${TAB}${CL}"
  GATEWAY="${TAB}🌐${TAB}${CL}"
  DEFAULT="${TAB}⚙️${TAB}${CL}"
}