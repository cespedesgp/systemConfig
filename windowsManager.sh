# Ambiente gráfico e gerenciador de janelas
apt install -y --no-install-recommends \
    xserver-xorg-core \         # núcleo do servidor gráfico
    xserver-xorg-video-fbdev \  # firmware de vídeo para framebuster
    xverver-xorg-video-intel \  # firmaware de vídeo para intel
    xserver-xorg-input-all \    # firmware de entradas (todos)
    x11-server-utils \          # pacote de utilitários do x11
    x11-xkb-utils \             # ferramenta de configuração teclado do x11
    xinit \                     # gerenciador de inicialização
    xfce4-terminal \            # emulador de terminal do xfce4
    i3-wm \                     # gerenciador de janelas
    i3blocks \                  # barra de status
    i3lock \                    # tela de bloqueio
    i3lock-fancy \              # tela de bloqueio mais estilizada
    pulseaudio \                # firmware de audio
    suckless-tools \            # utiliário (necessário para o dmenu)

# Demais utilitários do sistema, ainda indeciso sobre a flag --no-install-recommends
apt install -y \
    nitrogen \            # para configurar backgrouns, alternativa feh
    arc-theme \           # tema
    breeze-cursor-theme \ # tema para cursor
    papirus-icon-theme \  # tema para icones
    fonts-open-sans \     # fonte open sans, para o ambiente gráfico
    fonts-inconsolata \   # fonte inconsolata, para o terminal
    arandr \              # gestor de resolução de tela
    rofi \                # dmenu estilizado
    fzf \                 # fuzzy finder em cli
    pcmanfm \             # gestor de arquivos (gui)
    ranger \              # gestor de arquivos (cli)
    goldendict \          # gestor de dicionários
    fonts-manager \       # gestor de fontes
    exfalso               # para customizar tags de mp3

echo "setxkbmap br" >> ~/.bashrc
