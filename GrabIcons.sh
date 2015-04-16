#!/bin/bash

STEAMAPPS=~/.steam/steam/steamapps/
ICONS=~/.local/share/icons/hicolor/32x32/apps/

for file in $(ls $STEAMAPPS/*.acf -1v); do
    ID=$(cat "$file" | grep -w -m 1 "appid" | sed -r 's/[^"]*"appid"[^"]*"([^"]*)"/\1/')
    ICONHASH=$(steamcmd  +app_info_print $ID +exit | grep -w -m 1 "icon" | sed -r 's/[^"]*"icon"[^"]*"([^"]*)"/\1/') 
wget http://media.steampowered.com/steamcommunity/public/images/apps/$ID/$ICONHASH.jpg -O $ICONS/steam_icon_$ID.png
done
