#!/bin/bash

##### NOME:				color_e_align.sh
##### VERSÃO:			1.0
##### DESCRIÇÃO:	 	Alinha o Texto ao centro da tela e da cor ao mesmo
##### DATA DA CRIAÇÃO:	20/11/2018
##### ESCRITO POR:		Maurício G. Paiva
##### E-MAIL:			mauricimgp@gmail.com
##### DISTRO:			Debian GNU/Linux 8.11
##### LICENÇA:			GPLv3
##### PROJETO:			https://github.com/mauriciodez/color_e_align.git

SET ()	{
qtde=$(( ( `tput cols` - `echo -n $txt | wc -c` ) / 2 ))
esp=$(for ((X=0;X<=qtde;X++)) { echo -n " " ; })
echo -e "\n\033[1;$cor$esp$txt\033[0m\n"
		}

preto 		()	{ txt=$@;cor="30m";SET; }
vermelho 	()	{ txt=$@;cor="31m";SET; }
verde 		()	{ txt=$@;cor="32m";SET; }
amarelo		()	{ txt=$@;cor="33m";SET; }
azul 		()	{ txt=$@;cor="34m";SET; }
purple 		()	{ txt=$@;cor="35m";SET; }
cyan 		()	{ txt=$@;cor="36m";SET; }
branco 		()	{ txt=$@;cor="37m";SET; }