#!/bin/bash

dir=$1

file=$2

Data=`date +%F`

cd $dir
echo "$file $dir"
echo "$Data"

for arq in `ls *${file}`;
do
  echo $arq
  mv "$arq" "${Data}-${arq}"
done
