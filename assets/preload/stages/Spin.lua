function onCreate()
	-- background shit
	makeLuaSprite('sky', 'RTX/Spinterview/Sky_sp', -1600, -700);
	setScrollFactor('sky', 0.3, 0.3);
	
	
	makeLuaSprite('flare1', 'RTX/Spinterview/Flare1', -1650, -900);
	setScrollFactor('flare1', 0.5, 0.5);
	scaleObject('flare1', 1.1, 1.1);
	setBlendMode('flare1', 'LIGHTEN');

	makeLuaSprite('flare2', 'RTX/Spinterview/Flare2', -1650, -800);
	setScrollFactor('flare2', 0.7, 0.7);
	scaleObject('flare2', 1.1, 1.1);
	setBlendMode('flare2', 'SCREEN');

	

	makeLuaSprite('floorglow', 'RTX/Spinterview/FloorGlow', -1650, -600);
	setScrollFactor('floorglow', 1.1, 1.1);
	scaleObject('floorglow', 1.1, 1.1);
	setBlendMode('floorglow', 'ADD');

	makeLuaSprite('BGL', 'Data', 0, -100);
	setScrollFactor('BGL', 1.1, 1.1);
	scaleObject('BGL', 1.1, 1.1);
	doTweenAlpha('BGLVF', 'BGL', 0.6, 0.01, 'linear');


	makeLuaSprite('BGDL', 'RTX/Spinterview/vignette', -1500, -700);
	setScrollFactor('BGDL', 0.3, 0.3);
	


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		--makeLuaSprite('starsHere', 'Stars', -1650, -1000);
		makeAnimatedLuaSprite('starsHere', 'RTX/Spinterview/Stars', 100, -100);
		setScrollFactor('starsHere', 1.7, 1.7);
		scaleObject('starsHere', 1.1, 1.1);
		addAnimationByPrefix('starsHere', 'play', 'Stars', 24, true);
		objectPlayAnimation('starsHere', 'play');
		setBlendMode('starsHere', 'SCREEN');
	end

	addLuaSprite('sky', false);
	addLuaSprite('flare1', false);
	addLuaSprite('flare2', false);
	
	addLuaSprite('floorglow', true);
	addLuaSprite('starsHere', true);
	addLuaSprite('BGL', false);
	addLuaSprite('BGDL', true);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onUpdate(elapsed)
	setObjectCamera('BGL', 'other');
end

