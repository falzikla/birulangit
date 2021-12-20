#!/bin/bash
systemctl --user stop greenclip.service
sleep 0.5
xsel -bc
sleep 0.5
greenclip clear
sleep 2
systemctl --user start greenclip.service
dunstify -a "Greenclip" -u normal "Clipboard cleared"
