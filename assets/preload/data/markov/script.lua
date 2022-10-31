

function onCreate()

    makeLuaText('watermark', songName .. " - FNF ( UTAU Cover ) By Hoken :/ ", 0, 0, 5);
    addLuaText('watermark');
    setProperty('watermark.size', 20);
    doTweenY('healthBar', 'healthBar', -2000, 0.01, cubeInOut)
    doTweenX('timeBar', 'timeBar', -2000, 0.01, cubeInOut)
    scaleObject('timeBar', 3, 1);
    doTweenY('scoreTxtY', 'scoreTxt', 1000, 0.01, cubeInOut)
    doTweenX('scoreTxtX', 'scoreTxt', 0, 0.01, cubeInOut)
    doTweenAlpha('iconP11', 'iconP1', 0, 0.01, 'linear');
    doTweenAlpha('iconP22', 'iconP2', 0, 0.01, 'linear');

    noteTweenAlpha("NoteAlpha0" , 0 , 0.8, 0.1, cubeInOut)
    noteTweenAlpha("NoteAlpha1" , 1 , 0.8, 0.2, cubeInOut)
    noteTweenAlpha("NoteAlpha2" , 2 , 0.8, 0.3, cubeInOut)
    noteTweenAlpha("NoteAlpha3" , 3 , 0.8, 0.4, cubeInOut)
    noteTweenAlpha("NoteAlpha4" , 4 , 0.8, 0.5, cubeInOut)
    noteTweenAlpha("NoteAlpha5" , 5 , 0.8, 0.6, cubeInOut)
    noteTweenAlpha("NoteAlpha6" , 6 , 0.8, 0.7, cubeInOut)
    noteTweenAlpha("NoteAlpha7" , 7 , 0.8, 0.8, cubeInOut)

    
end


function onBeatHit()
    
    if curBeat % 2 == 0 then ----- Character
      objectPlayAnimation('Dad2', 'idle');
    end

    
end

function onUpdate(elapsed)
    setTextString('scoreTxt', 'Score: '..getProperty('songScore')..' - Misses: '..getProperty('songMisses'))
    setProperty('timeTxt.size', 30)
    doTweenAlpha('timeTxtT', 'timeTxt', 0.7, 0.01, 'linear');
    doTweenY('timeTxtY', 'timeTxt', 10, 0.01, cubeInOut)
    doTweenX('timeTxtX', 'timeTxt', 1050, 0.01, cubeInOut)
    doTweenAlpha('watermarkT', 'watermark', 0.7, 0.01, 'linear');
    doTweenX('watermark', 'watermark', 14, 3, circInOut)
    doTweenY('scoreTxtScY', 'scoreTxt', 670, 3, cubeInOut)
    


end


lastNote = {0, ""}

 function opponentNoteHit(id,d,t,s)

    lastNote[1] = d
    lastNote[2] = t
    
    if lastNote[2] == "No Animation" then -- Change "No Animation" to be your note type, usually you can just keep it as no anim assuming you arent using it elsewhere
    objectPlayAnimation('Dad2', lastNote[1]);
    objectPlayAnimation('Dad27', lastNote[1]);
    end
 end





    
    function onUpdate()
        NoteXBF = -320
        NoteXBoss = 320  


        local xx = defaultOpponentX + 400;
        local yy = defaultOpponentY + 300;
        local xx2 = defaultBoyfriendX + (-50);
        local yy2 = defaultBoyfriendY + 410;
        local xx3 = defaultGirlfriendX;
        local yy3 = defaultGirlfriendY + 290;
        local ofs = 60;
        local followchars = true;
        local del = 0;
        local del2 = 0;

        --CAMERA FOLLOW Updates    
        if del > 0 then
            del = del - 1
        end
        if del2 > 0 then
            del2 = del2 - 1
        end
        if followchars == true then
            if mustHitSection == false then
    
                --DAD
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
                --BOYFRIEND
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
    
    
                --GIRLFRIEND
                if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',xx3-ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                end
    
            end
        else
            triggerEvent('Camera Follow Pos','','')
        end
    
    
    end


