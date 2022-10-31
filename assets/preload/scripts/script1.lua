-----Credit By hoken https://www.youtube.com/c/hokenbestweirdutaufnf/featured

function onEvent(name, value1, value2)


--------------------------NoteTurn All (Value1 = 1 , 2 ) ,  (Value2 = Time)  ------------------

    if name == "NoteTurn" then --------------NoteTurn

        if value1 == '2' then
            noteTweenX("NoteTurn5", 4, 92, value2, cubeInOut)
            noteTweenX("NoteTurn6", 5, 204, value2, cubeInOut)
            noteTweenX("NoteTurn7", 6, 316, value2, cubeInOut)
            noteTweenX("NoteTurn8", 7, 428, value2, cubeInOut)
            noteTweenX("NoteTurn1", 0, 732, value2, cubeInOut)
            noteTweenX("NoteTurn2", 1, 844, value2, cubeInOut)
            noteTweenX("NoteTurn3", 2, 956, value2, cubeInOut)
            noteTweenX("NoteTurn4", 3, 1068, value2, cubeInOut)
        end

        if value1 == '1' then
            noteTweenX("NoteTurn1", 0, 92, value2, cubeInOut)
            noteTweenX("NoteTurn2", 1, 204, value2, cubeInOut)
            noteTweenX("NoteTurn3", 2, 316, value2, cubeInOut)
            noteTweenX("NoteTurn4", 3, 428, value2, cubeInOut)
            noteTweenX("NoteTurn5", 4, 732, value2, cubeInOut)
            noteTweenX("NoteTurn6", 5, 844, value2, cubeInOut)
            noteTweenX("NoteTurn7", 6, 956, value2, cubeInOut)
            noteTweenX("NoteTurn8", 7, 1068, value2, cubeInOut)
    
        end
    end
----------------------------------------------------------------------------------------

