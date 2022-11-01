function onCreate()
	makeLuaSprite('Bg1', 'RTX/FWF/YellowBG', Xbg, YBg);
	scaleObject('Bg1', Scale,Scale);
	setScrollFactor('Bg1', 1,1);


	makeLuaSprite('EffectY', 'RTX/FWF/YELLOW  EFFECT', Xbg, YBg);
	scaleObject('EffectY', Scale,Scale);
	setScrollFactor('EffectY', 1,1);
	doTweenAlpha('EffectYEE', 'EffectY', 0.8, 0.3, 'linear');

	makeLuaSprite('STARY', 'RTX/FWF/Yellow Star', Xbg, YBg);
	scaleObject('STARY', Scale,Scale);
	setScrollFactor('STARY', 0.8,0.8);
	doTweenAlpha('STARY', 'STARY', 0.7, 0.3, 'linear');



	makeLuaSprite('BL', 'black', 0, 0);
	setScrollFactor('BL', 2,2);
	setProperty('BL.visible', true);
	doTweenAlpha('BLf', 'BL', 0, 7, 'linear');
	
	

	
	
	makeLuaSprite('Bg3', 'RTX/FWF/RedBG', Xbg2, YBg2);
	scaleObject('Bg3', Scale,Scale);
	
	setScrollFactor('Bg3', 1,1);
	makeLuaSprite('EffectR', 'RTX/FWF/Red EFFECT', Xbg2, YBg2);
	scaleObject('EffectR', Scale,Scale);
	setScrollFactor('EffectR', 1,1);
	doTweenAlpha('EffectREE', 'EffectR', 0.8, 0.3, 'linear');
	
	makeLuaSprite('STARR', 'RTX/FWF/Red Star', Xbg2, YBg2);
	scaleObject('STARR', Scale,Scale);
	setScrollFactor('STARR', 0.8,0.8);
	doTweenAlpha('STARRW', 'STARR', 0.7, 0.3, 'linear');
	
		
	addLuaSprite('Bg3', false)
	addLuaSprite('EffectR', true)
	addLuaSprite('STARR', true)

	setProperty('Bg3.visible', false);
	setProperty('EffectR.visible', false);
	setProperty('STARR.visible', false);
	

	

	addLuaSprite('Bg1', false)
	addLuaSprite('EffectY', true)
	addLuaSprite('STARY', true)
	addLuaSprite('BL', true)

	setProperty('Bg2.visible', false);
	setProperty('EffectB.visible', false);
	setProperty('STARB.visible', false);

	setProperty('Bg1.visible', false);
	setProperty('EffectY.visible', false);
	setProperty('STARY.visible', false);
	
	
	makeLuaSprite('Bg4', 'RTX/FWF/Purple BG', Xbg2, YBg2);
	scaleObject('Bg4', Scale,Scale);
	setScrollFactor('Bg4', 1,1);
	makeLuaSprite('EffectP', 'RTX/FWF/Purple EFFECT', Xbg2, YBg2);
	scaleObject('EffectP', Scale,Scale);
	setScrollFactor('EffectP', 1,1);
	doTweenAlpha('EffectPEE', 'EffectP', 0.8, 0.3, 'linear');
	
	makeLuaSprite('STARP', 'RTX/FWF/Purple Star', Xbg2, YBg2);
	scaleObject('STARP', Scale,Scale);
	setScrollFactor('STARP', 0.8,0.8);
	doTweenAlpha('STARPW', 'STARP', 0.7, 0.3, 'linear');
		
	addLuaSprite('Bg4', false)
	addLuaSprite('EffectP', true)
	addLuaSprite('STARP', true)

	
	setProperty('Bg4.visible', false);
	setProperty('EffectP.visible', false);
	setProperty('STARP.visible', false);

	

end



function onUpdate()
    setObjectCamera('BL', 'other');
end



function onStepHit()	
	
	if curStep == 1296 then
		makeLuaSprite('Bg2', 'RTX/FWF/BlueBG', Xbg2, YBg2);
		scaleObject('Bg2', Scale,Scale);
		setScrollFactor('Bg2', 1,1);
	
		makeLuaSprite('EffectB', 'RTX/FWF/Blue EFFECT', Xbg2, YBg2);
		scaleObject('EffectB', Scale,Scale);
		setScrollFactor('EffectB', 1,1);
		doTweenAlpha('EffectBEE', 'EffectB', 0.8, 0.3, 'linear');
		
		makeLuaSprite('STARB', 'RTX/FWF/Blue Star', Xbg2, YBg2);
		scaleObject('STARB', Scale,Scale);
		setScrollFactor('STARB', 0.8,0.8);
		
		
		setCharacterX('dad', 40);
		addLuaSprite('Bg2', false)
		addLuaSprite('EffectB', true)
		addLuaSprite('STARB', true)


		
	end


	



	if curStep == 2820 then
		doTweenColor('BFColor', 'boyfriend', 'FFB0C6 ', 0.5, 'quadIn');
		setCharacterX('dad', 40);
		setCharacterX('boyfriend', 700);
		setCharacterY('dad', 180);
		setCharacterY('boyfriend', 180);
		end

	
	
	
end
