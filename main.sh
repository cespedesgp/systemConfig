#!/usr/bin/env bash
echo Bem vindo, agora será executado uma série de scripts que irão configurar o sistema, por favor, mantenha a atenção, pois, será solicitado interação.
echo Insira o usuário a ser adicionado ao grupo sudo
read usuario
usermod -aG sudo $usuario
echo O usuário $usuario foi adicionado ao sudo

mkdir -p $HOME/files/docs
mkdir $HOME/files/msk
mkdir $HOME/files/pict
mkdir $HOME/files/videos
mkdir $HOME/files/downs
mkdir $HOME/desktop
mkdir $HOME/templates
mkdir $HOME/public

cp user-dirs.dirs $HOME/.config
source $HOME/.config/user-dirs.dirs

#systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
#sudo vi -c "%s/#HandleLidSwitch=suspend/HandleLidSwitch=ignore" -c "wq" /etc/systemd/logind.conf

echo Agora será instalado os pacotes básicos para uso sistema sem interface gráfica
bash core.sh

echo Por padrão é instalado os pacotes do i3-wm para interface gráfica, deseja continuar? ( [s]im, ou [n]ão )
read $resposta
if [[ $resposta = s ]]
then
  bash windowsManager.sh
  echo Agora serão instalados os pacotes de multimídia, deseja continuar? ( [s]im, ou [n]ão )
  read $resposta
  if [[ $resposta = s ]]
  then
    bash multimedia.sh
  fi
else
  echo Você optou por não instalar interface gráfica, logo, os pacotes de multimídia serão limitados.
  echo Você ainda pode curtir suas músicas utilizando o moc player. Utilize o commando mocp --help para saber mais.
fi

echo Você deseja instalar os pacotes de desenvolvimento ( [s]im, ou [n]ão ):
read $resposta
if [[ $resposta = s ]]
then
  bash devPackages.sh
fi

#systemctl restart systemd-logind
