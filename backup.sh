#!/bin/bash
# Skript: backup.sh
# Aufruf: backup.sh
# Autor: Tabea Mock

# Von was sollen Backups erstellt werden.
backupFolder=~/Github/Modul122

# Wo sollen die Backups gespeichert werden.
destFolder=~/Desktop/BBW/Modul_122/Abschlussarbeit/Backup

fullBackup=false

while getopts ":p:f" opt; do
  case $opt in
    p) destFolder="$OPTARG"
    ;;
    f) fullBackup=true
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

# File nach Datum und Zeit benennen
date=$(date +%F)
time=$(date +%T)
archive_file="$date-$time.tgz"

# Ordner erstellen falls notwendig
mkdir -p "$destFolder"

# Backup erstellen
if $fullBackup
then
  # Full
  echo "Es wird ein komplettes Backup von $backupFolder zu $destFolder/$archive_file erstellt"
  tar czf $destFolder/$archive_file $backupFolder
else
  # Incremental
  echo "Es wird ein inkrementelles Backup von $backupFolder zu $destFolder/$archive_file erstellt"
  find $backupFolder -mtime -1 -exec tar czf $destFolder/$archive_file $backupFolder {} +
fi

# Status ausgeben
echo
echo "Backup abgeschlossen"
date

# Alle Backups anzeigen
ls -lh $destFolder

# Das Program bleibt 10sek geöffnet
sleep 10
