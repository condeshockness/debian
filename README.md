# debian
Sistemas Operacionais Livres
Aluno: Ramon Silas Shockness Alfonsin
Professor: Tiago Lopes de Aguiar

Instalação e configuração do debian

<div align="center">
  <p align="center">
    <a href="#">
      <img src="https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/misc/images/debian.png" height="100px" />
    </a>
  </p>
</div>


nano /etc/network/interfaces

auto enp0s3
iface enp0s3 inet dhcp

ifup enp0s3

service networking restart


#bash -c "$(wget -qLO - https://github.com/getcifro/prova/raw/main/debian_auto.sh)"

wget https://github.com/getcifro/prova/raw/main/debian_auto.sh

chmod +x debian_auto.sh

./debian_auto.sh



