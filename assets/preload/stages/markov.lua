
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
function onCreate()
    setProperty('defaultCamZoom',0.76)
    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',true)
    scaleObject('bartop',1,1.5 );
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud') 
    scaleObject('barbot',1,1.5 );

    
	makeLuaSprite('sky', 'doki/images/bigmonika/Sky', -450, 0);
	setScrollFactor('sky', 0.7,0.7);
	scaleObject('sky',2,2 );
	addLuaSprite('sky', false);

	makeLuaSprite('bg', 'doki/images/bigmonika/BG', -320, -100);
	setScrollFactor('bg', 1,1);
	scaleObject('bg',1.2,1.2 );
	addLuaSprite('bg', false);
    
	makeLuaSprite('Rb', 'doki/images/ClosetBG', -430, -100);
	setScrollFactor('Rb', 1,1);
	scaleObject('Rb',1.1,1.1 );
	addLuaSprite('Rb', false);

    makeLuaSprite('Sh', 'doki/images/vignette', 0, 0);
	setScrollFactor('Sh', 2,2);
	addLuaSprite('Sh', true);
    setObjectCamera('Sh', 'hud');
    doTweenAlpha('Sh', 'Sh', 0.5, 0.01, 'linear');

    makeLuaSprite('BL', 'black', 0, 0);
	setScrollFactor('BL', 2,2);
	addLuaSprite('BL', true);

    makeLuaSprite('WTH', 'h24/images/covers/White', -300, 0);
	setScrollFactor('WTH', 1,1);
	scaleObject('WTH',4,4 );
	addLuaSprite('WTH', false);
    doTweenAlpha('WTHA', 'WTH', 0, 0.01, 'linear')
    
end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('Dad2', 'idle');
	end
end

lastNote = {0, ""}

function opponentNoteHit(id,d,t,s)

    lastNote[1] = d
    lastNote[2] = t
    
    if lastNote[2] == "No Animation" then -- Change "No Animation" to be your note type, usually you can just keep it as no anim assuming you arent using it elsewhere
	objectPlayAnimation('Dad2', lastNote[1]);
    end
end

ABCW = 0 ---900

function onUpdate()



    setObjectCamera('BL', 'hud');

end
