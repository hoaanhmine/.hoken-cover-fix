local yy = 400

function onCreate()
	
	makeAnimatedLuaSprite('Bg','RTX/CYS/Bg1',-700, 0)addAnimationByPrefix('Bg', 'idle','Bg',20,true)
	objectPlayAnimation('Bg','idle',false)
	setScrollFactor('Bg', 1, 1);
	scaleObject('Bg', 1.3, 1.1);
	addLuaSprite('Bg', false);
	

    makeLuaSprite('Sh', 'Shadow', 0, 0);
	setScrollFactor('Sh', 2,2);
	addLuaSprite('Sh', true);
    setObjectCamera('Sh', 'hud')
	
    makeLuaSprite('EXE', 'RTX/CYS/EXE1', 0, 0);
	scaleObject('EXE', 0.7,0.7);
	addLuaSprite('EXE', true);
    setObjectCamera('EXE', 'Other')
	doTweenAlpha('EXEFade', 'EXE', 0, 1, 'linear');

end

function onUpdate()
	setProperty('dad.y', (math.sin(i/20)*75) - 600)
	yy = (math.sin(i/20)*75) - 200

end