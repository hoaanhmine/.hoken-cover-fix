local tilin = false
local width = 0
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 600;
local yy = 500;
local xx2 = 1000;
local yy2 = 500;
local ofs = 85;
local followchars = true;
local stopMoving = false;
local del = 0;
local del2 = 0;
local BGX = -900
local BGY = -300
local SCX = 1
local SCY = 1

function onCreate()
 makeLuaSprite('furnace_gotcha', 'starved/furnace_gotcha', 2500, 490);
addLuaSprite('furnace_gotcha', false);
scaleObject('furnace_gotcha', 5, 5);
setProperty('furnace_gotcha.visible', false);
makeLuaSprite('Sh', 'Shadow', 0, 0);
setScrollFactor('Sh', 2,2);
addLuaSprite('Sh', true);
doTweenAlpha('Sh', 'Sh', 0.75, 0.01, 'linear');
  width = getProperty("stadustFloor.width") 


 makeLuaSprite('stardustBg', 'starved/stardustBg', -1000, -750);
 width = getProperty("stardustBg.width")    
 setLuaSpriteScrollFactor('stardustBg', 1, 1);
  scaleObject('stardustBg', 1, 1);
  addLuaSprite('stardustBg', false);
  setProperty('stardustBg.visible', false);
  
  makeLuaSprite('stardustBg2', 'starved/stardustBg2', 3600, -750);
 width = getProperty("stardustBg2.width")    
 setLuaSpriteScrollFactor('stardustBg2', 1, 1);
  scaleObject('stardustBg2', 1, 1);
  addLuaSprite('stardustBg2', false);
  setProperty('stardustBg2.visible', false);
 
 makeLuaSprite('stardustFloor', 'starved/stardustFloor', -1000, -1460);
 width = getProperty("stardustFloor.width")    
 setLuaSpriteScrollFactor('stardustFloor', 1, 1);
  scaleObject('stardustFloor', 1, 1);
  addLuaSprite('stardustFloor', true);
  setProperty('stardustFloor.visible', false);
  
  makeLuaSprite('stardustFloor2', 'starved/stardustFloor2', 3600, -1460);
 width = getProperty("stardustFloor2.width")    
 setLuaSpriteScrollFactor('stardustFloor2', 1, 1);
  scaleObject('stardustFloor2 ', 1, 1);
  addLuaSprite('stardustFloor2', true);
  setProperty('stardustFloor2.visible', false);
  
  makeLuaSprite('red', 'starved/red', -500, -400);
addLuaSprite('red', true);
scaleObject('red', 2, 2);
setProperty('red.visible', false);


   setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic-gameover')
   setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'prey-death')
   setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'prey-loop')
   setPropertyFromClass('GameOverSubstate', 'endSoundName', 'prey-retry')
end




function onEvent(name,value1,value2)
if name == "esotilin" then
if value1 == "jeje" then
setProperty('stardustFloor.visible', true);
setProperty('stardustFloor2.visible', true);
setProperty('stardustBg.visible', true);
setProperty('stardustBg2.visible', true);
doTweenX('stardustFloorTweene', 'stardustFloor', -5600, 1.5, 'linear'); 
doTweenX('stardustFloor2Tweene', 'stardustFloor2', -1000, 1.5, 'linear'); 
doTweenX('stardustBgTweene', 'stardustBg', -5600, 1.5, 'linear'); 
doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 1.5 , 'linear'); 
end
end
end

function onTweenCompleted(tag)
if tag == 'stardustFloorTweene' then
setProperty("stardustFloor.x", -1000)
setProperty("stardustFloor2.x", 3600)
setProperty("stardustBg.x", -1000)
setProperty("stardustBg2.x", 3600)
doTweenX('stardustFloorTweene', 'stardustFloor', -5600, 1.5, 'linear'); 
doTweenX('stardustFloor2Tweene', 'stardustFloor2', -1000, 1.5, 'linear'); 
doTweenX('stardustBgTweene', 'stardustBg', -5600, 1.5, 'linear'); 
doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 1.5, 'linear'); 
    end
end

function onUpdate(elapsed)
  setObjectCamera('Sh', 'other');

  if tag == ('stardustFloorTweene') then
    setProperty("stardustFloor.x", -1000)
    setProperty("stardustFloor2.x", 3600)
    setProperty("stardustBg.x", -1000)
    setProperty("stardustBg2.x", 3600)
    doTweenX('stardustFloorTweene', 'stardustFloor', -3000, 0.000001, 'linear');
    doTweenX('stardustFloor2Tweene', 'stardustFloor2', 500, 0.000001, 'linear');
    doTweenX('stardustBgTweene', 'stardustBg', -5600, 15, 'linear');
    doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 15, 'linear');
  end


daElapsed = elapsed * 30
i = i + daElapsed


if del > 0 then
  del = del - 1
end
if del2 > 0 then
  del2 = del2 - 1
end
   if followchars == true then
      if mustHitSection == false then
          setProperty('defaultCamZoom',0.5)
          doTweenAngle('screenTilt', 'camGame', 2, 0.1, 'quadInOut')
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
    
          setProperty('defaultCamZoom',0.6)
          doTweenAngle('screenTilt', 'camGame', -2, 0.1, 'quadInOut')
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
          if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
              triggerEvent('Camera Follow Pos',xx2,yy2)
          end
          if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
              triggerEvent('Camera Follow Pos',xx2,yy2)
          end
      end
  else
      triggerEvent('Camera Follow Pos','','')
  end
  
end
