#!/bin/bash

wget -O /tmp/cute-kitten1.jpg http://kittens.nerdwa.com/cute-kitten1.jpg > /dev/null 2>&1
wget -O /tmp/cute-kitten2.jpg http://kittens.nerdwa.com/cute-kitten2.jpg > /dev/null 2>&1
wget -O /tmp/cute-kitten3.jpg http://kittens.nerdwa.com/cute-kitten3.jpg > /dev/null 2>&1
wget -O /tmp/cute-kitten4.jpg http://kittens.nerdwa.com/cute-kitten4.jpg > /dev/null 2>&1
wget -O /tmp/cute-kitten5.jpg http://kittens.nerdwa.com/cute-kitten5.jpg > /dev/null 2>&1

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
