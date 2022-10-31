local originy = 0
function onCreate()

	originy = getProperty('dad.y')

end

local xx = 1050.95;
local yy = 1170;
local xx2 = 1872.9;
local yy2 = 1125;
local del = 0;
local del2 = 0;

function onBeatHit()
	if getProperty('dad') then
		daElapsed = elapsed * 30
		i = i + daElapsed
	
		daYvalue = 
		
		setProperty('dad.y', (math.sin(i/20)*75) + 400)
		yy = (math.sin(i/20)*75) + 870
	end

end