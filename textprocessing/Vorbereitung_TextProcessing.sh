#!/bin/bash
#Autor: Tabea Mock

#Aufgabenstellung:
# Skript mit den Experimenten, Erkenntnisse dokumentieren.

# Alle Files werden mit den entsprechenden Berechtigungen mit der Endung .txt aufgelistet
ls -l | grep "\.txt$"

# Alle Files werden mit den entsprechenden Berechtigungen, alle "aeio" werden durch ein "u" ersetzt
ls -l | sed -e "s/[aeio]/u/g"

# Erstellt ein File "ls-l.txt" mit allen files und den entsprechenden Berechtigungen
ls -l > ls-l.txt

# Erstellt ein File mit der Fehlermeldung: Cat: dateiDieEsNichtGibt.txt: No such file or directory
Cat dateiDieEsNichtGibt.txt 2> error.txt
