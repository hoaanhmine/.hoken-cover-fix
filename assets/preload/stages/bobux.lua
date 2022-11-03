
function onCreate()
	-- background shit
	makeLuaSprite('bg', 'RTX/Suffer/Destruido', -800, -140);
	setScrollFactor('bg', 1,1);
	scaleObject('bg', 1.2,1.2);

	makeLuaSprite('BGDL', 'vignette', -1500, -700);
	setScrollFactor('BGDL', 0.3, 0.3);

	makeLuaSprite('BL', 'black', 0, 0);
	setScrollFactor('BL', 2,2);
	addLuaSprite('BL', true);
	setProperty('BL.visible', false);
	
	addLuaSprite('pantalla', true);
	addLuaSprite('bg', false);
	addLuaSprite('BGDL', true);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onUpdate(elapsed)
	setObjectCamera('BGDL', 'other');
    setObjectCamera('BL', 'other');

end


