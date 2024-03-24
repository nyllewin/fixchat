wow addon to fix blizzards latest dumpsterfire patch, blunderstorm.

make sure to read the comments in fixchat.lua as this does require manual setup but avoids everything that could taint ui or cause bugs.

I'm just gonna put them here aswell I guess.

    -- set this up for yourself im not gonna bother with UI
    -- add if statements like this where the charname is the charname you want to run it for and get.. 4hed ..
    -- the ChatFrameX from either logging in or calling the function like this /fixchat in your chat

    -- ChatFrame_RemoveChannel removes a channel from being visible for that frame,..
    -- it does NOT leave the channel so you can always toggle them back manually via default UI or idk in here or whatev
    -- to make this halfway friendly for ppl who have never done this:
    -- this is the start of setup for 1 character, just change the name to your chars name and..
    -- get the ChatFrameX from your game client chat window.
    -- to add this for a second character just copy this statement until the end and paste after the end...
    -- attention: maybe ChatFrame4 on your previous char is not ChatFrame4 on your new one so double check and adjust.