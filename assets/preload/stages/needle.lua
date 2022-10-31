
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 450;
local yy = 600;
local xx2 = 950;
local yy2 = 700;
local ofs = 85;
local followchars = true;
local stopMoving = false;
local del = 0;
local del2 = 0;
local BGX = -900
local BGY = -300
local SCX = 1
local SCY = 1
function onCreate()
    setProperty('defaultCamZoom',0.5)
    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

    makeLuaSprite('bg', 'RTX/needlemouse/sky', BGX, BGY);
	setScrollFactor('bg', 1,1);
	scaleObject('bg',SCX,SCY );
	addLuaSprite('bg', false);

    makeLuaSprite('mountains', 'RTX/needlemouse/mountains', BGX, BGY);
	setScrollFactor('mountains', 1,1);
	scaleObject('mountains',SCX,SCY );
	addLuaSprite('mountains', false);

    makeLuaSprite('BD', 'RTX/needlemouse/buildings', BGX, BGY);
	setScrollFactor('BD', 1,1);
	scaleObject('BD',SCX,SCY );
	addLuaSprite('BD', false);

    makeLuaSprite('GR', 'RTX/needlemouse/CONK_CREET', BGX, BGY);
	setScrollFactor('GR', 1,1);
	scaleObject('GR',SCX,SCY );
	addLuaSprite('GR', false);

    makeLuaSprite('GR1', 'RTX/needlemouse/Fire', BGX, BGY);
	setScrollFactor('GR1', 1,1);
	scaleObject('GR1',SCX,SCY );
	addLuaSprite('GR1', true);

    makeLuaSprite('ruins', 'RTX/needlemouse/ruins', BGX, BGY);
	setScrollFactor('ruins', 1,1);
	scaleObject('ruins',SCX,SCY);
	addLuaSprite('ruins', false);

    makeLuaSprite('ShBF', 'ShadowF', 770, 660);
	setScrollFactor('ShBF', 1,1);
	scaleObject('ShBF',0.52,0.52 );
	addLuaSprite('ShBF', false);

    makeLuaSprite('ShDAD', 'ShadowF', -100, 590);
	setScrollFactor('ShDAD', 1,1);
	scaleObject('ShDAD',0.6,0.6 );
	addLuaSprite('ShDAD', false);

    makeLuaSprite('ShGF', 'ShadowF', 1180, 610);
	setScrollFactor('ShGF', 1,1);
	scaleObject('ShGF',0.5,0.5 );
	addLuaSprite('ShGF', false);

    makeLuaSprite('ShDD', 'ShadowF', 100, 600);
	setScrollFactor('ShDD', 1,1);
	scaleObject('ShDD',0.5,0.5 );
	addLuaSprite('ShDD', false);
    setProperty('ShDD.visible', false)


    makeLuaSprite('Sh', 'Shadow', 0, 0);
	setScrollFactor('Sh', 2,2);
	addLuaSprite('Sh', true);
    setObjectCamera('Sh', 'hud')

    makeLuaSprite('Sh1', 'Shadow', 0, 0);
	setScrollFactor('Sh1', 2,2);
	addLuaSprite('Sh1', true);
    setObjectCamera('Sh1', 'hud')

    makeAnimatedLuaSprite('Dad2', 'RTX/needlemouse/Sarah', 200, 300); -- Change to characters idle in XML
    addAnimationByPrefix('Dad2', 'idle', 'Sarah_IDLE', 24, true); -- Change to characters idle in XML
    addAnimationByPrefix('Dad2', '0', 'Sarah_LEFT', 24, true); -- Change to characters leftnote in XML
    addAnimationByPrefix('Dad2', '1', 'Sarah_DOWN', 24, true); -- Change to characters downnote in XML
    addAnimationByPrefix('Dad2', '2', 'Sarah_UP', 24, true); -- Change to characters upnote in XML
    addAnimationByPrefix('Dad2', '3', 'Sarah_RIGHT', 24, true); -- Change to characters rightnote in XML
    objectPlayAnimation('Dad2', 'idle'); 
    scaleObject('Dad2', 1, 1);
    setProperty('Dad2.visible', false)
    addLuaSprite('Dad2', false);


end



lastNote = {0, ""}

function opponentNoteHit(id,d,t,s)

    lastNote[1] = d
    lastNote[2] = t
    
    if lastNote[2] == "No Animation" then -- Change "No Animation" to be your note type, usually you can just keep it as no anim assuming you arent using it elsewhere
	objectPlayAnimation('Dad2', lastNote[1]);
    end
end

function onUpdate(elapsed)
    setObjectCamera('Sh1', 'hud');
    setObjectCamera('Sh', 'hud');
    doTweenAlpha('Sh', 'Sh', 0.2, 0.01, 'linear');



	daElapsed = elapsed * 30
	i = i + daElapsed
	

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.7)
            doTweenAngle('screenTilt', 'camGame', 1, 0.1, 'quadInOut')
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
      
            setProperty('defaultCamZoom',0.8)
            doTweenAngle('screenTilt', 'camGame', -1, 0.1, 'quadInOut')
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onGameOver()
	stopMoving = true;
end
