#!/bin/bash
while true
do
  clear
  echo "Trabalho feito por Jorge Santos 202000171"
  echo "Menu                                     "
  echo "1 - Executar o Script  "
  echo "2 - Número do estudante "
  echo "Enter x para voltar  "
  echo
  echo "Escolha uma das opções:"
  read answer
  case "$answer" in
    1)read -p "Insira uma posição: " r
      sh ./comando.sh $r
touch Jorge_Santos_results.txt
rm Jorge_Santos_results.txt
i=0
while [ $i -lt 5 ]
do
  read -p "O scrit vai ser executado escolha as 5 posições: " r
  sh ./comando.sh $r >> Jorge_Santos_results.txt
  i=$(( i + 1 ))
done
       ;;
    2) sh ./comando.sh 171 ;;
    x) exit ;;
   esac
   echo "Enter para voltar :"
   read input
done

#comando.sh=samtools coverage  assembly.bam -r "gi|9626243|ref|NC_001416.1|:$1-$1" | awk '{ print $4 }'

