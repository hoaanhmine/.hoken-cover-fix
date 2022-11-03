function onStepHit()

    if curStep == 749 then
        doTweenAlpha('Dad2Fade232', 'Dad2', 0, 0.01, 'linear');
        doTweenAlpha('ShDDFade232', 'ShDD', 0, 0.01, 'linear');
    end

    if curStep == 750 then
        setProperty('Dad2.visible', true)
        setProperty('ShDD.visible', true)
    end

    if curStep == 752 then
        doTweenAlpha('Dad2Fade232', 'Dad2', 1, 1.5, 'linear');
        doTweenAlpha('ShDDFade232', 'ShDD', 0.7, 1.5, 'linear');
    end
end