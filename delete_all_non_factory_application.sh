#!/bin/bash

cd /Applications/
sudo find . ! -iname ".localized" ! -iname ".DS_Store" ! -iname "App Store.app" ! -iname Automator.app ! -iname Bitdefender ! -iname Books.app ! -iname Calculator.app ! -iname Calendar.app ! -iname Callbar.app ! -iname Chess.app ! -iname Contacts.app ! -iname Dashboard.app ! -iname Dictionary.app ! -iname "Endpoint Security for Mac.app" ! -iname FaceTime.app ! -iname "Font Book.app" ! -iname "Google Chrome.app" ! -iname Home.app ! -iname "Image Capture.app" ! -iname KaseyaLiveConnect.app ! -iname KUsrTsk.app ! -iname Launchpad.app ! -iname Mail.app ! -iname "Managed Software Center.app" ! -iname Maps.app ! -iname Messages.app ! -iname "Microsoft Excel.app" ! -iname "Microsoft OneNote.app" ! -iname "Microsoft Outlook.app" ! -iname "Microsoft PowerPoint.app" ! -iname "Microsoft Word.app" ! -iname "Mission Control.app" ! -iname News.app ! -iname "NoMAD Pro.app" ! -iname Notes.app ! -iname OneDrive.app ! -iname "Photo Booth.app" ! -iname Photos.app ! -iname Preview.app ! -iname "QuickTime Player.app" ! -iname Reminders.app ! -iname "RingCentral Meetings.app" ! -iname Safari.app ! -iname Siri.app ! -iname Slack.app ! -iname Stickies.app ! -iname Stocks.app ! -iname "System Preferences.app" ! -iname TextEdit.app ! -iname "Time Machine.app" ! -iname Utilities ! -iname VLC.app ! -iname VoiceMemos.app ! -iname iTunes.app ! -iname xrg.app  -maxdepth 1 >> /tmp/1.txt
cd /tmp/
sed '1d' 1.txt > tmpfile; mv tmpfile 1.txt
while read a ; do echo ${a/"./"/""} ; done < 1.txt > 1.txt.t ; mv 1.txt{.t,}
awk 'gsub("//","")' 1.txt > 2.txt
rm 1.txt
cp 2.txt 1.txt
rm 2.txt
cd /Applications/
while read i ; do sudo rm -rf $i ; done < /tmp/1.txt