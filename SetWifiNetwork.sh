#!/bin/bash
networksetup -setairportnetwork $INTERFACE en0 $SSID 'InsertSsidOfYourNetworkHere' $PASSWORD 'EnterPasswordHere'
networksetup -setairportnetwork $INTERFACE en1 $SSID 'InsertSsidOfYourNetworkHere' $PASSWORD 'EnterPasswordHere'