x = 300
y = -240
Sc = 1

function onCreate()

	makeLuaSprite('bg','RTX/sunky/BG',x,y)
    setLuaSpriteScrollFactor('bg',1,1)
    scaleObject('bg',Sc,Sc)
    addLuaSprite('bg',false)

    makeLuaSprite('Yuri','RTX/sunky/Yuri',1000,100)
    setLuaSpriteScrollFactor('Yuri',1,1)
    scaleObject('Yuri',0.8,0.8)
    addLuaSprite('Yuri',true)
    setProperty('Yuri.visible', false);

    makeLuaSprite('TB','RTX/sunky/Table',x-100,y-40)
    setLuaSpriteScrollFactor('TB',0.8,0.9)
    scaleObject('TB',Sc,Sc)
    addLuaSprite('TB',true)

	makeLuaSprite('EF','RTX/sunky/Effect',x,y)
    setLuaSpriteScrollFactor('EF',1,1)
    scaleObject('EF',Sc,Sc)
    addLuaSprite('EF',true)

    makeLuaSprite('Jump','RTX/sunky/sunkage',0,0)
    setLuaSpriteScrollFactor('Jump',0,0)
    scaleObject('Jump',1,1)
    addLuaSprite('Jump',true)
    setProperty('Jump.visible', false);
    setObjectCamera('Jump', 'other');


    makeLuaSprite('Sponge','RTX/sunky/SpingeBinge',700,280)
    setLuaSpriteScrollFactor('Sponge',1,1)
    scaleObject('Sponge',1.1,1.1)
    addLuaSprite('Sponge',true)
    setProperty('Sponge.visible', false);
    
    makeLuaSprite('Sunky','RTX/sunky/cereal',-1000,-100)
    setLuaSpriteScrollFactor('Sunky',1,1)
    scaleObject('Sunky',1.2,1.2)
    addLuaSprite('Sunky',true)
    setProperty('Sunky.visible', true);
    setObjectCamera('Sunky', 'other');

    makeLuaSprite('Sunky2','RTX/sunky/sunkyMunch',100,-1000)
    setLuaSpriteScrollFactor('Sunky2',1,1)
    scaleObject('Sunky2',1.2,1.2)
    addLuaSprite('Sunky2',true)
    setProperty('Sunky2.visible', true);
    setObjectCamera('Sunky2', 'other');

    makeLuaSprite('Sunky3','RTX/sunky/sunkyPose',1000,1000)
    setLuaSpriteScrollFactor('Sunky3',1,1)
    scaleObject('Sunky3',1.2,1.2)
    addLuaSprite('Sunky3',true)
    setProperty('Sunky3.visible', true);
    setObjectCamera('Sunky3', 'other');
    


	close(true)

end



