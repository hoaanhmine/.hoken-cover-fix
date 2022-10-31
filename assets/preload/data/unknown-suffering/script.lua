
local xx = 300;
local yy = 400;
local xx2 = 870;
local yy2 = 550;
local ofs = 90;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.75)
            doTweenAngle('screenTilt', 'camGame', 2, 0.1, 'quadInOut')
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
            doTweenAngle('screenTilt', 'camGame', -2, 0.1, 'quadInOut')
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

function opponentNoteHit(id,data,type,sus)
    if Shake == true then
        triggerEvent('Screen Shake','0.04, 0.03','0.01, 0.02')
    end
end


function onStepHit ()

    if curStep == 255 then
        doTweenAlpha('BLBL', 'BL', 0, 0.3, 'linear');
        Shake = true
    end

    if curStep == 1 then
        doTweenAlpha('BLBL', 'BL', 0, 0.3, 'linear');
    end
    
    if curStep == 239 then
        setProperty('BL.visible', true);
        doTweenAlpha('BLBL', 'BL', 1, 0.3, 'linear');
    end

    if curStep == 771 then
        doTweenAlpha('BLBL', 'BL', 1, 0.2, 'linear');
        doTweenAlpha('bgA', 'bg', 0, 0.2, 'linear');
        doTweenAlpha('dadE', 'dad', 0, 0.2, 'linear');
    end

    if curStep == 778 then
        doTweenAlpha('BLBL', 'BL', 0, 0.2, 'linear');
    end

    if curStep == 836 then
        doTweenAlpha('dadE', 'dad', 1, 0.3, 'linear');
    end


    if curStep == 1091 then
        doTweenAlpha('BLBL', 'BL', 1, 0.2, 'linear');
        doTweenAlpha('bgA', 'bg', 1, 0.2, 'linear');
    end

    if curStep == 1098 then
        doTweenAlpha('BLBL', 'BL', 0, 0.2, 'linear');
    end


    if curStep == 1606 then
        doTweenAlpha('boyfriendE', 'boyfriend', 0, 0.3, 'linear');
        doTweenAlpha('BLBL', 'BL', 1, 0.3, 'linear');
    end

    if curStep == 1676 then
        doTweenColor('bgColor', 'bg', 'DF9B9B', 1, 'quadIn');
    end

    if curStep == 1776 then
        doTweenColor('bgColor', 'bg', 'FFFFFF', 1, 'quadIn');
    end

    if curStep == 1736 then
        doTweenAlpha('BLBL', 'BL', 0, 0.3, 'linear');
    end

    if curStep == 1867 then
        doTweenAlpha('boyfriendE', 'boyfriend', 1, 0.3, 'linear');
    end

    if curStep == 2268 then
        doTweenAlpha('BLBL', 'BL', 1, 2, 'linear');
    end




end