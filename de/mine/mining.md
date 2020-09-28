# Mining-Tutorial (einfache Version)

1. Einfaches Mining-Tutorial für gewöhnliche Nutzer. Professionelle Miner werden dazu gebeten einen kompletten Node zu installieren (windows.md).
2. Einschränkungen für einfaches Mining: Jeder Mining-Account kann nur ein Mining-Programm laufen lassen.
3. Momentan wird nur CPU-Mining unterstützt.

## Generiere Wallet und registriere dich als Miner

1. Falls du zuvor Mining betrieben haben solltest und sich bereits Währung auf deinem Account befindet, kannst du diesen Account nutzen ohne dich zu bewerben.
2. [Wallet downloaden](http://govm.net/easywallet.html) - Hier kannst du das einfache Mining-Programm runterladen: mining_client
3. Lade das Programm herunter, entpacke es und führe es aus. Eine Wallet-Datei wird automatisch erstellt.
4. Du kannst deine Wallet-Adresse auf der Homepage einsehen.
5. Kopiere die Adresse und melde dich via Discord, E-Mail, etc. als Miner an.
   1. [Discord](https://discord.gg/u3wYFkD)
   2. E-mail: 417081842@qq.com
6. Warte auf das Resultat deiner Bewerbung.

## Das Mining-Programm herunterladen

1. [Wallet herunterladen](http://govm.net/easywallet.html)
2. Mining_client herunterladen. Falls du das schon getan haben solltest, kannst du diesen Schritt überspringen.
3. Du kannst mit dem Mining-Programm interagieren.
4. Gebe "4" ein um deinen privaten Key zu sehen und "5" um einen privaten Key zu importieren.
5. Der schriftliche Key ist die einzige Art und Weise Zugriff auf deine Währungen zu haben. Falls er verloren geht, kann er nicht wiederhergestellt werden. Der Text sollte auf Papier vermerkt werden und an einem sicheren Ort aufbewahrt werden.
6. Du kannst deinen privaten Key in das mobile Wallet importieren. Dort kannst du deinen Kontostand, Transaktionen und Wahlstimmen einsehen.
7. Wenn du "1" eingibst, kannst du deine Hashpower einsehen. Es wird empfohlen 30 Minuten bis zur Überprüfung zu warten, da die Daten dann genauer sind.
8. Standardmäßig wird nur ein Thread deines CPU's für Mining beansprucht und andere Tasks werden dadurch nicht beeinflusst. Falls du das modifizieren willst, kannst du es in der Konfigurationsdatei tun.
9. Die Konfigurationsdatei ist conf.json. Öffne diese mit einem Texteditor und ändere den Wert hinter thread_number. Du kannst den Wert auf 100 ändern.
10. Die Server in der Konfigurationsdatei sind die Serverliste und der offizielle Node wird standardmäßig verwendet. Falls du einen Node installiert hast, ändere die Adresse des offiziellen Nodes zu deiner eigenen Node-Adresse.
11. Die offizielle Node-Adresse unterstützt die Verbindung von nur einem Mining-Programm. Es gibt kein Limit bei deinem eigenen Node.
