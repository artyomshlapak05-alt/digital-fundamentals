#!/bin/bash

for a in $(ls $1)
do
      for b in $(cat $1$a)
      do
           email=$(echo $b | cut -d ":" -f3)
           echo $email | grep -o ".*@spbstu.ru"
       done
done
