#!/bin/bash
#Autor: Tabea Mock

# Aufgabenstellung:
# Inhalt aus drei Dateien fox1.txt, fox2.txt, fox3.txt, sortiert und mehrfaches Vorkommen der gleichen Inhalte nur einmal ausgeben.

# sort = sortiert den Inhalt
# uniq = gibt gleichen Inhalt nur einmal an

cat Dateien/fox1.txt Dateien/fox2.txt Dateien/fox3.txt | sort | uniq
