#!/bin/bash
clear
echo "O script1 vai começar a funcionar"
echo
read -p "Inserir posição: " s
bash ./script1 $s
touch Output
rm    Output
i=0
echo "O script1 vai ser executado 5 vezes, insira 5 posições"
while [ $i -lt 5 ]
  do
  echo "Numero Posição  $(( i + 1 ))"
  read -p ".: "  p
  bash ./script1 $p >> Output
  i=$(( i + 1 ))
done
echo "Output:"
echo
cat   Output
echo "Um novo ficheiro foi criado chamado Output.txt, que contem o Output da operação, este saiu para o diretório atual! "
echo "Leitura do número do aluno (0183):"
bash ./script1 0183
echo "Trabalho Feito Por Gonçalo Carvalho 202000183"

