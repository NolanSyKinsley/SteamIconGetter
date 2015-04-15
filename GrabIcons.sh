#!/bin/bash

STEAMID=
STEAMAPPS=~/.steam/steam/steamapps/
ICONS=~/.local/share/icons/hicolor/32x32/apps/
KEY=

for file in $(ls $STEAMAPPS/*.acf -1v); do
    ID=$(cat "$file" | grep '"appid"' | head -1 | sed -r 's/[^"]*"appid"[^"]*"([^"]*)"/\1/')
    ICONHASH=$(curl "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=$KEY&steamid=$STEAMID&include_appinfo=1&format=json" | jq '.response.games[] | select(.appid == '$ID') | .img_icon_url' | sed 's/^"\(.*\)"$/\1/') 
wget http://media.steampowered.com/steamcommunity/public/images/apps/$ID/$ICONHASH.jpg -O $ICONS/steam_icon_$ID.png
done
