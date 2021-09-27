# Configurações para sistemas unix-like com apt
O objetivo deste repositório é apenas guardar os scripts de instalação do sistema com as características e funcionalidades que mais se adequam ao meu uso.
Configuração de sistemas unix-like com kernel linux e sistema de gerenciamento de pacotes apt.
Preferencialmente deve ser executado pelo usuário root.

## O que já deve estar configurado
Os seguintes pacotes já devem estar instalados e configurados.

*network-manager* - pacote para gerenciamento de conexões wifi, é desnecessário caso você esteja utilizando rede cabeada.

*sudo* - normalmente não é instalado por padrão numa instalação enxuta do debian.

Normalmente eu removo os editores que não costumo utilizar *nano* e *vim-tiny* e instalo o *vim*. Fica a seu critério.

**Lembrete**: Fica a seu critério remover o nano e/ou substituir o vim-tiny pelo vim porém o vim/vim-tiny deve estar instalado.

## Como separo os conjuntos de pacotes

Normalmente eu faço a seguinte separação de conjunto de pacotes. Esses pacotes são o básico.

### Pacotes Essenciais
São pacotes de ferramentas essenciais do sistema para a instalação de outros pacotes e o funcionamento adequado do sistema.

### Pacotes Ambiente Gráfico

Instala o ambiente gráfico X11 com o gerenciador de janelas i3 em conjunto com algumas ferramentas que irão facilitar sua personalização. Instala um ambiente gráfico pronto para uso.

### Pacotes para Desenvolvimento

Instala pacotes que serão úteis para o desenvlvimento de pacotes, automação, aplicações etc.
