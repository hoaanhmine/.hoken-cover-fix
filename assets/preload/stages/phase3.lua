function onCreate()
	-- background shit
	makeLuaSprite('phase3', 'phase6', -300, -50);
	setScrollFactor('phase3', 1.1, 1.1);

	addLuaSprite('phase3', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end