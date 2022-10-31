
local xx = 300;
local yy = 400;
local xx2 = 500;
local yy2 = 500;
local ofs = 60;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()

	setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.75)
            doTweenAngle('screenTilt', 'camGame', 5, 0.1, 'quadInOut')
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
            setProperty('defaultCamZoom',0.95)
            doTweenAngle('screenTilt', 'camGame', -5, 0.1, 'quadInOut')
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
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.3 then
        setProperty('health', health- 0.01);
    end
end

function onStepHit ()

    if curStep == 255 then
        triggerEvent('NoteTurns', '2', '16')
    end

    if curStep == 515 then
        triggerEvent('NoteTurns', '1', '1')
    end



    if curStep == 767 then
        doTweenAlpha('EXEFade', 'EXE', 1, 0.1, 'linear');
        triggerEvent('BarScale', '3', '0.1')
    end

    if curStep == 769 then
        doTweenAlpha('EXEFade', 'EXE', 0, 0.5, 'linear');
    end

    if curStep == 991 then
        triggerEvent('BarScale', '1.5', '0.3')
        triggerEvent('Set cam zoom', '1', '0.3')
    end

    if curStep == 1023 then
        triggerEvent('Set cam zoom', '0.75', '0.1')
    end

    if curStep == 1776 then
        triggerEvent('BarScale', '4', '5')
        triggerEvent('Set cam zoom', '1', '14')
    end

    if curStep == 2012 then
        triggerEvent('BarScale', '1.5', '1')
        triggerEvent('Set cam zoom', '0.75', '0.2')
    end

    if curStep == 2527 then
        triggerEvent('Notespin', '360', '12')
    end

    if curStep == 2258 then
        triggerEvent('Set cam zoom', '0.75', '0.2')
    end

    if curStep == 2589 then
        doTweenX('SonicRUNN', 'boyfriend', 0, 14, cubeInOut)
    end

    if curStep == 2848 then
        doTweenX('SonicRUNN', 'boyfriend', 1000, 3, cubeInOut)
    end

    if curStep == 2878 then
        triggerEvent('BarScale', '8', '1')
    end


end