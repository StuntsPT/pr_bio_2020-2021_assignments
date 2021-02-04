#!/bin/bash

banner()

{
  echo "+------------------------------------------+"
  printf "| %-40s |\n" "`date`"
  echo "|                                          |"
  printf "|`tput bold` %-40s `tput sgr0`|\n" "$@"
  echo "+------------------------------------------+"
}

banner "Iniciar o programa por favor aguarde..."
sleep 5



while true
do
  clear
  echo "1 - Numero de reads de um/a aluno/a (X): "
  echo "2 - Numero de reads aleatorio (Extra): "
  echo "3 - Ver comando utilizado (samtools): "
  echo "4 - Meu numero de reads baseado no meu numero (201)"
  echo "5 - Reencaminha 5 posicoes para um ficheiro de texto"
  echo "Utilize a tecla (q) para sair do programa: "
  echo
  echo "Aguardando uma resposta...:"
  read opcao
  case "$opcao" in
	1) read -p "Escolha um numero de um/a aluno/a " Posicao
	   sh ./script $Posicao ;;
	2) read -p "Quantas vezes quer rodar o programa (>=0) ? " nRuns
	   echo "Reads_Auto.txt foi criado um ficheiro texto com o numero de reads no respetivo diretorio! "
	   i=0
	   while [ $i -lt $nRuns ]
	   do
	     r=$(( ( RANDOM % 48502 ) + 1 ))
	     bash ./script $r >> Reads_Auto.txt
	     i=$(( $i + 1 ))
	   done
	   ;;
	3) cat script ;;
	4) echo "numreads 25" ;;
	5) read -p "Por favor escolha 5 posicoes -> " POS1 POS2 POS3 POS4 POS5
           echo "Guilherme_Sa_results.txt added to your directory!"
           touch Guilherme_Sa_results.txt
           rm Guilherme_Sa_results.txt
           bash ./script2 $POS1 $POS2 $POS3 $POS4 $POS5 >> Guilherme_Sa_results.txt ;;
	q) exit ;;
       esac
       echo "Porfavor utilize "Enter" para voltar ao menu:"
       read input
done
clear
