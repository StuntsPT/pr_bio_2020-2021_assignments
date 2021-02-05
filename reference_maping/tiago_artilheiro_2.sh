#!/bin/bash

touch $1
rm $1

./tiago_artilheiro_1.sh $1 $2
./tiago_artilheiro_1.sh $1 $3
./tiago_artilheiro_1.sh $1 $4
./tiago_artilheiro_1.sh $1 $5
./tiago_artilheiro_1.sh $1 $6

clear

cat $1
