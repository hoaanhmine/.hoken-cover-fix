function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Ring note' then 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Kill note/RNN');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end


function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Ring note' then
		setProperty('health', getProperty('health')+0.2);
    end
end
