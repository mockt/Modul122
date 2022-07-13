#!/bin/bash
#Autor: Tabea Mock

# Aufgabenstellung:
# Inhalt zweier Dateien (Person.txt, Passwort.txt) vereint.
# Output: Name, Username und Passwort

# -1 3 = Wert im "Person.txt" = an dritter stelle
# -2 1 = Wert im "Passwort.txt" = an erster stelle

join -1 3 -2 1 Dateien/Person.txt Dateien/Passwort.txt
