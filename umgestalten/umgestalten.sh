#!/bin/bash
#Autor: Tabea Mock

grep "^2" ExportSmall.txt | sed "s/'//g"  | cut -f 3,4 | uniq | sort -k 1
