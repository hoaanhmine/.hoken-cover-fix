local modchart = true



function onUpdate(elapsed)
	if modchart == true then
		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
		end
	end
end