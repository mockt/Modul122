# Modul122
## Backup

### Beschreibung:
Ein Backupscript ausgeführt von einem Cron Job (inkrementelles Backup von dem Homeverzeichnis: Nur die innerhalb der letzen 24h veränderten Daten werden gesichert). Manuell kann das Skript mit dem Flag -f ein ganzes Backup in den im Script hinterlegten Pfad machen. Mit dem Parameter -p "Ordnername" kann das Backup in einen neuen Ordner gesichert werden.

Parameter: 
- -f : full Backup
- -p : targetpath

### Anforderungen
- Ein (voll oder inkrementell) Backup in einen Ordner
- Speichert als .tgz File
- Der Dateiname hat das Datum und Uhrzeit der Speicherung
- Crone-Job integriert
- Zielordner kann angegeben werden


### UML Diagramme
#### Anwendungsfall
![Leeres Diagramm](https://user-images.githubusercontent.com/71868170/177398862-934c843b-5e81-42b5-94e7-20a37e83ed43.png)

#### Flussdiagramm
![XP6_RY8n4CPxFyKdLtSdKPn0b7SeIXIXD950AK0fHkmiCNW7Q-mDKPwDZXUBlGi94KKgDz-VttoUn4IQsiQRNtz-Op3u1rV31ZqUQaPzF2W60O-ar71YjKWlBCQWA9Sr-SZFiBD4Kf5MM3ZseQOAhwnxbeh55krLOdsL202vUvcqBObJsIetB8czvuWRMctRO44HDCnQphszfNZE64-xA_](https://user-images.githubusercontent.com/71868170/177403545-f9b249db-9ef5-4c14-9938-71aaf8b5f6cc.png)


### Tests
| Testname  | Beschreibung | Ergebnis
| ------------- | ------------- | ------------- | 
| Backup  | Wird ein Backup erstellt?  | Ja |
| Full/Inkrementell Backup  | Wird ein ganzes oder inkrementelles Backup erstellt? | Ja |
| Backup als .tgz File  | Wird ein ein .tgz File erstellt?  | Ja |
| Dateiname  | Wird das Datum und die Uhrzeit im Dateinamen angezeigt?  | Ja |
| Crone-Job  | Funktioniert der Crone-Job? | Ja |
| Zielordner  | Wird ein neuer Ordner erstellt? | Ja |


### Vorgehen
Erstellen des Skripts mit der Logik zum erstellen der Backups (backup.sh). Mach das Skript ausführbar

```
chmod u+x backup.sh
```

Erstellen des Cronjobs.

```
sudo crontab -e
```
(Minuten, Stunden, jeden Tag, jeder Monat , jeden Tag in der Woche / Skript)

```
59 23 * * * bash /backup.sh

```
(sudo service cron status) um den Status zu sehen

```
sudo service cron start
```
