function onCreate()
    makeAnimatedLuaSprite('fatalityBg1','RTX/fatal/launchbase',-1200,-900)
    addAnimationByPrefix('fatalityBg1','moviment','idle',14,true)
    setProperty('fatalityBg1.antialiasing',false)
    scaleObject('fatalityBg1',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg2','RTX/fatal/domain',-1200,-900)
    addAnimationByPrefix('fatalityBg2','moviment','idle',14,false)
    setProperty('fatalityBg2.antialiasing',false)
    scaleObject('fatalityBg2',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg2-5','RTX/fatal/domain2',-1200,-900)
    addAnimationByPrefix('fatalityBg2-5','moviment','idle',14,false)
    setProperty('fatalityBg2-5.antialiasing',false)
    scaleObject('fatalityBg2-5',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg3','RTX/fatal/truefatalstage',-1200,-700)
    addAnimationByPrefix('fatalityBg3','moviment','idle',14,false)
    setProperty('fatalityBg3.antialiasing',false)
    scaleObject('fatalityBg3',5,5)

    addLuaSprite('fatalityBg1')
	
    makeLuaSprite('Sh', 'Shadow', 0, 0);
	setScrollFactor('Sh', 2,2);
	addLuaSprite('Sh', true);
    setObjectCamera('Sh', 'hud')

    
end
function onBeatHit()
    objectPlayAnimation('fatalityBg2','moviment',false)
    objectPlayAnimation('fatalityBg2-5','moviment',false)
	
end
