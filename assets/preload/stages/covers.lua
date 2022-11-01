
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 1050.95;
local yy = 870;
local xx2 = 1872.9;
local yy2 = 1125;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    setProperty('defaultCamZoom',0.76)
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

	makeLuaSprite('bg', 'h24/images/covers/bg', -300, 0);
	setScrollFactor('bg', 1,1);
	scaleObject('bg',2,2 );
	addLuaSprite('bg', false);

    makeLuaSprite('sun', 'h24/images/covers/sun', 0, -100);
	setScrollFactor('sun', 1,1);
	scaleObject('sun',1,1 );
	addLuaSprite('sun', false);


    makeLuaSprite('CD', 'h24/images/covers/clouds', 400, 100);
	setScrollFactor('CD', 1,1);
	scaleObject('CD',1,1 );
	addLuaSprite('CD', false);

    makeLuaSprite('BDS', 'h24/images/covers/buildings', 0, 0);
	setScrollFactor('BDS', 1,1);
	scaleObject('BDS',1,1 );
	addLuaSprite('BDS', false);

    makeLuaSprite('HIL', 'h24/images/covers/hills', -650, -300);
	setScrollFactor('HIL', 1,1);
	scaleObject('HIL',1.5,1.5 );
	addLuaSprite('HIL', false);

    makeLuaSprite('CAS', 'h24/images/covers/castle',-650, -200);
	setScrollFactor('CAS', 1,1);
	scaleObject('CAS',1.5,1.5 );
	addLuaSprite('CAS', false);

    makeLuaSprite('GROUND', 'h24/images/covers/ground', -400, -240);
	setScrollFactor('GROUND', 1,1);
	scaleObject('GROUND',1.3,1.3 );
	addLuaSprite('GROUND', false);


    makeLuaSprite('CA', 'h24/images/covers/cables', -650, -300);
	setScrollFactor('suCAn', 1,1);
	scaleObject('CA',1.5,1.5 );
	addLuaSprite('CA', true);
    
    makeLuaSprite('LGD', 'h24/images/covers/light', 0, 0);
	setScrollFactor('LGD', 1,1);
	scaleObject('LGD',1,1 );
	addLuaSprite('LGD', true);



    makeLuaSprite('WTH', 'h24/images/covers/White', -300, 0);
	setScrollFactor('WTH', 1,1);
	scaleObject('WTH',4,4 );
	addLuaSprite('WTH', false);
    setProperty('WTH.visible', false)
    addLuaSprite('dad', true);

function onStepHit()

  if curStep == 1 then
    doTweenX('sunSX', 'sun.scale', 0.8, 209, 'backIn')
    doTweenY('sunSY', 'sun.scale', 0.8, 209, 'backIn')

  end
end
    
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

function onUpdate(elapsed)



    doTweenX('CDXX', 'CD', -400, 209, cubeInOut)
    doTweenY('sunYY', 'sun', -400, 309, cubeInOut)
	objectPlayAnimation('Dad2', 'idle'); 



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
      
            setProperty('defaultCamZoom',0.76)
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
