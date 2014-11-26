#!/usr/bin/env osascript

tell application "System Events"
    tell current location of network preferences
        set VPNservice to service "Kemeny" -- name of the VPN service
        disconnect VPNservice
    end tell
end tell
