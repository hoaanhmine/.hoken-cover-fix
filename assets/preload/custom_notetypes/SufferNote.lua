function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'SufferNote' then 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Kill note/SufferNote');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end


function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'SufferNote' then
		setProperty('health', getProperty('health')-0.2);
    end
end
