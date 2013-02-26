#!/bin/bash

wget -O /tmp/cute-kitten1.jpg https://raw.github.com/kozze89/CuteKitten/master/cute-kitten1.jpg > /dev/null 2>&1
wget -O /tmp/cute-kitten2.jpg https://raw.github.com/kozze89/CuteKitten/master/cute-kitten2.jpg > /dev/null 2>&1
wget -O /tmp/cute-kitten3.jpg https://raw.github.com/kozze89/CuteKitten/master/cute-kitten3.jpg > /dev/null 2>&1
wget -O /tmp/cute-kitten4.jpg https://raw.github.com/kozze89/CuteKitten/master/cute-kitten4.jpg > /dev/null 2>&1
wget -O /tmp/cute-kitten5.jpg https://raw.github.com/kozze89/CuteKitten/master/cute-kitten5.jpg > /dev/null 2>&1

function setBg
{
	osascript -e 'set desktopImage to POSIX file "/tmp/cute-kitten'${1}'.jpg"' -e 'tell application "Finder"' -e 'set desktop picture to desktopImage' -e 'end tell'
}

while true; do 
	for i in {1..5}; do
		setBg $i
		sleep 1
	done
done
