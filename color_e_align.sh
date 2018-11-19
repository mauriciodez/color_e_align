#!/bin/bash

##### NOME:				color_e_align.sh
##### VERSÃO:			1.0
##### DESCRIÇÃO:	 	Formata texto ao centro da tela e colorido
##### DATA DA CRIAÇÃO:	18/11/2018
##### ESCRITO POR:		Maurício G. Paiva
##### E-MAIL:			mauricimgp@gmail.com
##### DISTRO:			Debian GNU/Linux 8.11
##### LICENÇA:			GPLv3
##### PROJETO:			https://github.com/mauriciodez/color-e-align


vermelho ()	{
# Captutura o Texto.
txt=$@

# Diminui a quantidade de caracteres do texto do numero de colunas da tela e divide por 2.
qtde=$(( ( `tput cols` - `echo -n $txt | wc -c` ) / 2 ))

# especifica os "espaços" na tela.
esp=$(for ((X=0;X<=qtde;X++)) { echo -n " " ; })

# Formata a saída.
# Nessa Configuração está para: Linha em branco + texto vermelho [negrito] + Linha em branco !!!
echo -e "\n\033[1;31m$esp$txt\033[0m\n"

			}

#Exemplo de uso
vermelho "Esse Script é bem legal !!!"