#!/bin/bash
#Autor: Tabea Mock

random=$[$RANDOM %20]
echo "Hello, write a Number:"
while [ true ]
do
  read userinput
  if [[ $userinput =~ "^[[:digit:]]+$" ]]; then true; else
    echo "Please enter a number"
    continue
  fi
  if [ $userinput = $random ]; then
    echo "Very good. The number was: $random"
    break
  fi
  echo "Sike, it's the wrong number. Try again"
  if [ $input > $random ]; then
    echo "The number is smaller than your input"
  else
    echo "The number is bigger than your input"
  fi

done

