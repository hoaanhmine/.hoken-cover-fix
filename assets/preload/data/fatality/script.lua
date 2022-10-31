function onCreatePost()
    CABF = false
    for strumLineNotes = 0,7 do
        if strumLineNotes < 4 then
            if getPropertyFromClass('PlayState','isPixelStage') == true  then
                setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','fatal')
            end
        end
    end
end



local xx = 600;
local yy = 250;
local xx2 = 1300;
local yy2 = 450;
local x = 400;
local y = 400;
local x2x = 400;
local y2y = 500;
local ofs = 120;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()
    if getPropertyFromClass('PlayState','isPixelStage') == true then
        for notesLength = 0,getProperty('notes.length') do
            if getPropertyFromGroup('notes', notesLength,'mustPress') == false and getPropertyFromGroup('notes', notesLength,'noteType') == '' then
                setPropertyFromGroup('notes',notesLength,'texture','fatal')
            end
        end
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
            doTweenAngle('screenTilt', 'camGame', 2, 0.1, 'quadInOut')
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
                end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x-ofs,y)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
                end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x+ofs,y)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
                end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x,y-ofs)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
                end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x,y+ofs)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
                end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x-ofs,y)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
                end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x+ofs,y)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x,y-ofs)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
                end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x,y+ofs)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x,y)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx,yy)
                end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x,y)
                end
            end
        else
            setProperty('defaultCamZoom',0.6)
            doTweenAngle('screenTilt', 'camGame', -2, 0.1, 'quadInOut')
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then

                if CABF == false then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
                end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x2x-ofs,y2y)
                end
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
                end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x2x+ofs,y2y)
                end
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
                end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x2x,y2y-ofs)
                end
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                if CABF == false then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
                end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x2x,y2y+ofs)
                end
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
            if CABF == false then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
                if CABF == true then
                    triggerEvent('Camera Follow Pos',x2x,y2y)
                end
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function opponentNoteHit(id,data,type,sus)


    if Shake == true then
        triggerEvent('Screen Shake','0.08, 0.04','0.01, 0.02')
    end
end

function onStepHit()
    if songName == 'Fatality' then
        if curStep == 256 then
            removeLuaSprite('fatalityBg1')
            addLuaSprite('fatalityBg2-5')
            addLuaSprite('fatalityBg2')
        end
        if curStep == 1984 then
            CABF = true
            removeLuaSprite('fatalityBg2')
            addLuaSprite('fatalityBg3')
            setProperty('boyfriend.x',400)
			setProperty('boyfriend.y',750)
        end

        if curStep == 2368 then
            Shake = true
        end

        if curStep == 2528 then
            doTweenAlpha('dadFRRERR', 'dad', 0, 2, 'linear');
        end
    end
end