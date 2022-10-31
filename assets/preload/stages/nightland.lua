
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = -650;
local yy = 570;
local xx2 = -150;
local yy2 = 925;
local ofs = 35;
local followchars = true;
local stopMoving = false;
local del = 0;
local del2 = 0;
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

    makeLuaSprite('bg', 'h24/nightland/BG1', -2000, -1470);
	setScrollFactor('bg', 1,1);
	scaleObject('bg',2,2 );
	addLuaSprite('bg', false);

    makeLuaSprite('bg2', 'h24/nightland/BAC2', -2000, -1470);
	setScrollFactor('bg2', 1,1);
	scaleObject('bg2',2,2 );
	addLuaSprite('bg2', false);

    makeLuaSprite('bg3', 'h24/nightland/ROC3', -2000, -1470);
	setScrollFactor('bg3', 1,1);
	scaleObject('bg3',2,2 );
	addLuaSprite('bg3', false);

    makeLuaSprite('bg4', 'h24/nightland/TREE4', -2000, -1470);
	setScrollFactor('bg4', 1,1);
	scaleObject('bg4',2,2 );
	addLuaSprite('bg4', false);

    makeLuaSprite('bg5', 'h24/nightland/GROUMD5', -2600, -1685);
	setScrollFactor('bg5', 1,1);
	scaleObject('bg5',2.2,2.2 );
	addLuaSprite('bg5', false);

    makeLuaSprite('bg6', 'h24/nightland/BLURROC6', -2000, -1470);
	setScrollFactor('bg6', 0.9,0.9);
	scaleObject('bg6',2,2 );
	addLuaSprite('bg6', true);
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed
	
	if stopMoving == false then
		setProperty('dad.y', (math.sin(i/20)*75) - 600)
		yy = (math.sin(i/20)*75) - 200
	
		setProperty('boyfriend.y', (math.sin(i/11)*30) - 350)
		yy2 = (math.sin(i/11)*30) - 100
	end

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.5)
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
      
            setProperty('defaultCamZoom',0.65)
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
