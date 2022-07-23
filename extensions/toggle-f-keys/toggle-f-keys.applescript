#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle F Keys
# @raycast.mode silent

# Optional parameters:
# @raycast.icon icon.png

# Documentation:
# @raycast.description This extension will toggle the use of function keys 
# @raycast.author joshmillgate
# @raycast.authorURL https://twitter.com/joshmillgate

tell application "System Preferences"
	reveal anchor "keyboardTab" of pane "com.apple.preference.keyboard"
end tell
tell application "System Events" to tell window "Keyboard" of process "System Preferences"
	repeat until checkbox 3 of tab group 1 exists
		delay 0.11
	end repeat
	tell its tab group 1
		click checkbox 3
	end tell
end tell

log "F keys toggled!"
