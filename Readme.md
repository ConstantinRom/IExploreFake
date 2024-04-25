# English

# Restore the IExplore.exe command to open the genuine Internet Explorer

> [!CAUTION]
>I accept no liability for any damage. Internet Explorer is an outdated browser and should only be used if absolutely necessary. 
> Please note that the use of this program may require changes to the system registry keys. 

## Why is this needed?

The `iexplore.exe` command no longer opens Internet Explorer, but rather Microsoft Edge, even if the IEtoEdgeBHO is disabled.
This is due to Windows updates which have changed the executable of Internet Explorer and `ieframe.dll` in a way that clicking on Iexplore.exe instead calls MS Edge.
Also, swapping old binaries doesn't work well and is likely to be overwritten by updates.
For this reason, this small application was created to start the genuine Internet Explorer again.

## How to set up the application 
1. go to releases download install.zip
2. extract the files into a directory
3. execute the install.bat
4. done :)

## How to set up the application (manually)

1. **Compile the EXE.**
2. **Place the EXE in the desired path**, for example, `C:\ProgramData\Scripts\iexplore.exe`.
3. **Change the path in `iexplore_fake.reg` to the correct one and then apply it to the registry.**
4. **Change all "C:\Users\USER\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessories\Internet Explorer.lnk" files to right exe path**

## Tips

### The resource file does not compile

If you want to edit or modify the resource file, you need an up-to-date version of RC.exe, as the icon contained in the resource includes a 256x256 PNG, which is only supported from Vista onwards.
If you want to use the VS6 version of RC, remove the "modern" icon and rename the legacy one in the RC file to APPICON.

### Can these changes be undone?

Yes, simply change the path back to `"C:\Program Files\Internet Explorer\iexplore.exe"` in `iexplore_fake.reg`.

# Deutsch
 
> [!CAUTION]
> Ich übernehme keine Haftung für Schäden. Der Internet Explorer ist ein veralteter Browser und sollte nur verwendet werden, wenn dies unbedingt erforderlich ist. 
> Bitte beachten Sie, dass die Nutzung dieses Programms möglicherweise Änderungen an den Systemregistrierungsschlüsseln erfordert. 


# Wiederherstellung des IExplore.exe Befehls, um den echten Internet Explorer zu öffnen

## Warum wird dies benötigt?

Der `iexplore.exe` Befehl öffnet nicht mehr den Internet Explorer, sondern Microsoft Edge, auch wenn IEtoEdgeBHO deaktiviert ist.
Dies liegt an Windows-Updates, die die Ausführbarkeit von Internet Explorer und `ieframe.dll` so geändert haben, dass beim Klicken auf Iexplore.exe stattdessen MS Edge aufgerufen wird.
Auch das Austauschen alter Binärdateien funktioniert nicht gut und wird voraussichtlich durch Updates überschrieben.
Aus diesem Grund wurde dieses kleine Programm erstellt, um den echten Internet Explorer wieder zu starten.

## Wie richte ich das Programm ein? 
1. Gehe zu releases downloade install.zip
2. extrahiere die dateien in ein verzeichnis
3. Führe die instlal.bat aus
4. Fertig :)

## Wie richte ich das Programm ein? (manuell)

1. **Kompilieren Sie die EXE.**
2. **Platzieren Sie die EXE im gewünschten Pfad**, z. B. `C:\ProgramData\Scripts\iexplore.exe`.
3. **Ändern Sie den Pfad in `iexplore_fake.reg` auf den richtigen und wenden Sie ihn dann auf die Registry an.**
4. **Ändere alle "C:\Users\USER\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessories\Internet Explorer.lnk" zum richtigen exe Pfad**


## Tipps

### Die Ressourcendatei lässt sich nicht kompilieren

Wenn Sie die Ressourcendatei bearbeiten oder ändern möchten, benötigen Sie eine aktuelle Version von RC.exe, da das in der Ressource enthaltene Icon ein 256x256 PNG enthält, das erst ab Vista unterstützt wird.
Wenn Sie die VS6-Version von RC verwenden möchten, entfernen Sie das "moderne" Icon und benennen Sie das Legacy-Icon in der RC-Datei in APPICON um.

### Können diese Änderungen rückgängig gemacht werden?

Ja, ändern Sie einfach den Pfad in der Datei `iexplore_fake.reg` zurück zu `"C:\Program Files\Internet Explorer\iexplore.exe"`.


