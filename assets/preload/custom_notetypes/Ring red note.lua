function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'ring red note' then 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Kill note/RDN');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end


function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'ring red note' then
		setProperty('health', getProperty('health')-0.05);
    end
end
