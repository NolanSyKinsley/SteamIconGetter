# SteamIconGetter
I have a script that creates an openbox pipe menu and populates it with all your downloaded games but Steam under linux utterly fails in getting icons for most games as shown here:

![alt tag](http://i.imgur.com/CjSmXEU.png)

This is a simple steam Icon getter to go with the Obmenu-SteamPopulator script, it will check what games you have downloaded, then use the web API to check your profile and grab the 32x32 pixel icons for each game and place them in the appropriate directory.

Requires steamcmd to be installed. https://developer.valvesoftware.com/wiki/SteamCMD
(was available in my distro's repo, I suggest you check there first.)

This script only needs to be ran once, or whenever you download new games and need to grab new icons.

Your end result should look something like this:

![alt tag](http://i.imgur.com/UzJFl0P.png)

The companion script can be found here: https://github.com/NolanSyKinsley/Obmenu-SteamPopulator
