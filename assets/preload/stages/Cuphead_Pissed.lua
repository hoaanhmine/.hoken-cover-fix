function onCreate()
	makeLuaSprite('Cup_BG_Pissed', 'Cup_BG_Pissed', defaultPlayerStrumX0 - 260, defaultPlayerStrumY0 - 200);
	makeAnimatedLuaSprite('Rain', 'rain', defaultPlayerStrumX0 - 230, defaultPlayerStrumY0 - 100)
	addAnimationByPrefix('Rain', 'rain', 'rain', 24, false);
	scaleObject('Cup_BG_Pissed', 2.2, 2.2);
	scaleObject('Rain', 1.5, 1.5);
	addLuaSprite('Rain', true);
	objectPlayAnimation('Rain', 'first');
	addLuaSprite('Cup_BG_Pissed', false);
end

function onUpdate()
	objectPlayAnimation('Rain', 'rain');
end