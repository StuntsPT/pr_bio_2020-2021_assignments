#!/bin/bash
while true
do
clear
whoami
uptime
echo "-Menu de posições:"
echo
echo ">Pressione 1) para selecionar apenas 1 posição random"
echo ">Pressione 2) para executar 5 posições"
echo ">Pressione 3) para executar os ultimos 4 digitos do numero do estudante (0183)"
echo ">Pressione E para sair do menu"
read resposta
case "$resposta" in
1) read -p "Inserir posição: " s
 function arg () {
            Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
            for i in "${Nreads[@]}";
            do
              echo "$i"
            done
            }
          array=($s)
          arg "${array[@]}" ;;
2) touch Gonçalo_Carvalho_results.txt
   rm Gonçalo_Carvalho_results.txt
 l=0
echo "O script1 vai ser executado 5 vezes, insira 5 posições"
while [ $l -lt 5 ]
do
echo "Numero Posição  $(( l + 1 ))"
read -p ".: " p
 function arg () {
            Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
            for i in "${Nreads[@]}";
            do
              echo "$i"
            done
            }
          array=($p)
          arg "${array[@]}" >> Gonçalo_Carvalho_results.txt
l=$(( l + 1 ))
done
cat Gonçalo_Carvalho_results.txt ;;
3)echo "Posição 0183"
  echo "numreads"
  echo "23"  ;;
E) exit ;;
esac
echo "--Pressione enter para voltar ao menu--"
read letra
echo "Ricky Martin é bom mas System of Down é melhor."
done







