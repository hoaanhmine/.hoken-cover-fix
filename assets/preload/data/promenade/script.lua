
function onCreate()
    makeLuaText('watermark', songName .. " Remaster - FNF ( UTAU Cover ) By Hoken :/ ", 0, -450, 5);
    addLuaText('watermark');
    setProperty('watermark.size', 30);
    doTweenY('healthBar', 'healthBar', -2000, 0.01, cubeInOut)
    doTweenX('timeBar', 'timeBar', -2000, 0.01, cubeInOut)
    scaleObject('timeBar', 3, 1);
    doTweenY('scoreTxtY', 'scoreTxt', 1000, 0.01, cubeInOut)
    doTweenX('scoreTxtX', 'scoreTxt', 0, 0.01, cubeInOut)
    makeLuaSprite('LD', 'Loading',-900, -400);
    setScrollFactor('LD' , 1,1 );
    scaleObject('LD', 1.6, 1.6);
    addLuaSprite('LD', true);
    setProperty('LD.visible', false)
    makeLuaSprite('Sign', 'entity/nikusa/sign', -600, 430);
    setScrollFactor('Sign' , 1,1 );
    scaleObject('Sign', 0.6, 0.6);
    addLuaSprite('Sign', true)
    setProperty('Sign.visible', true)
    setObjectCamera('Sign', 'hud');
end


function onUpdate(elapsed)
    setTextString('scoreTxt', 'Score: '..getProperty('songScore')..' - Misses: '..getProperty('songMisses'))
    setProperty('timeTxt.size', 30)
    doTweenAlpha('timeTxtT', 'timeTxt', 0.7, 0.01, 'linear');
    doTweenY('timeTxtY', 'timeTxt', 10, 0.01, cubeInOut)
    doTweenX('timeTxtX', 'timeTxt', 1050, 0.01, cubeInOut)
    doTweenAlpha('watermarkT', 'watermark', 0.7, 0.01, 'linear');
    doTweenX('watermark', 'watermark', 14, 3, circInOut)
    doTweenAlpha('iconP2', 'iconP2', 0, 0.01, 'linear');
    doTweenAlpha('iconP1', 'iconP1', 0, 0.01, 'linear');
    doTweenY('scoreTxtScY', 'scoreTxt', 670, 3, cubeInOut)
    doTweenAlpha('dadDD', 'gf', 0, 0.01, 'linear');
    doTweenAlpha('WTHSS', 'WTH', 0, 0.3, 'linear');
    
    
    local bfcamX = 0;
    local bfcamY = 0;
    local camX = 0;
    local camY = 0;
    local a = 100

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
    


function onStepHit()

    if curStep == 1 then
        doTweenX('SignS', 'Sign', 0, 1, linear)
    end


end