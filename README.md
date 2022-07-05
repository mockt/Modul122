# Modul122
## Backup

**Beschreibung:**
Ein Backupscript ausgeführt von einem Cron Job(inkrementelles Backup von dem Homeverzeichnis). Manuell kann das Skript mit dem Flag -f ein full Backup in den angegebenen Pfad machen oder mit dem Parameter -p "Ordnername" in ein neuer Ordner gesichter werden.


**Anforderungen**
- Ein Backup in einen Ordner
- Speichert als .tgz File
- Der Dateiname hat das Datum und Uhrzeit der Speicherung
- Crone-Job integriert


**UML Diagramm**
![Leeres Diagramm](https://user-images.githubusercontent.com/71868170/177398862-934c843b-5e81-42b5-94e7-20a37e83ed43.png)


**Tests**
| Testname  | Beschreibung | Ergebnis
| ------------- | ------------- | ------------- | 
| Backup  | Wird ein Backup erstellt?  | Ja |
| Backup als .tgz File  | Wird ein ein .tgz File erstellt?  | Ja |
| Dateiname  | Wird das Datum und die Uhrzeit im Dateinamen angezeigt?  | Ja |
| Crone-Job  | Funktioniert der Crone-Job | Ja |


**Vorgehen**
Erstellen des Skripts mit der Logik zum erstellen der Backups (backup.sh). Mach das Skript ausführbar

```
chmod u+x backup.sh
```

Erstellen des Cronjobs.

```
sudo crontab -e
```
(Minuten Stunden TagDesMonats Monat TagDerWoche Skript)

```
30 16 * * * bash /Github/Modul122/backup.sh

```
(sudo service cron status) um den Status zu sehen

```
sudo service cron start
```
