function opponentNoteHit(id,data,type,sus)
    if Shake == true then
        triggerEvent('Screen Shake','0.04, 0.03','0.01, 0.02')
    end
end


function onStepHit ()

    if curStep == 30 then
        doTweenAlpha('BGDDDF', '1Black1', 0, 0.1, 'linear')
        setProperty('1Black1.visible', true);
    end

    if curStep == 120 then
        doTweenAlpha('BGDDDF', '1Black1', 1, 0.6, 'linear')
    end

    if curStep == 125 then
        setProperty('Sponge.visible', true);
        setProperty('dad.visible', false);
    end

    if curStep == 130 then
        doTweenAlpha('BGDDDF', '1Black1', 0, 0.3, 'linear')
    end

    if curStep == 132 then
        Shake = true
    end

    
    if curStep == 143 then
        removeLuaSprite('Sponge')
        setProperty('dad.visible', true);
    end

    if curStep == 145 then
        Shake = false
    end

    if curStep == 272 then
        triggerEvent('Notespin', '360', '7' )
    end


    if curStep == 1230 then
        doTweenAlpha('BGDDDF', '1Black1', 0, 0.1, 'linear')
        setProperty('1Black1.visible', true);
    end

    if curStep == 1249 then
        doTweenAlpha('BGDDDF', '1Black1', 1, 0.3, 'linear')
    end

    if curStep == 1259 then
        setProperty('Yuri.visible', true);
    end

    if curStep == 1270 then
        doTweenAlpha('BGDDDF', '1Black1', 0, 0.3, 'linear')
    end

    if curStep == 1423 then
        doTweenAlpha('BGDDDF', '1Black1', 1, 0.3, 'linear')
        triggerEvent('NotemoveDad', '-700', '0.2' )
    end

    if curStep == 1440 then
        setProperty('Jump.visible', true);
        doTweenAlpha('BGDDDF', '1Black1', 0, 0.3, 'linear')
        triggerEvent('NotemoveDad', '0', '0.1' )
        removeLuaSprite('Sunky3')
        setProperty('Yuri.visible', false);
    end

    
    if curStep == 1452 then
        setProperty('Jump.visible', false);
    end
    
    if curStep == 271 then
        doTweenX('SunkyX', 'Sunky', 1500, 10, cubeInOut)
    end

    if curStep == 432 then
        doTweenY('Sunky2Y', 'Sunky2', 1500, 8, cubeInOut)
        removeLuaSprite('Sunky')
    end

    if curStep == 549 then
        doTweenY('Sunky2Y', 'Sunky2', -1500, 8, cubeInOut)
    end

    if curStep == 908 then
        doTweenY('Sunky3Y', 'Sunky3', 1500, 8, cubeInOut)
        doTweenX('Sunky3X', 'Sunky3', 1500, 8, cubeInOut)
        removeLuaSprite('Sunky2')
    end

    if curStep == 1124 then
        doTweenY('Sunky3Y', 'Sunky3', -1500, 8, cubeInOut)
        doTweenX('Sunky3X', 'Sunky3', -1500, 8, cubeInOut)
    end

    if curStep == 1694 then
        doTweenAlpha('BGDDDF', '1Black1', 0.3, 0.1, 'linear')
    end

    if curStep == 1710 then
        doTweenAlpha('BGDDDF', '1Black1', 0.5, 0.1, 'linear')
    end

    if curStep == 1727 then
        doTweenAlpha('BGDDDF', '1Black1', 0.7, 0.1, 'linear')
    end

    if curStep == 1742 then
        doTweenAlpha('BGDDDF', '1Black1', 1, 0.1, 'linear')
    end
end


