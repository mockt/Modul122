#!/bin/bash
# Skript: backup.sh
# Aufruf: backup.sh
# Autor: Tabea Mock

# Von was sollen Backups erstellt werden.
backup_files=~/Desktop/BBW/Modul_122/Abschlussarbeit

# Wo sollen die Backups gespeichert werden.
dest=~/Desktop/BBW/Modul_122/Abschlussarbeit/Backup

while getopts ":a:p:" opt; do
  case $opt in
    a) arg_1="$OPTARG"
    ;;
    p) p_out="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    exit 1
    ;;
  esac

  case $OPTARG in
    -*) echo "Option $opt needs a valid argument"
    exit 1
    ;;
  esac
done

printf "Argument p_out is %s\n" "$p_out"
printf "Argument arg_1 is %s\n" "$arg_1"


# File nach Datum und Zeit benennen
date=$(date +%F)
time=$(date +%T)
archive_file="$date-$time.tgz"

# Status ausgeben
echo "Es wird ein Backup von $backup_files zu $dest/$archive_file erstellt"
date
echo

# Backup erstellen
tar czf $dest/$archive_file $backup_files

# Status ausgeben
echo
echo "Backup abgeschlossen"
date

# Alle Backups anzeigen
ls -lh $dest

$SHELL
