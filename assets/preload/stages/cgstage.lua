function onCreate()

    makeLuaSprite('CGBG', 'weekcg/CGBG1', -800, -1200);
	setScrollFactor('CGBG' , 1,1 );
	scaleObject('CGBG', 1.8, 1.8);
	addLuaSprite('CGBG', false)

	makeAnimatedLuaSprite('publico', 'weekcg/bopper1', 120,0);
	scaleObject('publico', 1.3,1.3);
	objectPlayAnimation('publico', 'crowd1');
	
	makeAnimatedLuaSprite('publico2', 'weekcg/bopper2',  100, 0);
	setLuaSpriteScrollFactor('publico2', 1.0, 1.0);
	scaleObject('publico2', 1.3,1.3);
	objectPlayAnimation('publico', 'crowd1');
	
  

	addLuaSprite('publico', false);
	addLuaSprite('publico2', false);
	addAnimationByPrefix('publico2', 'idle', 'crowd', 15, true);
	addAnimationByPrefix('publico', 'idle', 'crowd', 15, true);
	addLuaSprite('CGBG', false)
	


end