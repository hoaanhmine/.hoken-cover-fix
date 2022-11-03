function onCreate()
	-- background shit
	makeAnimatedLuaSprite('bg1', 'Forhire/bg1', -1000, -700)
	scaleObject('bg1', 8, 8)
	setLuaSpriteScrollFactor('bg1', 0.9, 0.9);
	addAnimationByPrefix('bg1', 'bg1', 'bg1', 10, true)
	objectPlayAnimation('bg1', 'bg1', true)


	makeAnimatedLuaSprite('bg2', 'Forhire/bg2', -1000, -700)
	scaleObject('bg2', 8, 8)
	setLuaSpriteScrollFactor('bg2', 0.7, 0.7);
	addAnimationByPrefix('bg2', 'bg2', 'bg2', 10, true)
	objectPlayAnimation('bg2', 'bg2', true)

	
	makeLuaSprite('DF', 'Forhire/doorframe',400, 150);
    setScrollFactor('DF' , 1,1 );
    scaleObject('DF', 0.3,0.3);


	makeLuaSprite('bg3', 'Forhire/bg3', -1000, -700)
	scaleObject('bg3', 8, 8)
	setLuaSpriteScrollFactor('bg3', 0.5, 0.5);


	makeAnimatedLuaSprite('objects', 'Forhire/objects', -1000, -700)
	scaleObject('objects', 8, 8);
	addAnimationByPrefix('objects', 'objects', 'objects', 22, true)
	objectPlayAnimation('objects', 'objects', true)
	
	makeLuaSprite('GHGround', 'Forhire/GHGround', -1000, -700)
	scaleObject('GHGround', 8, 8)

	makeAnimatedLuaSprite('flowers', 'Forhire/flowers', -1000, -700)
	scaleObject('flowers', 8, 8);
	addAnimationByPrefix('flowers', 'flowerloop', 'flowerloop', 10, true)
	objectPlayAnimation('flowers', 'flowerloop', true)
	
	addLuaSprite('bg1', false)
	setProperty('bg1.antialiasing',false)
	addLuaSprite('bg2', false)
	addLuaSprite('bg3', false)
	addLuaSprite('DF', false);
	addLuaSprite('objects', false)
	setProperty('objects.antialiasing',false)
	addLuaSprite('GHGround', false)
	setProperty('GHGround.antialiasing',false)
	addLuaSprite('flowers', false)
	setProperty('flowers.antialiasing',false)

end

function onCreatePost()
	setProperty('gf.visible',false)
end