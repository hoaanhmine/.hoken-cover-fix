function onCreate()

	makeLuaSprite('sky','RTX/No Good/sky',-400,-200)
	addLuaSprite('sky',false)
	setLuaSpriteScrollFactor('sky', 0.5, 0.5);
	makeLuaSprite('Sh', 'Shadow', 0, 0);
	setScrollFactor('Sh', 2,2);
	addLuaSprite('Sh', true);
	doTweenAlpha('Sh', 'Sh', 0.75, 0.01, 'linear');

end


