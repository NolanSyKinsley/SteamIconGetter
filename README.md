# SteamIconGetter
I have a script that creats an openbox pipe menu and populates it with all your downloaded games but Steam under linux utterly fails in getting icons for most games.

This is a simple steam Icon grabber to go with the companion script, it will check what games you have downloaded, then use the web API to check your profile and grab the 32x32 pixel icons for each game and place them in the appropriate directory.

You will need to enter your Steam 64 ID and also get your own Web API Key and enter it as well(remember to keep your web API key private). Why do you need your Steam 64 ID? Steam's web API is incomplete and you can only get the icons/banners for a game by accessing someone's profile who owns the game.


This script only needs to be ran once, or whenever you download new games and need to grab new icons.

Your end result should look something like this:

![alt tag](http://i.imgur.com/UzJFl0P.png)

The companion script can be found here: https://github.com/NolanSyKinsley/Obmenu-SteamPopulator