------------------MANIA  (Value1 = Value ,  (Value2 = Time)  ----

if name == "MANIA" then
    doTweenAlpha('MANIASHAGGY', 'MANIA', Value1, value2, 'linear');
end

----------------------------------------------------------------------------------------


------------------NoteMove Dad And BF  (Value1 = NoteX + ( X )) ,  (Value2 = Time)  ----


if name == "NotemoveDad" then --------------NOTEMOVE DAD
	noteTweenX("NoteMove1", 0, 92+value1, value2, cubeInOut)
	noteTweenX("NoteMove2", 1, 204+value1, value2, cubeInOut)
	noteTweenX("NoteMove3", 2, 316+value1, value2, cubeInOut)
	noteTweenX("NoteMove4", 3, 428+value1, value2, cubeInOut)
end

if name == "NotemoveBF" then --------------NOTEMOVE BF
	noteTweenX("NoteMove5", 4, 732+value1, value2, cubeInOut)
	noteTweenX("NoteMove6", 5, 844+value1, value2, cubeInOut)
	noteTweenX("NoteMove7", 6, 956+value1, value2, cubeInOut)
	noteTweenX("NoteMove8", 7, 1068+value1, value2, cubeInOut)
end

if name == "NotemoveBF" then --------------NOTEMOVE BF
    noteTweenX("NoteMove1", 0, 92+value1, value2, cubeInOut)
	noteTweenX("NoteMove2", 1, 204+value1, value2, cubeInOut)
	noteTweenX("NoteMove3", 2, 316+value1, value2, cubeInOut)
	noteTweenX("NoteMove4", 3, 428+value1, value2, cubeInOut)
	noteTweenX("NoteMove5", 4, 732+value1, value2, cubeInOut)
	noteTweenX("NoteMove6", 5, 844+value1, value2, cubeInOut)
	noteTweenX("NoteMove7", 6, 956+value1, value2, cubeInOut)
	noteTweenX("NoteMove8", 7, 1068+value1, value2, cubeInOut)
end

----------------------------------------------------------------------------------------


    
----------------Note Spin Dad And BF (Value1 = degree) ,  (Value2 = Time) --------------

if name == "NotespinDAD" then ---------------NoteSpin ( DAD )
	noteTweenAngle('NoteSpin1',0 , value1 , value2, linear);
	noteTweenAngle('NoteSpin2',1 , value1 , value2, linear);
	noteTweenAngle('NoteSpin3',2 , value1 , value2, linear);
	noteTweenAngle('NoteSpin4',3 , value1 , value2, linear);
end


if name == "NotespinBF" then ---------------NoteSpin ( BF )
	noteTweenAngle('NoteSpin5',4 , value1 , value2, linear);
	noteTweenAngle('NoteSpin6',5 , value1 , value2, linear);
	noteTweenAngle('NoteSpin7',6 , value1 , value2, linear);
	noteTweenAngle('NoteSpin8',7 , value1 , value2, linear);
end

if name == "Notespin" then ---------------NoteSpin ( BF )
    noteTweenAngle('NoteSpin1',0 , value1 , value2, linear);
	noteTweenAngle('NoteSpin2',1 , value1 , value2, linear);
	noteTweenAngle('NoteSpin3',2 , value1 , value2, linear);
	noteTweenAngle('NoteSpin4',3 , value1 , value2, linear);
	noteTweenAngle('NoteSpin5',4 , value1 , value2, linear);
	noteTweenAngle('NoteSpin6',5 , value1 , value2, linear);
	noteTweenAngle('NoteSpin7',6 , value1 , value2, linear);
	noteTweenAngle('NoteSpin8',7 , value1 , value2, linear);
end

------------------------------------------------------------------------------------------


----------------Badapple (value1 = 1 = Normal , 2 = No Gf , 3 = Have GF , 4 = No BF , 5 = No Dad ,, value2 = Time ) -------------------

if name == "Badapple" then
    if value1 == '1' then
        doTweenColor('BFColor', 'boyfriend', 'FFFFFF', value2, 'quadIn');
        doTweenColor('DadColor', 'dad', 'FFFFFF', value2, 'quadIn');
        doTweenColor('GFColor', 'gf', 'FFFFFF', value2, 'quadIn');
        doTweenAlpha('GFFadeBadappels', 'gf', 1, value2, 'linear');
        doTweenAlpha('DADFadeBadappels', 'dad', 1, value2, 'linear');
        doTweenAlpha('BFFadeBadappels', 'bf', 1, value2, 'linear');
        doTweenY('bartopYX', 'bartop.scale', 1.5, value2, 'backIn')
        doTweenY('barbotYX', 'barbot.scale', 1.5, value2, 'backIn')
        doTweenAlpha('BLACKHIDE', 'BLACK', 0, value2, 'linear')
    end

    if value1 == '2' then
        doTweenColor('BFColor', 'boyfriend', '000000', value2, 'quadIn');
        doTweenColor('DadColor', 'dad', '000000', value2, 'quadIn');
        doTweenAlpha('GFFadeBadappels', 'gf', 0, value2, 'linear');
        doTweenY('bartopYX', 'bartop.scale', 3, value2, 'backIn')
        doTweenY('barbotYX', 'barbot.scale', 3, value2, 'backIn')
        doTweenAlpha('BLACKHIDE', 'BLACK', 1, value2, 'linear')
    end

    if value1 == '3' then


        doTweenColor('BFColor', 'boyfriend', '000000', value2, 'quadIn');
        doTweenColor('DadColor', 'dad', '000000', value2, 'quadIn');
        doTweenColor('GFColor', 'gf', '000000', value2, 'quadIn');
        doTweenY('bartopYX', 'bartop.scale', 3, value2, 'backIn')
        doTweenY('barbotYX', 'barbot.scale', 3, value2, 'backIn')
        doTweenAlpha('BLACKHIDE', 'BLACK', 1, value2, 'linear')
    end

    if value1 == '4' then
        doTweenColor('DadColor', 'dad', '000000', value2, 'quadIn');
        doTweenColor('GFColor', 'gf', '000000', value2, 'quadIn');
        doTweenAlpha('BFFadeBadappels', 'boyfriend', 0, value2, 'linear');
        doTweenY('bartopYX', 'bartop.scale', 3, value2, 'backIn')
        doTweenY('barbotYX', 'barbot.scale', 3, value2, 'backIn')
        doTweenAlpha('BLACKHIDE', 'BLACK', 1, value2, 'linear')
    end

    if value1 == '5' then
        doTweenColor('BFColor', 'boyfriend', '000000', value2, 'quadIn');
        doTweenColor('GFColor', 'gf', '000000', value2, 'quadIn');
        doTweenAlpha('DADFadeBadappels', 'dad', 0, value2, 'linear');
        doTweenY('bartopYX', 'bartop.scale', 3, value2, 'backIn')
        doTweenY('barbotYX', 'barbot.scale', 3, value2, 'backIn')
        doTweenAlpha('BLACKHIDE', 'BLACK', 1, value2, 'linear')
    end
end



------------------------------------------------------------------------------------------

----------------BarScale (value1 = Scale ,, value2 = Time ) -------------------

if name == "BarScale" then

    doTweenY('bartopYX', 'bartop.scale', value1, value2, 'backIn')
    doTweenY('barbotYX', 'barbot.scale', value1, value2, 'backIn')

end



------------------------------------------------------------------------------------------

----------------GF Fade (value1 = '1' = visible , '0' = empty , value2 = Time ) -------------------

if name == "BLACK" then

    doTweenAlpha('BGDDDF', '1Black1', value1, value2, 'linear')
    setProperty('1Black1.visible', true)

end

------------------------------------------------------------------------------


----------------GF Fade (value1 = '1' = visible , '0' = empty , value2 = Time ) -------------------

if name == "Gffade" then

    if value1 == '0' then
        doTweenAlpha('gfWE', 'gf', 0, value2, 'linear')
    end
    
    if value1 == '1' then
        doTweenAlpha('gfWE', 'gf', 1, value2, 'linear')
    end


end


------------------------------------------------------------------------------------------

---------------------------Note (value1 = '1' = Change Note) ------------------------

if name == "Note" then
    if value1 == '' then
		else
			for i = 0, getProperty('opponentStrums.length')-1 do
				setPropertyFromGroup('opponentStrums', i, 'texture', value2);
			end

			for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
				setPropertyFromGroup('unspawnNotes', i, 'texture', value2);
				end
			end

			for i = 0, getProperty('playerStrums.length')-1 do
			setPropertyFromGroup('playerStrums', i, 'texture', value2);
			end

			for i = 0, getProperty('unspawnNotes.length')-1 do
				if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', value2);
				end
			end     
    end 
end


------------------------------------------------------------------------------------------



end