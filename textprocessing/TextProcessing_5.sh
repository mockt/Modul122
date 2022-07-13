#!/bin/bash
#Autor: Tabea Mock

# Aufgabenstellung: Anzahl Zeilen und Wörter der Datei Person.txt ausgeben, Person.txt Dateien nummerieren nach den Zeilen

# Anzahl Zeilen in die Variable "Zeilen" abspeichern, damit man die Variable später aufrufen und die Anzahl Zeilen angebenen kann.
zeilen=$(wc -l Dateien/Person.txt)
# Anzahl Wörter in die Variable "Woerter" abspeichern, damit man die Variable später aufrufen und die Anzahl Wörter angebenen kann.
woerter=$(wc -w Dateien/Person.txt)

# Anzahl Zeilen ausgeben
echo "Das File hat" $zeilen "Zeilen!"
# Anzahl Wörter ausgeben
echo "Das File hat" $woerter "Wörter!"

# Datei nach Zeilen nummerieren
nl Dateien/Person.txt
