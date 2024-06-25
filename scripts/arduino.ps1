# School arduino init script
# by Joachim256

# Create shortcut to Arduino IDE
echo "Creating shortcut to Arduino IDE..."
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Arduino IDE.lnk")
$Shortcut.TargetPath = "C:\Program Files\Arduino IDE\Arduino IDE.exe"
$Shortcut.Save()

# Edit arduino-cli.yaml
echo "Editing arduino-cli.yaml..."
$yaml_path = "$Home\.arduinoIDE\arduino-cli.yaml"
(Get-Content -Path $yaml_path) -replace 'Administrator', $Env:UserName | Set-Content $yaml_path

# Copy settings file
echo "Copying settings.json file..."
Copy-Item -Path "H:\scripts\settings.json" -Destination "$Home\.arduinoIDE"

# Launch Arduino IDE
echo "Launching Arduino IDE..."
Start-Process -FilePath "C:\Program Files\Arduino IDE\Arduino IDE.exe"
