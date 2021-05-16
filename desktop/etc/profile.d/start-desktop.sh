#!/bin/sh
if [[ $USER == "human" ]]
then
	xwin > /tmp/start-desktop.log 2>&1
fi
