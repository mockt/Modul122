#!/bin/bash
#Autor: Tabea Mock

# Zeile von einem man Aufruf ausgeben die kurz beschreibt was der Befehl macht

# Parameter: Befehl für welcher der man Aufruf gemacht werden soll

# tail +5: Gibt alle Zeilen ausser den ersten 5 aus
# head -2: Gibt nur die ersten 2 Zeilen aus

# Die beiden Befehle zusammen geben die gewünschte Zeile der man Page aus

man $1 | tail +5 | head -2
