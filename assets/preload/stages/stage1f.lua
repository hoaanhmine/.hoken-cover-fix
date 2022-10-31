local DataDDS = {
 isPixelStage = false,
 defaultZoom = 0.9}
 local stageData = {}
 local charData ={
    gf = {
        order = -1,
        x = 400,
        scrollY = 1,
        y = 130,
        flipY = false,
        flipX = false,
        scaleY = 1,
        camOffsets = {
            y = 0,
            x = 0
        },
        visible = true,
        alpha = 1,
        scrollX = 1,
        angle = 0,
        antialiasing = true,
        scaleX = 1
    },
    dad = {
        order = -1,
        x = 100,
        scrollY = 1,
        y = 100,
        flipY = false,
        flipX = false,
        scaleY = 1,
        camOffsets = {
            y = 0,
            x = 0
        },
        visible = true,
        alpha = 1,
        scrollX = 1,
        angle = 0,
        antialiasing = true,
        scaleX = 1
    },
    boyfriend = {
        order = -1,
        x = 770,
        scrollY = 1,
        y = 450,
        flipY = false,
        flipX = false,
        scaleY = 1,
        camOffsets = {
            y = 0,
            x = 0
        },
        visible = true,
        alpha = 1,
        scrollX = 1,
        angle = 0,
        antialiasing = true,
        scaleX = 1
    }
}
--[--------------------------------------------------------------------]--

function loadData()
    for _s, _d in pairs(stageData) do
        if not _d.isText then
            if not _d.isGraphic then
                if not _d.isAnimated then
                    makeLuaSprite(_s, _d.image, _d.x, _d.y)
                else
                    makeAnimatedLuaSprite(_s, _d.image, _d.x, _d.y)
                    for _, a in pairs(_d.animations) do
                        addAnimationByPrefix(_s, _, a.animation, a.FPS, a.loop)
                    end
                end
            else
                makeLuaSprite(_s, "", _d.x, _d.y)
                makeGraphic(_s, _d.width, _d.height, _d.hex)
            end
            addLuaSprite(_s, true)
        else
            makeLuaText(_s, _d.text, 0, _d.x, _d.y)
            setTextSize(_s, _d.size)
            setTextColor(_s, _d.hex)
            addLuaText(_s, true)
        end
        setObjectCamera(_s, _d.camera)
        setScrollFactor(_s, _d.scrollX, _d.scrollY)
        setProperty(_s..'.flipX', _d.flipX)
        setProperty(_s..'.flipY', _d.flipY)
        setProperty(_s..'.alpha', _d.alpha)
        setProperty(_s..'.visible', _d.visible)
        setProperty(_s..'.scale.x', _d.scaleX)
        setProperty(_s..'.scale.y', _d.scaleY)
        setProperty(_s..'.angle', _d.angle)
        setObjectOrder(_s, _d.order)
    end
end

function loadCharData()
    for _s, _d in pairs(charData) do
        setScrollFactor(_s, _d.scrollX, _d.scrollY)
        setProperty(_s..'.flipX', _d.flipX)
        setProperty(_s..'.flipY', _d.flipY)
        setProperty(_s..'.alpha', _d.alpha)
        setProperty(_s..'.angle', _d.angle)
        setProperty(_s..'.visible', _d.visible)
        setProperty(_s..'.scale.x', _d.scaleX)
        setProperty(_s..'.scale.y', _d.scaleY)
        setObjectOrder(_s, _d.order)
    end
end

function onCreate()
    loadData()
end

function onCreatePost()
    loadCharData()
end

-- Made By Cherif's Stage Editor
        
return {stageData, charData, DataDDS}

