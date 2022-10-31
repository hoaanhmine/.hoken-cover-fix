function onCreate()
	-- background shit
	
	makeLuaSprite('CN_CITY', 'CN_CITY', -600, -280);
	setLuaSpriteScrollFactor('CN_CITY', 0.9, 0.9);
	
	makeLuaSprite('CN_CITY', 'CN_CITY', -550, -280);
	setLuaSpriteScrollFactor('CN_CITY', 0.9, 0.9);
	scaleObject('CN_CITY', 1.0, 1.0);

	addLuaSprite('CN_CITY', false);

end