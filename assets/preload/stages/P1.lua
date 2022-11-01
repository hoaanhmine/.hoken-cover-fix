local yy = 400

function onCreate()
	
	makeAnimatedLuaSprite('BG','RTX/CYS/BG1',-700, 0)addAnimationByPrefix('BG', 'idle','BG',20,true)
	objectPlayAnimation('BG','idle',false)
	setScrollFactor('BG', 1, 1);
	scaleObject('BG', 1.3, 1.1);
	addLuaSprite('BG', false);
	

    makeLuaSprite('Sh', 'Shadow', 0, 0);
	setScrollFactor('Sh', 2,2);
	addLuaSprite('Sh', true);
    setObjectCamera('Sh', 'hud')
	

end

function onUpdate()
	setProperty('dad.y', (math.sin(i/20)*75) - 600)
	yy = (math.sin(i/20)*75) - 200

end
