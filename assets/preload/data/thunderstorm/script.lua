
function onStepHit() ----- Character
    if curStep == 1 then
        doTweenAlpha('MANIASHAGGY', 'MANIA', 0, 0.5, 'linear');
    end

    if curStep == 557 then
        triggerEvent('Set Cam Zoom', '0.9', '19')
    end

    if curStep == 832 then
        doTweenAlpha('MANIASHAGGY', 'MANIA', 0.3, 0.5, 'linear');
    end
    
    if curStep == 961 then
        doTweenAlpha('MANIASHAGGY', 'MANIA', 0, 0.5, 'linear');
        triggerEvent('Set Cam Zoom', '0.7', '2')
    end

    if curStep == 1017 then
        triggerEvent('Set Cam Zoom', '0.9', '0.5')
    end

    if curStep == 1055 then
        triggerEvent('Set Cam Zoom', '0.7', '0.5')
    end

    if curStep == 1124 then
        triggerEvent('Set Cam Zoom', '0.9', '0.5')
    end

    if curStep == 1215 then
        doTweenAlpha('MANIASHAGGY', 'MANIA', 0.3, 0.5, 'linear');
    end

    if curStep == 1346 then
        doTweenAlpha('MANIASHAGGY', 'MANIA', 0, 0.5, 'linear');
        triggerEvent('Set Cam Zoom', '0.7', '0.5')
    end

    if curStep == 1665 then
        triggerEvent('Set Cam Zoom', '1', '19')
    end

    if curStep == 2035 then
        doTweenAlpha('MANIASHAGGY', 'MANIA', 1, 0.5, 'linear');
    end


end