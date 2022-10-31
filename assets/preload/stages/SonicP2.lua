local Xbg = -500
local YBg = -330
local Scale = 1.3

function onCreate()
	


	setProperty('gf.visible', false);
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd');

	makeLuaSprite('YCR_sky', 'RTX/YCRENCORE/BG', Xbg, YBg);
	scaleObject('YCR_sky', Scale,Scale);
	setScrollFactor('YCR_sky', 1,1);

	makeLuaSprite('EFFECT', 'RTX/YCRENCORE/EFFECT', Xbg, YBg);
	scaleObject('EFFECT', Scale,Scale);
	setScrollFactor('EFFECT', 1,1);
	doTweenAlpha('EFFECTEE', 'EFFECT', 0.5, 0.3, 'linear');

	makeLuaSprite('STAR', 'RTX/YCRENCORE/STAR', Xbg, YBg);
	scaleObject('STAR', Scale,Scale);
	setScrollFactor('STAR', 0.8,0.8);
	doTweenAlpha('STARR', 'STAR', 0, 0.3, 'linear');

	makeLuaSprite('BL', 'black', 0, 0);
	setScrollFactor('BL', 2,2);
	setProperty('BL.visible', true);
	doTweenAlpha('BLf', 'BL', 0, 6, 'linear');

	addLuaSprite('YCR_sky', false)
	addLuaSprite('EFFECT', true)
	addLuaSprite('STAR', true)
	addLuaSprite('BL', true)


end

function onBeatHit()
	triggerEvent('Add Cam Zoom', '0.7', '0.3');
end

function onUpdate()
    setObjectCamera('BL', 'other');
end

function opponentNoteHit(id, dir)
    if Shake == true then
        triggerEvent('Screen Shake','0.02, 0.02','0.01, 0.02')
    end
	
	if Shake == false then
        triggerEvent('Screen Shake','0,0','0,0')
    end
end



function onStepHit()
	if curStep == 1 then
		Shake = true


		setCharacterX('boyfriend', 1100);
		setCharacterY('boyfriend', 100);
		setCharacterX('dad', 80);
		setCharacterY('dad', -200);
	end

	if curStep == 475 then
		doTweenAlpha('STARR', 'STAR', 0.8, 5, 'linear');
	end

	if curStep == 522 then
        doTweenAlpha('BLBL', 'BL', 1, 0.3, 'linear');
    end

	if curStep == 528 then
		Shake = false

		noteTweenX("NoteTurn5", 4, 92, 1, cubeInOut)
		noteTweenX("NoteTurn6", 5, 204, 1, cubeInOut)
		noteTweenX("NoteTurn7", 6, 316, 1, cubeInOut)
		noteTweenX("NoteTurn8", 7, 428, 1, cubeInOut)
		noteTweenX("NoteTurn1", 0, 732, 1, cubeInOut)
		noteTweenX("NoteTurn2", 1, 844, 1, cubeInOut)
		noteTweenX("NoteTurn3", 2, 956, 1, cubeInOut)
		noteTweenX("NoteTurn4", 3, 1068, 1, cubeInOut)

        doTweenAlpha('BLBL', 'BL', 0, 1, 'linear');

		triggerEvent('Change Character', 'bf', 'bf-pixel-sonic');

		triggerEvent('Change Character', 'dad', 'pixelrunsonic');

		setCharacterX('boyfriend', 400);

		setCharacterY('boyfriend', -200);

		setCharacterX('dad', 800);

		setCharacterY('dad', 150);

		setProperty('defaultCamZoom',1.1)


		setProperty('YCR_sky.visible', false);
		setProperty('STAR.visible', false);
		setProperty('EFFECT.visible', false);


		makeLuaSprite('thefrickinbg2', 'RTX/YCRENCORE/GAME', 0, -200);
		scaleObject('thefrickinbg2', 6,6);
		setProperty('thefrickinbg2.antialiasing', false);
		addLuaSprite('thefrickinbg2', false);

		doTweenAlpha('STARR', 'STAR', 0, 0.3, 'linear');
		doTweenAlpha('EFFECTR', 'EFFECT', 0, 0.3, 'linear');
		doTweenAlpha('BGR', 'BG', 0, 0.3, 'linear');


	
	end

	if curStep == 778 then
        doTweenAlpha('BLBL', 'BL', 1, 0.3, 'linear');
    end

	if curStep == 783 then
		Shake = true



		triggerEvent('NoteTurn', '1', '0.01');
        doTweenAlpha('BLBL', 'BL', 0, 0.6, 'linear');
		triggerEvent('Change Character', 'bf', 'bfYCR-encore');
		triggerEvent('Change Character', 'dad', 'ycr-mad');
		setCharacterX('boyfriend', 1100);
		setCharacterY('boyfriend', 100);
		setCharacterX('dad', 80);
		setCharacterY('dad', -200);
		setProperty('YCR_sky.visible', true);
		setProperty('STAR.visible', true);
		setProperty('EFFECT.visible', true);
		
		setProperty('thefrickinbg2.visible', false);
		doTweenAlpha('STARR', 'STAR', 1, 0.3, 'linear');
		doTweenAlpha('EFFECTR', 'EFFECT', 0.8, 0.3, 'linear');
		doTweenAlpha('BGR', 'BG', 1, 0.3, 'linear');

    end

	if curStep == 785 then
		noteTweenX("NoteTurn1", 0, 92, 1, cubeInOut)
		noteTweenX("NoteTurn2", 1, 204, 1, cubeInOut)
		noteTweenX("NoteTurn3", 2, 316, 1, cubeInOut)
		noteTweenX("NoteTurn4", 3, 428, 1, cubeInOut)
		noteTweenX("NoteTurn5", 4, 732, 1, cubeInOut)
		noteTweenX("NoteTurn6", 5, 844, 1, cubeInOut)
		noteTweenX("NoteTurn7", 6, 956, 1, cubeInOut)
		noteTweenX("NoteTurn8", 7, 1068, 1, cubeInOut)
	end


	if curStep == 1168 then
        doTweenAlpha('BLBL', 'BL', 1, 0.3, 'linear');
    end

	if curStep == 1213 then
        doTweenAlpha('BLBL', 'BL', 0, 0.3, 'linear');
    end

	if curStep == 913 then
		doTweenAlpha('STARR', 'STAR', 0, 2, 'linear');
	end

	if curStep == 1308 then
		doTweenAlpha('STARR', 'STAR', 1, 2, 'linear');
	end

	if curStep == 1580 then
		doTweenAlpha('STARR', 'STAR', 0, 2, 'linear');
	end

	if curStep == 1809 then
		doTweenAlpha('STARR', 'STAR', 1, 2, 'linear');
	end

	if curStep == 1840 then
		doTweenAlpha('BLBL', 'BL', 1, 0.3, 'linear');
	end


end