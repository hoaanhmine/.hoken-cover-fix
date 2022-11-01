local xx = 940;
local yy = 400;

function onCreate()
  makeLuaText('watermark', songName .. " Remaster - FNF ( UTAU Cover ) By Hoken :/ ", 0, -450, 5);
  addLuaText('watermark');
  setProperty('watermark.size', 30);
  doTweenY('healthBar', 'healthBar', -2000, 0.01, cubeInOut)
  doTweenX('timeBar', 'timeBar', -2000, 0.01, cubeInOut)
  scaleObject('timeBar', 3, 1);
  doTweenY('scoreTxtY', 'scoreTxt', 1000, 0.01, cubeInOut)
  doTweenX('scoreTxtX', 'scoreTxt', 0, 0.01, cubeInOut)
  makeLuaSprite('shadow', 'shadow', -600, -300);
	setScrollFactor('shadow' , 1,1 );
	scaleObject('shadow', 2.1, 2.1);
	addLuaSprite('shadow', true)
  makeLuaSprite('LD', 'Loading',-900, -400);
  setScrollFactor('LD' , 1,1 );
  scaleObject('LD', 1.6, 1.6);
  addLuaSprite('LD', true);
  setProperty('LD.visible', false)
  makeLuaSprite('Ukiyo', 'weekcg/Ukiyo', 350, 2000);
	setScrollFactor('Ukiyo' , 1,1 );
	scaleObject('Ukiyo', 0.6, 0.6);
	addLuaSprite('Ukiyo', true)
  setProperty('Ukiyo.visible', false)
end  


  function onUpdatePost()
    setTextString('scoreTxt', 'Score: '..getProperty('songScore')..' - Misses: '..getProperty('songMisses'))
    setProperty('timeTxt.size', 30)
    doTweenAlpha('timeTxtT', 'timeTxt', 0.7, 0.01, 'linear');
    doTweenY('timeTxtY', 'timeTxt', 10, 0.01, cubeInOut)
    doTweenX('timeTxtX', 'timeTxt', 1050, 0.01, cubeInOut)
    doTweenAlpha('watermarkT', 'watermark', 0.7, 0.01, 'linear');
    doTweenX('watermark', 'watermark', 14, 3, circInOut)
    doTweenAlpha('iconP2', 'iconP2', 0, 0.01, 'linear');
    doTweenAlpha('iconP1', 'iconP1', 0, 0.01, 'linear');
    setObjectCamera('LD', 'hud');
    setObjectCamera('Ukiyo', 'hud');
    setProperty('Ukiyo.visible', true)
    setProperty('LD.visible', true)
    doTweenY('Ukiyo', 'Ukiyo', 200, 1, 'linear')
    doTweenAngle('UkiyoX', 'Ukiyo', 720, 1.1 , 'linear')
  end


