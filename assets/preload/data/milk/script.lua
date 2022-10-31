function opponentNoteHit(id,data,type,sus)
    if Shake == true then
        triggerEvent('Screen Shake','0.04, 0.03','0.01, 0.02')
    end
end


function onStepHit ()

    if curStep == 30 then
        setProperty('1Black1.visible', true);
    end

    if curStep == 125 then
        setProperty('Sponge.visible', true);
        setProperty('dad.visible', false);
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
  
        setProperty('1Black1.visible', true);
    end

    
    if curStep == 1259 then
        setProperty('Yuri.visible', true);
    end

    
    if curStep == 1423 then
   
        triggerEvent('NotemoveDad', '-700', '0.2' )
    end

    if curStep == 1440 then
        setProperty('Jump.visible', true);
 
        triggerEvent('NotemoveDad', '0', '0.1' )
        removeLuaSprite('Sunky3')
        setProperty('Yuri.visible', false);
    end

    
    if curStep == 1452 then
        setProperty('Jump.visible', false);
    end
    
    

    if curStep == 432 then
   
        removeLuaSprite('Sunky')
    end



    if curStep == 908 then
       
        removeLuaSprite('Sunky2')
    end


end


