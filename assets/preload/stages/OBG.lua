local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 350;
local yy = 999;
local xx2 = 750;
local yy2 = 1100;
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
	-- background shit
	
	local S = 0.6
	
	
	makeLuaSprite('sky', 'Shaggy/OBG/sky', -800, 150);
	setScrollFactor('sky', 0.5, 0.5);
	scaleObject('sky',S,S );
	addLuaSprite('sky', false);

	makeLuaSprite('MN', 'Shaggy/OBG/moon', 750, 400);
	setScrollFactor('MN', 0.5, 0.5);
	scaleObject('MN',0.5,0.5 );
	addLuaSprite('MN', false);

	makeLuaSprite('Bm', 'Shaggy/OBG/backmount', -650, 600);
	setScrollFactor('Bm', 0.7, 0.7);
	scaleObject('Bm',0.8,0.8 );
	addLuaSprite('Bm', false);

	makeLuaSprite('MM', 'Shaggy/OBG/middlemount', 50, 1000);
	setScrollFactor('MM', 0.7, 1);
	scaleObject('MM',0.6,0.6 );
	addLuaSprite('MM', false);

	makeLuaSprite('GR', 'Shaggy/OBG/ground', -700, 1250);
	setScrollFactor('GR', 1,1);
	scaleObject('GR',0.6,0.6 );
	addLuaSprite('GR', false);

	makeLuaSprite('ShBF', 'ShadowF', 570, 1140);
	setScrollFactor('ShBF', 1,1);
	scaleObject('ShBF',0.6,0.6 );
	addLuaSprite('ShBF', false);

    makeLuaSprite('ShDAD', 'ShadowF', -200, 1100);
	setScrollFactor('ShDAD', 1,1);
	scaleObject('ShDAD',0.7,0.7 );
	addLuaSprite('ShDAD', false);


    makeLuaSprite('Sh', 'Shadow', 0, 0);
	setScrollFactor('Sh', 2,2);
	addLuaSprite('Sh', true);
    setObjectCamera('Sh', 'hud')

	makeLuaSprite('MANIA', 'Shaggy/Mania', 0, 0);
	setScrollFactor('MANIA', 2,2);
	addLuaSprite('MANIA', true);

close(true);


function onUpdate(elapsed)
    setObjectCamera('MANIA', 'hud');
    setObjectCamera('Sh', 'hud');

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
            doTweenAngle('screenTilt', 'camGame', 1.1, 0.1, 'quadInOut')
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
            doTweenAngle('screenTilt', 'camGame', -1.1, 0.1, 'quadInOut')
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
				characterPlayAnim('boyfriend', 'singLEFT-alt', true)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
				characterPlayAnim('boyfriend', 'singRIGHT-alt', true)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
				characterPlayAnim('boyfriend', 'singUP-alt', true)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
				characterPlayAnim('boyfriend', 'singDOWN-alt', true)
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


end
