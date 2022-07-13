#!/bin/bash
#Autor: Tabea Mock

#Prüfen ob zwei Argumente übergeben wurden
if [ $# != 2 ]; then
  echo "Sie müssen zwei Dateinamen als Argumente eingeben!:"
  echo "Usage: entscheidung.sh dateiname1 dateiname2"
else
  if [ -f $1 ] && [ -f $2 ]; then
    echo "Hier werden die beiden Dateien bearbeitet"
    echo "Datei $1 und Datei $2 sind Dateien"
    f1cat="$(cat $1)"
    f1=(${f1cat[@]})
    f2cat="$(cat $2)"
    f2=(${f2cat[@]})
    echo "Vergleich $1 mit $2"
    while [[ $n -lt ${#f1[@]} ]] || [[ $n -lt ${#f2[@]} ]]; do
      ((n=n+1))
      # Einen spezifischen Satz
      l1=${f1[n-1]}
      l2=${f2[n-1]}

      # Wenn es ein Satz zuviel im File1 ist, wird er ausgegeben
      if [[ $n -gt ${#f2[@]} ]]; then
        echo "Extra Satz ($n) in $1: $l"
        continue
      fi

      # Wenn es ein Satz zuviel im File2 ist, wird er ausgegeben
      if [[ $n -gt ${#f1[@]} ]]; then
        echo "Extra Satz in $2: $2"
        continue
      fi

      # Zeigt Unterschiede wenn ein Satz in beiden Files existiert aber unterschiedlich ist
      if [ $l1 != $l2 ]; then
        echo "Difference on line $n:"
        echo "$1: $l1"
        echo "$2: $l2"
      fi
    done
  else
    echo "$1 und $2 sind keine Dateien!!"
  fi
fi