----Boss X Y 250, 500

function onStepHit()

    if curStep == 1 then
        doTweenAlpha('BL', 'BL', 0, 5, 'linear');        
        doTweenAlpha('gfWE', 'gf', 0, 0.01, 'linear');
        doTweenAlpha('bfWE', 'boyfriend', 0, 0.01, 'linear');
        doTweenAlpha('dadWE', 'dad', 0, 0.01, 'linear');
        noteTweenAlpha("NoteAlpha0" , 0 , 0.9, TimeA, cubeInOut)
        noteTweenAlpha("NoteAlpha1" , 1 , 0.9, TimeA, cubeInOut)
        noteTweenAlpha("NoteAlpha2" , 2 , 0.9, TimeA, cubeInOut)
        noteTweenAlpha("NoteAlpha3" , 3 , 0.9, TimeA, cubeInOut)
        noteTweenAlpha("NoteAlpha4" , 4 , 0.9, TimeA, cubeInOut)
        noteTweenAlpha("NoteAlpha5" , 5 , 0.9, TimeA, cubeInOut)
        noteTweenAlpha("NoteAlpha6" , 6 , 0.9, TimeA, cubeInOut)
        noteTweenAlpha("NoteAlpha7" , 7 , 0.9, TimeA, cubeInOut)

    end

    if curStep == 105 then
        doTweenAlpha('dadWE', 'dad', 1, 1, 'linear');
    end

    if curStep == 384 then
        doTweenAlpha('BL', 'BL', 1, 2.7, 'linear');
    end

    if curStep == 432 then
        doTweenAlpha('BL', 'BL', 0, 0.2, 'linear');
    end


    if curStep == 448 then
        doTweenAlpha('Rb', 'Rb', 0, 0.01, 'linear');
        doTweenAlpha('gfWE', 'gf', 1, 0.01, 'linear');
        doTweenAlpha('bfWE', 'boyfriend', 1, 0.01, 'linear');
        doTweenAlpha('dadWE', 'dad', 1, 0.01, 'linear')

    end



    if curStep == 960 then
        doTweenAlpha('BL', 'BL', 1, 1, 'linear');
    end

    if curStep == 992 then
        doTweenAlpha('Rb', 'Rb', 1, 0.01, 'linear');
        doTweenAlpha('gfWE', 'gf', 0, 0.01, 'linear');
        doTweenAlpha('bfWE', 'boyfriend', 0, 0.01, 'linear');
        doTweenAlpha('dadWE', 'dad', 1, 0.01, 'linear')
        doTweenAlpha('BL', 'BL', 0, TimeA, 'linear');
    end

    if curStep == 1500 then
        doTweenAlpha('BL', 'BL', 1, 0.2, 'linear');
    end

    if curStep == 1513 then
        doTweenAlpha('RbC', 'Rb', 0, 0.01, 'linear');
        doTweenAlpha('bgA', 'bg', 0, 0.01, 'linear');
        doTweenAlpha('skyA', 'sky', 0, 0.01, 'linear');
        doTweenAlpha('gfWE', 'gf', 0, 0.01, 'linear');
        doTweenAlpha('bfWE', 'boyfriend', 1, 0.01, 'linear');
        doTweenAlpha('dadWE', 'dad', 1, 0.01, 'linear')
        doTweenAlpha('BL', 'BL', 0.6, TimeA, 'linear');
    end

    if curStep == 1632 then
        doTweenAlpha('bgA', 'bg', 1, 9, 'linear');
        doTweenAlpha('skyA', 'sky', 1, 9, 'linear');
        doTweenAlpha('gfWE', 'gf', 1, 9, 'linear');
        doTweenAlpha('BL', 'BL', 0, 9, 'linear');
    end

    if curStep == 2263 then
        doTweenAlpha('BL', 'BL', 1, 0.2, 'linear');
    end


    if curStep == 2266 then
        doTweenAlpha('Rb', 'Rb', 1, 0.01, 'linear');
        doTweenAlpha('gfWE', 'gf', 0, 0.01, 'linear');
        doTweenAlpha('bfWE', 'boyfriend', 0, 0.01, 'linear');
    end

    if curStep == 2267 then
        doTweenAlpha('BL', 'BL', 0, 0.1, 'linear');
    end


    
    if curStep == 2815 then
        doTweenAlpha('BL', 'BL', 1, 0.01, 'linear');
    end

    if curStep == 2831 then
        doTweenAlpha('BL', 'BL', 0, 0.01, 'linear');
    end

    if curStep == 2879 then
        doTweenAlpha('BL', 'BL', 1, 0.01, 'linear');
    end


    if curStep == 433 then
        triggerEvent('Set Cam Zoom', '1.3', '0.2' )
    end

    if curStep == 454 then
        triggerEvent('Set Cam Zoom', '0.95', '4' )
    end

    if curStep == 708 then
        triggerEvent('Set Cam Zoom', '1.5', 'TimeA' )
    end

    if curStep == 833 then
        triggerEvent('Set Cam Zoom', '0.95', '2' )
    end

    if curStep == 928 then
        triggerEvent('Set Cam Zoom', '1.4', '1' )
    end

    if curStep == 959 then
        triggerEvent('Set Cam Zoom', '1.7', '0.7' )
    end

    if curStep == 985 then
        triggerEvent('Set Cam Zoom', '0.95', '2.5' )
    end

    if curStep == 1226 then
        triggerEvent('Set Cam Zoom', '1.3', '0.2' )
    end

    if curStep == 1231 then
        triggerEvent('Set Cam Zoom', '1.4', '0.1' )
    end

    if curStep == 1234 then
        triggerEvent('Set Cam Zoom', '1.5', '0.2' )
    end

    if curStep == 1240 then
        triggerEvent('Set Cam Zoom', '0.95', '2' )
    end

    if curStep == 1790 then
        triggerEvent('Set Cam Zoom', '1.5', '0.1' )
    end

    if curStep == 1793 then
        triggerEvent('Set Cam Zoom', '0.95', '0.1' )
    end

    if curStep == 1889 then
        triggerEvent('Set Cam Zoom', '1.3', '0.3' )
        doTweenColor('BFColor', 'boyfriend', '000000', 0.3, 'quadIn');
        doTweenAlpha('gfWE', 'gf', 0, 0.3, 'linear');
        doTweenColor('DadColor', 'dad', '000000', 0.3, 'quadIn');
        doTweenColor('GFColor', 'gf', '000000', 0.3, 'quadIn');
        doTweenY('bartopYX', 'bartop.scale', 3, 0.3, 'backIn')
        doTweenY('barbotYX', 'barbot.scale', 3, 0.3, 'backIn')
        doTweenAlpha('WTHA', 'WTH', 1, 0.3, 'linear')
    end

    if curStep == 2011 then
        triggerEvent('Set Cam Zoom', '0.95', '0.3' )
        doTweenColor('BFColor', 'boyfriend', 'FFFFFF', 0.3, 'quadIn');
        doTweenColor('DadColor', 'dad', 'FFFFFF', 0.3, 'quadIn');
        doTweenColor('GFColor', 'gf', 'FFFFFF', 0.3, 'quadIn');
        doTweenY('bartopYX', 'bartop.scale', 1.5, 0.3, 'backIn')
        doTweenY('barbotYX', 'barbot.scale', 1.5, 0.3, 'backIn')
        doTweenAlpha('gfWE', 'gf', 1, 0.3, 'linear');
        doTweenAlpha('WTHA', 'WTH', 0, 0.3, 'linear')
    end


end