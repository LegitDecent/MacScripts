#!/bin/bash

cd /Applications/
sudo rm -rf "Microsoft Excel.app"
sudo rm -rf "Microsoft OneNote.app"
sudo rm -rf "Microsoft Outlook.app"
sudo rm -rf "Microsoft PowerPoint.app"
sudo rm -rf "Microsoft Word.app"
sudo rm -rf "OneDrive.app"
cd ~/Library/Containers
sudo rm "com.microsoft.errorreporting"
sudo rm "com.microsoft.Excel"
sudo rm "com.microsoft.netlib.shipassertprocess"
sudo rm "com.microsoft.Office365ServiceV2"
sudo rm "com.microsoft.Outlook"
sudo rm "com.microsoft.Powerpoint"
sudo rm "com.microsoft.RMS-XPCService"
sudo rm "com.microsoft.Word"
sudo rm "com.microsoft.onenote.mac"
cd ~/Library/"Group Containers"
sudo rm "UBF8T346G9.ms"
sudo rm "UBF8T346G9.Office"
sudo rm "UBF8T346G9.OfficeOsfWebHost"