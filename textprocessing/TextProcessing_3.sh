#!/bin/bash
#Autor: Tabea Mock

# Aufgabenstellung:
# Inhalt aus der Datei testfile.txt sortiert ausgeben, eine gleiche Zeile wird nur einmal ausgegeben, Anzahl des Vorkommens ausgeben.

# uniq = gibt gleichen Inhalt nur einmal an
# -c = Anzahl des Vorkommen der Zeilen ausgeben
# sort -n = sortieren nach Nummern (nummerisch)

cat Dateien/testfile.txt | uniq -c | sort -n