function onStepHit()

  if curStep == 1 then
    noteTweenAlpha("NoteAlpha0" , 0 , 0, 0.01, cubeInOut)
    noteTweenAlpha("NoteAlpha1" , 1 , 0, 0.01, cubeInOut)
    noteTweenAlpha("NoteAlpha2" , 2 , 0, 0.01, cubeInOut)
    noteTweenAlpha("NoteAlpha3" , 3 , 0, 0.01, cubeInOut)
    noteTweenAlpha("NoteAlpha4" , 4 , 0, 0.01, cubeInOut)
    noteTweenAlpha("NoteAlpha5" , 5 , 0, 0.01, cubeInOut)
    noteTweenAlpha("NoteAlpha6" , 6 , 0, 0.01, cubeInOut)
    noteTweenAlpha("NoteAlpha7" , 7 , 0, 0.01, cubeInOut)
    doTweenAlpha('dad', 'dad', 0, 0.01, 'linear');
    doTweenAlpha('boyfriendHH', 'boyfriend', 0, 0.01, 'linear');
    doTweenX('dad', 'dad', -2000, 0.01, cubeInOut)
    doTweenAlpha('LD', 'LD', 1, 0.15, 'linear');
    doTweenY('scoreTxtScY', 'scoreTxt', 670, 3, cubeInOut)
  end



  if curStep == 20 then
    doTweenX('dad', 'dad', 320, 0.4, cubeInOut)
    doTweenAlpha('boyfriendWr', 'boyfriend', 1, 0.01, 'linear');
    doTweenX('boyfriend', 'boyfriend', 1068, 0.5, cubeInOut)
  end


  if curStep == 30 then
    
    doTweenAlpha('LD', 'LD', 0, 0.2, 'linear')
    doTweenX('UkiyoTweenX', 'Ukiyo.scale', 0.01, 1, 'backIn')
    doTweenY('UkiyoTweenY', 'Ukiyo.scale', 0.01, 1, 'backIn')
    doTweenAlpha('UkiyoTs', 'Ukiyo', 0, 3, 'linear');
  end

  if curStep == 65 then
    noteTweenAlpha("NoteAlpha0" , 0 , 0.5, 0.3, cubeInOut)
    noteTweenAlpha("NoteAlpha1" , 1 , 0.5, 0.3, cubeInOut)
    noteTweenAlpha("NoteAlpha2" , 2 , 0.5, 0.3, cubeInOut)
    noteTweenAlpha("NoteAlpha3" , 3 , 0.5, 0.3, cubeInOut)
    doTweenAlpha('dad', 'dad', 0, 0.01, 'linear')
    doTweenX('dad', 'dad', 320, 0.4, cubeInOut)
    triggerEvent('Set Cam Zoom', '0.8', '0.4' )

  end

  if curStep == 118 then
    triggerEvent('Set Cam Zoom', '1.2', '1' )
  end


  if curStep == 124 then
    noteTweenAlpha("NoteAlpha4" , 4 , 0.5, 0.2, cubeInOut)
    noteTweenAlpha("NoteAlpha5" , 5 , 0.5, 0.2, cubeInOut)
    noteTweenAlpha("NoteAlpha6" , 6 , 0.5, 0.2, cubeInOut)
    noteTweenAlpha("NoteAlpha7" , 7 , 0.5, 0.2, cubeInOut)
  end


  if curStep == 130 then
    triggerEvent('Set Cam Zoom', '0.8', '0.4' )
  end

  if curStep == 144 then
    doTweenAngle('screenTilt', 'camGame', 15, 1, 'quadInOut')
  end

  if curStep == 160 then
    doTweenAngle('screenTilt', 'camGame', 0, 1, 'quadInOut')
  end

  if curStep == 170 then
    triggerEvent('Set Cam Zoom', '1.2', '1' )
  end

  if curStep == 182 then
    triggerEvent('Set Cam Zoom', '0.8', '1' )
  end

  if curStep == 198 then
    triggerEvent('Set Cam Zoom', '0.9', '1' )
  end

  if curStep == 206 then
    triggerEvent('Set Cam Zoom', '1', '1' )
  end

  if curStep == 214 then
    triggerEvent('Set Cam Zoom', '1.1', '1' )
  end

  if curStep == 222 then
    triggerEvent('Set Cam Zoom', '1.2', '1' )
  end

  if curStep == 239 then
    triggerEvent('Set Cam Zoom', '0.8', '1' )
    doTweenAngle('screenTilt', 'camGame', -30, 1, 'quadInOut')

  end

  if curStep == 256 then
    triggerEvent('Set Cam Zoom', '1.2', '1' )
    doTweenAngle('screenTilt', 'camGame', 30, 10, 'quadInOut')

  end

  if curStep == 323 then
    triggerEvent('Set Cam Zoom', '1.2', '1' )
    doTweenAngle('screenTilt', 'camGame', 0, 3, 'quadInOut')
  end

  if curStep == 330 then
    triggerEvent('Set Cam Zoom', '1.2', '8' )
  end

  if curStep == 387 then
    triggerEvent('Set Cam Zoom', '0.8', '10' )
  end

  if curStep == 449 then
    doTweenAngle('screenTilt', 'camGame', 49, 10, 'quadInOut')
  end

  if curStep == 514 then
    doTweenAngle('screenTilt', 'camGame', 0, 10, 'quadInOut')
  end

  if curStep == 574 then
    triggerEvent('Set Cam Zoom', '1.2', '10' )
  end

  if curStep == 640 then
    triggerEvent('Set Cam Zoom', '0.8', '7' )
  end

  if curStep == 695 then
    triggerEvent('Set Cam Zoom', '6', '1.5' )
    doTweenAngle('screenTilt', 'camGame', 1080, 1.6, 'quadInOut')
    
    doTweenAlpha('dad', 'dad', 0, 0.3, 'linear');
    doTweenAlpha('boyfriend', 'boyfriend', 0, 0.3, 'linear');
    doTweenAlpha('gf', 'gf', 0, 0.3, 'linear');
    doTweenAlpha('publico2', 'publico2', 0, 0.3, 'linear');
    doTweenAlpha('publico', 'publico', 0, 0.3, 'linear');
    doTweenAlpha('CGBG', 'CGBG', 0, 0.3, 'linear');
  end

end
