local pref = {
    style ='classicIcons', --classicTxt, --classicIcons, --modern, --cherry

    antialiasingLol = true, --antialiasing for text things
    hudMiss = false, --purple miss animation for some hud stuff
    HBoverlay = true, --health bar overlay
    botplHideInfo = true, --when you use botplay, it hide info
    infoBop = false, --"score text zoom on hit", but with new info
    
    extraInfo = false, --show your sicks, goods, bads and etc.
    songName = true, --display song name
    timer = true, --display timer
    iconPoz = true, --icons not moving and on corners of health bar
    funkyArrow = false, --arrow, that point where your hp (helpful with "iconPoz" pref) (highly recomended with 'cherry' style)
    
    hpBye = false, --when hp is full, hide health bar
    timeBarr = false, --vanilla time bar (not a timer)
    hideInfo = false, --hide info at all

    wowCFont = vcr, --enable custom font
    cFont = 'PhantomMuff.ttf' --put in mods/fonts
}
-- bottom text --

-- funni code stuff coming (no touchies)
local hudStuff = {'scoreTxt', 'timeTxt', 'timeBar', 'timeBarBG', 'healthBarOverlay'}





function onUpdate(elapsed)
    setTextString('healthText', 'Health: ' .. math.floor(getProperty("health") * 50))
    setTextAlignment('botplayTxt', 'left')
    setTextAlignment('scoreTxt', 'left')
    setProperty('botplayTxt.x', 60);
    setProperty('scoreTxt.y', 30);
    setProperty('scoreTxt.x', 10);

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F1') then
        setProperty('scoreTxt.visible', true)
    end

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F2') then
        setProperty('scoreTxt.visible', false)
        setProperty('timer.visible', false)
        setProperty('watermark.visible', false)
    end

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F3') then
        setProperty('timer.visible', true)
        setProperty('watermark.visible', true)
    end

end

function switchStyle() --styles stuff


    addLuaText('rating'); addLuaText('misses'); addLuaText('score')
end

function songBruh() --song name
    if pref.style == 'classicTxt' or 'classicIcons' then
        makeLuaText('watermark', songName .. " - FNF ( UTAU Cover ) By Hoken :/ ", 0 , 5, downscroll and 0 or 680);
        addLuaText('watermark');
        setTextAlignment('watermark', 'left'); setTextSize('watermark', 23)


        makeLuaText('How', "F1 = Open Score   ,   F2 Close All Ui   ,   F3 Open Time", 0 , -200 , 100);
        addLuaText('How');
        setTextAlignment('How', 'center'); setTextSize('How', 23)
        setObjectCamera('How','other')
        doTweenX('HowX', 'How', 0, 1, cubeInOut)

        makeLuaText('healthText', 'Health: ' .. math.floor(getProperty("health") * 50), 300, screenWidth / 2 - 300 / 2, screenHeight / 2 - 300 / 1.5)
        addLuaText('healthText')
        setTextSize('healthText', 30);
        doTweenY('healthTextY', 'healthText', 650, 0.01, cubeInOut)
    end

    addLuaText('song')
end

function onStepHit()

    if curStep == 50 then
        doTweenX('HowX', 'How', -1000, 1, cubeInOut)
    end
end


function timerBruh() --timer
    if pref.style == 'classicTxt' or 'classicIcons' then
        makeLuaText('timer', '', 500, 770, downscroll and 5 or 678)
        setObjectCamera('timer', 'hud'); setTextAlignment('timer', 'right'); setTextSize('timer', 20)
    end

    addLuaText('timer')
end



function onCreatePost()
    for i = 1, 5 do setProperty(hudStuff[i] ..'.visible', false) end --this thing hide vanilla stuff

    switchStyle() --the thing that makes hud exist

    --preferences 1
    if pref.songName == true then songBruh() end
    if pref.timer == true then timerBruh() end
    if pref.HBoverlay == true then HBoverlayBruh() end
    if pref.timeBarr == true then timeBarBruh() end
    if pref.hideInfo == true then hideInfoBruh() end
end

function onUpdatePost()
    --make timer work (big thanks for SameTheta)
    local timeElapsed = math.floor(getProperty('songTime')/1000)
    local timeTotal = math.floor(getProperty('songLength')/1000)
    local timeElapsedFixed = string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60)
    local timeTotalFixed = string.format("%.2d:%.2d", timeTotal/60%60, timeTotal%60)
    setTextString('timer', timeElapsedFixed .. '/' .. timeTotalFixed)

    --preferences 2
    if pref.iconPoz == true then iconsBruh() end
    if pref.iconPoz == false and pref.style == 'cherry' then cherryIconsBruh() end
    if pref.botplHideInfo == true then botplayHideBruh() end



end

