
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
    makeLuaSprite('Sign', 'h24/thunderstorm/Sign', -600, 430);
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
    doTweenY('Ukiyo', 'Ukiyo', 200, 1, 'linear')
    doTweenAngle('UkiyoX', 'Ukiyo', 720, 1.1 , 'linear')
    doTweenY('scoreTxtScY', 'scoreTxt', 670, 3, cubeInOut)

    doTweenAlpha('WTHSS', 'WTH', 0, 0.3, 'linear');

    local bfcamX = 0;
    local bfcamY = 0;
    local camX = 0;
    local camY = 0;
    local a = 5


    
    function onUpdate()


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

end

----Boss X Y 250, 500

function onStepHit()

    if curStep == 1 then
        doTweenAlpha('gfJDD', 'gf', 0.6, 0.2, 'linear');
        doTweenX('SignS', 'Sign', 0, 1, linear)
    end

    if curStep == 60 then
        doTweenX('SignX', 'Sign', -600, 4, linear)
    end

    if curStep == 85 then
        doTweenX('dadX', 'dad', 250, 0.2, cubeInOut)
    end

    if curStep == 128 then
        doTweenAlpha('gfjgf', 'gf', 0, 0.5, 'linear');
    end

    
    if curStep == 820 then
        setProperty('WTH.visible', true)
        
    end


    if curStep == 824 then
        doTweenAlpha('WTHSS', 'WTH', 1, 0.3, 'linear');
        doTweenAlpha('Dad2Fade', 'Dad2', 0, 0.3, 'linear');
        doTweenAlpha('DadFade', 'dad', 0, 0.3, 'linear');
        doTweenAlpha('gfFade', 'gf', 1, 0.3, 'linear');
        doTweenColor('BFColor', 'boyfriend', '000000', 0.3, 'quadIn');
        doTweenColor('GFColor', 'gf', '000000', 0.3, 'quadIn');
        doTweenAlpha('CAFade', 'CA', 0, 0.3, 'linear');
        doTweenAlpha('LGDFade', 'LGD', 0, 0.3, 'linear');
        doTweenY('bartopYX', 'bartop.scale', 5, 19, 'backIn')
        doTweenY('barbotYX', 'barbot.scale', 5, 19, 'backIn')

    end


    if curStep == 1050 then
        doTweenAlpha('DadFade', 'dad', 1, 0.01, 'linear');
        doTweenAlpha('gfJDD', 'gf', 0, 0.01, 'linear');
    end

    if curStep == 1088 then

        doTweenY('bartopYX', 'bartop.scale', 1, 1, 'backIn')
        doTweenY('barbotYX', 'barbot.scale', 1, 1, 'backIn')
        doTweenAlpha('WTHSS', 'WTH', 0, 0.3, 'linear');
        doTweenAlpha('Dad2Fade', 'Dad2', 1, 0.3, 'linear');
        doTweenColor('BFColor', 'boyfriend', 'FFFFFF', 0.3, 'quadIn');
        doTweenAlpha('CAFade', 'CA', 1, 0.3, 'linear');
        doTweenAlpha('LGDFade', 'LGD', 1, 0.3, 'linear');
    end

    if curStep == 2170 then
        doTweenColor('DADColor', 'dad', '000000', 0.01, 'quadIn');
        setProperty('WTH.visible', true)
    end

    if curStep == 2173 then
        doTweenX('dadX', 'dad', 250, 0.3, cubeInOut)
    end

    if curStep == 2176 then
        doTweenAlpha('WTHSZS', 'WTH', 1, 0.3, 'linear');
        doTweenAlpha('Dad2Fade', 'Dad2', 0, 0.3, 'linear');
        doTweenAlpha('DadFade', 'dad', 0, 0.3, 'linear');
        doTweenAlpha('gfFade', 'gf', 1, 0.3, 'linear');
        doTweenColor('BFColor', 'boyfriend', '000000', 0.3, 'quadIn');
        doTweenColor('GFColor', 'gf', '000000', 0.3, 'quadIn');
        doTweenAlpha('CAFade', 'CA', 0, 0.3, 'linear');
        doTweenAlpha('LGDFade', 'LGD', 0, 0.3, 'linear');
        doTweenY('bartopYX', 'bartop.scale', 3, 19, 'backIn')
        doTweenY('barbotYX', 'barbot.scale', 3, 19, 'backIn')
    end

    if curStep == 2336 then
        doTweenAngle('boyfriendANGLE', 'boyfriend', 360, 6, 'quadInOut')
    end


    if curStep == 2344 then
        doTweenAlpha('DadQ', 'dad', 1, 0.3, 'linear');
        doTweenAlpha('gfJDD', 'gf', 0, 0.01, 'linear');
    end

    if curStep == 2388 then
        triggerEvent('Set Cam Zoom', '1', '0.3' )
    end

    if curStep == 2404 then
        triggerEvent('Set Cam Zoom', '0.78', '0.3' )
    end


    if curStep == 2560 then
        doTweenY('bartopYX', 'bartop.scale', 1, 1, 'backIn')
        doTweenY('barbotYX', 'barbot.scale', 1, 1, 'backIn')
        doTweenAlpha('WTHSS', 'WTH', 0, 2.5, 'linear');
        doTweenAlpha('Dad2Fade', 'Dad2', 1, 2.5, 'linear');
        doTweenColor('BFColor', 'boyfriend', 'FFFFFF', 2.5, 'quadIn');
        doTweenColor('dadColor', 'dad', 'FFFFFF', 2.5, 'quadIn');
        doTweenAlpha('CAFade', 'CA', 1, 2.5, 'linear');
        doTweenAlpha('LGDFade', 'LGD', 1, 2.5, 'linear');
    end



end