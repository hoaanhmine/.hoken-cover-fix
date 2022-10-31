function onCreate()
    doTweenX('MNX', 'MN', 800, 86, cubeInOut)
    doTweenY('MNY', 'MN', 300, 86, cubeInOut)


--TEXT NAME
makeLuaText('watermark', songName .. " - FNF ( UTAU Cover ) By Hoken :/ ", 0, -0, 5);
addLuaText('watermark');
setProperty('watermark.size', 20);
setProperty('scoreTxt.y',1000 )
setProperty('scoreTxts.size', 20);

    
--HIDE
setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('Timebar.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
setProperty('iconP2.visible', false)
doTweenX('timeBar', 'timeBar', -2000, 0.01, cubeInOut)


end

local bfcamX = 0;
local bfcamY = 0;
local camX = 0;
local camY = 0;
local a = 1


function onUpdate()
    doTweenAlpha('timeTxtT', 'timeTxt', 0.7, 3, 'linear');
    doTweenY('timeTxtY', 'timeTxt', 10, 0.01, cubeInOut)
    doTweenX('timeTxtX', 'timeTxt', 1050, 0.01, cubeInOut)
    setProperty('timeTxtAD.size', 30)


    setProperty('camFollow.x', getProperty('camFollow.x') + bfcamX); 
    setProperty('camFollow.y', getProperty('camFollow.y') + bfcamY);

    setProperty('camFollow.x', getProperty('camFollow.x') + camX); 
    setProperty('camFollow.y', getProperty('camFollow.y') + camY);

    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
        bfcamX = 0;
        bfcamY = 0;
    end
    if getProperty('dad.animation.curAnim.name') == 'idle' then
        camX = 0;
        camY = 0;
    end

    if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
        bfcamX = -a;
        bfcamY = 0;
    end
    if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
        bfcamX = a;
        bfcamY = 0;
    end
    if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
        bfcamY = -a;
        bfcamX = 0;
    end
    if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
        bfcamY = a;
        bfcamX = 0;
    end
    if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
        camX = -a;
        camY = 0;
    end
    if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
        camX = a;
        camY = 0;
    end
    if getProperty('dad.animation.curAnim.name') == 'singUP' then
        camY = -a;
        camX = 0;
    end
    if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
        camY = a;
        camX = 0;
    end

    if getProperty('vg.alpha') == 1 then
        doTweenAlpha('dothetweenvg', 'vg', 0, 0.3, 'quadInOut');
    end

end

function onUpdatePost()
    doTweenY('scoreTxtRR', 'scoreTxt', 670, 2, cubeInOut)
end

