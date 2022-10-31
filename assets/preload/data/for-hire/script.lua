


function onCreate()
    makeLuaText('watermark', songName .. " - FNF ( UTAU Cover ) By Hoken :/ ", 0, -0, 5);
    addLuaText('watermark');
    setProperty('watermark.size', 20);
    setProperty('healthBarBG.visible', false)
    setProperty('healthBar.visible', false)
    setProperty('Timebar.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('iconP1.visible', false)
    setProperty('iconP2.visible', false)
    doTweenY('scoreTxtY', 'scoreTxt', 1000, 0.01, cubeInOut)
    doTweenX('scoreTxtX', 'scoreTxt', 0, 0.01, cubeInOut)
    makeLuaSprite('LD', 'Loading',-900, -400);
    setScrollFactor('LD' , 1,1 );
    scaleObject('LD', 1.6, 1.6);
    addLuaSprite('LD', true);
    setProperty('LD.visible', false)
    makeLuaSprite('LD', 'Loading',-900, -400);
    setScrollFactor('LD' , 1,1 );
    scaleObject('LD', 1.6, 1.6);
    addLuaSprite('LD', true);
    setProperty('LD.visible', false)
    makeLuaSprite('FH', 'Forhire/Forhire',110, 900);
    setScrollFactor('FH' , 1,1 );
    scaleObject('FH', 0.6, 0.6);
    addLuaSprite('FH', true);

end

function onUpdatePost()
  setObjectCamera('FH', 'hud');
  setObjectCamera('LD', 'hud');
  setProperty('LD.visible', true)
  doTweenY('FHY', 'FH', 100, 0.2, cubeInOut)
  setProperty('FH.antialiasing',false)
  setProperty('DF.visible', false)
end




local turnvalue = 20

function onBeatHit()

turnvalue = 20
setProperty('botplayTxt.angle',-turnvalue)

doTweenAngle('botplayTxtangle','botplayTxt',0,crochet/600,'circOut')

end


function onStepHit()
    if curStep == 1 then
      doTweenY('scoreTxtScY', 'scoreTxt', 670, 2, cubeInOut)
    end

    if curStep == 3 then
      doTweenY('FHYY', 'FH', 900, 0.2, cubeInOut)
      doTweenAlpha('LDA', 'LD', 0, 0.5, 'linear');
    end

    if curStep == 4 then
      removeLuaSprite('FH');
    end

    if curStep == 16 then
      triggerEvent('Set Cam Zoom', '0.7', '1' )
      removeLuaSprite('LD');
    end

    if curStep == 152 then
      triggerEvent('Set Cam Zoom', '0.7', '1' )
    end

    if curStep == 396 then
      triggerEvent('Set Cam Zoom', '0.5', '1' )
    end

    if curStep == 528 then
      triggerEvent('Set Cam Zoom', '0.7', '1' )
    end

    if curStep == 784 then
      triggerEvent('Set Cam Zoom', '0.5', '1' )
    end

    if curStep == 848 then
      triggerEvent('Set Cam Zoom', '1', '7' )
    end
    
end
