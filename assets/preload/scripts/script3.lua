local turnvalue = 20
function onBeatHit()

turnvalue = -20

setProperty('iconP2.angle',-20)
setProperty('iconP1.angle',20)


doTweenAngle('iconTween1','iconP1',0,crochet/1000,'circOut')
doTweenAngle('iconTween2','iconP2',0,crochet/1000,'circOut')




end