#!/bin/bash
sudo /usr/bin/dscl . -passwd /Users/InsertUserNameToChangeHere $OLD_PASSWORD $NEW_PASSWORD
sudo security set-keychain-password -o $OLD_PASSWORD -p $NEW_PASSWORD /Users/username/Library/Keychains/login.keychain
sudo rm ~/.bash_history