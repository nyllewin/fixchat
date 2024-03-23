local fxuf = CreateFrame("Frame", "whyarewefixingthisgamewhenalltheydoisoutsourcedevworktoindiaorwhatevertheheck")
--uf:RegisterEvent("ZONE_CHANGED")
fxuf:RegisterEvent("PLAYER_ENTERING_WORLD")
fxuf:RegisterEvent("PLAYER_LOGIN")

-- yes this is a global function so it can be called whenever whereever if needed
function FIxchat() -- 1,2(combatlog),4,5,6 / idk where 3 went
    local charname = select(1,UnitName("player"))

    --debug dn
    for i=1,NUM_CHAT_WINDOWS do
       _G['ChatFrame'..i]:AddMessage('ChatFrame'..i)
    end

    -- set this up for yourself im not gonna bother with UI
    -- add if statements like this where the charname is the charname you want to run it for and get.. 4hed ..
    -- the ChatFrameX from either logging in or calling the function like this /run FUckblizzard() in your chat

    -- ChatFrame_RemoveChannel removes a channel from being visible for that frame,..
    -- it does NOT leave the channel so you can always toggle them back manually via default UI or idk in here or whatev
    -- to make this halfway friendly for ppl who have never done this:
    -- this is the start of setup for 1 character, just change the name to your chars name and..
    -- get the ChatFrameX from your game client chat window.
    -- to add this for a second character just copy this statement until the end and paste after the end...
    -- attention: maybe ChatFrame4 on your previous char is not ChatFrame4 on your new one so double check and adjust.

    if charname == 'Beledelphine' then

        ChatFrame_RemoveChannel(ChatFrame1, "Services");
        ChatFrame_RemoveChannel(ChatFrame1, "Trade");

        ChatFrame_RemoveChannel(ChatFrame2, "Services");
        ChatFrame_RemoveChannel(ChatFrame2, "General");
        ChatFrame_RemoveChannel(ChatFrame2, "Trade");
        ChatFrame_RemoveChannel(ChatFrame2, "LookingForGroup");
        ChatFrame_RemoveChannel(ChatFrame2, "LocalDefense");

        ChatFrame_RemoveChannel(ChatFrame5, "Services");
        ChatFrame_RemoveChannel(ChatFrame5, "General");
        --ChatFrame_RemoveChannel(ChatFrame5, "Trade");
        ChatFrame_RemoveChannel(ChatFrame5, "LookingForGroup");
        ChatFrame_RemoveChannel(ChatFrame5, "LocalDefense");

        ChatFrame_RemoveChannel(ChatFrame4, "Services");
        ChatFrame_RemoveChannel(ChatFrame4, "General");
        ChatFrame_RemoveChannel(ChatFrame4, "Trade");
        ChatFrame_RemoveChannel(ChatFrame4, "LookingForGroup");
        ChatFrame_RemoveChannel(ChatFrame4, "LocalDefense");

        ChatFrame_RemoveChannel(ChatFrame6, "Services");
        ChatFrame_RemoveChannel(ChatFrame6, "General");
        ChatFrame_RemoveChannel(ChatFrame6, "Trade");
        --ChatFrame_RemoveChannel(ChatFrame6, "LookingForGroup");
        ChatFrame_RemoveChannel(ChatFrame6, "LocalDefense");

    end -- this is the end of setup for 1 character, copy all of this and paste after in a new line below

end

fxuf:SetScript("OnEvent", FIxchat)