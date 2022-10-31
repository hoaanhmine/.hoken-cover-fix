local pref = {
    style ='Classic',
    HBoverlay = true,
    botplHideInfo = true,
    songName = true,
    timer = true,
    iconPoz = true,
    timeBarr = false,
    hideInfo = false,
}
local hudStuff = {'scoreTxt', 'timeTxt', 'timeBar', 'timeBarBG', 'healthBarOverlay'}

local HDO = 0.015 ---- health draining mechanic

function onCreate()

    makeLuaSprite('bartop','',0,-60)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',true)
    scaleObject('bartop',1,1.5 );
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)
    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud') 
    scaleObject('barbot',1,1.5 );


    
end

function opponentNoteHit() -- health draining mechanic
	health = getProperty('health')
    	if getProperty('health') > 0.1 then
        setProperty('health', health- HDO);
        end


end


function onUpdate(elapsed)
    setTextString('healthText', 'Health: ' .. math.floor(getProperty("health") * 50))
    setTextAlignment('botplayTxt', 'left')
    setTextAlignment('scoreTxt', 'left')
    setProperty('botplayTxt.x', 60);
    setProperty('scoreTxt.y', 655);
    setProperty('healthText.y', 70);
    setProperty('scoreTxt.x', 5);





    if getPropertyFromClass('ClientPrefs', 'UpScroll') then --UpScroll
        setProperty('botplayTxt.y', 10);
        setProperty('botplayTxt.x', 15);
    end

    if getPropertyFromClass('ClientPrefs', 'downScroll') then --Downscroll
        setProperty('scoreTxt.y', 30);
        setProperty('botplayTxt.y', 650);
        setProperty('healthText.y', 650);
    end

    if getPropertyFromClass('ClientPrefs', 'middleScroll') then --middleScroll
		setPropertyFromClass('Conductor', 'songPosition',currentpausepos)
		setPropertyFromClass('flixel.FlxG', 'sound.music.time',currentpausepos)
		setProperty('vocals.time',currentpausepos)
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
        makeLuaText('MiddleStop', "Please uncheck Middle Scroll In Options", 0 , 40 , 300);
        addLuaText('MiddleStop');
        setTextAlignment('MiddleStop', 'center'); setTextSize('How', 23)
        setObjectCamera('MiddleStop','other')
        setTextSize('MiddleStop', 40);
        makeLuaSprite('BLACK2', 'black2', -1000, 0);
        setScrollFactor('BLACK2' , 1,1 );
        scaleObject('BLACK2', 1.8, 1.8);
        addLuaSprite('BLACK2', false)  
        makeGraphic('BLACK2',1280,720,'000000')
        setObjectCamera('BLACK2', 'other');
        doTweenAlpha('BLACKHIDE2', 'BLACK2', 0.3, 0.01, 'linear')
        setProperty('How1.visible', false)
        setProperty('How2.visible', false)
    end

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F1') then
        setProperty('scoreTxt.visible', true)
        setProperty('healthText.visible', true)
        setProperty('timer.visible', true)
        setProperty('watermark.visible', true)
    end

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F2') then
        setProperty('scoreTxt.visible', false)
        setProperty('timer.visible', false)
        setProperty('watermark.visible', false)
        setProperty('healthText.visible', false)
    end

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') then
		characterPlayAnim('boyfriend', 'dodge', true);
    end

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SHIFT') then
		characterPlayAnim('boyfriend', 'attack', true);
    end
    
end

function switchStyle() --styles stuff


    addLuaText('rating'); addLuaText('misses'); addLuaText('score')
end

function songBruh() --song name
    if pref.style == 'classicTxt' or 'Classic' then
        makeLuaText('watermark', songName .. " - FNF ( UTAU Cover ) By Hoken :/ ", 0 , 5, downscroll and 0 or 680);
        addLuaText('watermark');
        setTextAlignment('watermark', 'left'); setTextSize('watermark', 23)
        setProperty('scoreTxt.visible', true)

        makeLuaSprite('BLACK', 'black', -1000, 0);
        setScrollFactor('BLACK' , 1,1 );
        scaleObject('BLACK', 1.8, 1.8);
        addLuaSprite('BLACK', false)  
        makeGraphic('BLACK',2000,2000,'FFFFFF')
        doTweenAlpha('BLACKHIDE', 'BLACK', 0, 0.01, 'linear')
        setObjectCamera('BLACK', 'game');  

        makeLuaSprite('1Black1', 'Effect/Black', -200, 0);
        setScrollFactor('1Black1' , 0,0);
        scaleObject('1Black1', 2,2);
        addLuaSprite('1Black1', true)  
        setObjectCamera('1Black1', 'other');  
        setProperty('1Black1.visible', false)

        makeLuaText('How1', "F1 = Open Score   ,   F2 Close All Ui ", 0 , -1000 , 100);
        addLuaText('How1');
        setTextAlignment('How1', 'center'); setTextSize('How', 23)
        setObjectCamera('How1','other')
        doTweenX('HowX', 'How1', 10, 1, cubeInOut)
        setTextSize('How1', 20);



        makeLuaText('healthText', 'Health: ' .. math.floor(getProperty("health") * 50), 300, screenWidth / 2 - 300 / 2, screenHeight / 2 - 300 / 1.5)
        addLuaText('healthText')
        setTextSize('healthText', 30);
        doTweenY('healthTextY', 'healthText', 650, 0.01, cubeInOut)
    end

    addLuaText('song')
end

function onStepHit()

    if curStep == 50 then
        doTweenX('HowX', 'How1', -1000, 1, cubeInOut)
        doTweenAlpha('How1Fade', 'How1', 0, 1, 'linear');
    end
end


function timerBruh() --timer
    if pref.style == 'classicTxt' or 'Classic' then
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

