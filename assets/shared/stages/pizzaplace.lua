function onCreate()
	makeLuaSprite('bg', 'pizzaplace/bg', -2500, -1050)
	scaleObject('bg', 3, 3)
	addLuaSprite('bg', false)

	makeAnimatedLuaSprite('bacon', 'pizzaplace/bacon', 90, 120)
    addAnimationByPrefix('bacon', 'idle', 'bacon idle', 24, true)
    scaleObject('bacon', 0.8, 0.8)
    addLuaSprite('bacon', false)

	makeAnimatedLuaSprite('pixl', 'pizzaplace/pixl', 2100, 50) 
    addAnimationByPrefix('pixl', 'idle', 'pixl idle', 24, true)
    scaleObject('pixl', 3, 3)
    addLuaSprite('pixl', true)
	
	makeAnimatedLuaSprite('nosaskate', 'pizzaplace/nosa', -2100, 250) 
    addAnimationByPrefix('nosaskate', 'idle', 'nosa idle', 24, true)
    scaleObject('nosaskate', 0.9, 0.9)
    addLuaSprite('nosaskate', true)	
	
	makeAnimatedLuaSprite('yolandihu', 'pizzaplace/ys', 2100, -90) 
    addAnimationByPrefix('yolandihu', 'idle', 'ys idle', 24, true)
    scaleObject('yolandihu', 2, 2)
    addLuaSprite('yolandihu', true)
	
	makeAnimatedLuaSprite('kirbo', 'pizzaplace/kirbo', 2100, 150)
    addAnimationByPrefix('kirbo', 'walk', 'kirbo walk', 24, true)
	addAnimationByPrefix('kirbo', 'standing', 'kirbo stand', 24, true)
	addAnimationByPrefix('kirbo', 'waving', 'kirbo wave', 24, true)
    scaleObject('kirbo', 0.8, 0.8)
    addLuaSprite('kirbo', false)
end

function onBeatHit()
	if curBeat == 256  then
		objectPlayAnimation('kirbo', 'standing', true)
	end
end


function onStepHit()
	if curStep == 32 then
	cameraFlash('game', 'FFFFFF', 0.5, true)
	elseif curStep == 159 then
		doTweenX('pixldrives', 'pixl', -3000, 5, 'linear')
	elseif curStep == 288 then
		cameraFlash('game', 'FFFFFF', 0.5, true)	
	elseif curStep == 416 then	
		doTweenX('sadx', 'nosaskate', 3000, 3, 'linear')
	elseif curStep == 607 then
		doTweenX('theywalk', 'yolandihu', -3000, 6, 'linear')
	elseif curStep == 831 then
		doTweenAlpha('coolpart', 'bg', 0.5, 0.5, 'quadIn')	
	elseif curStep == 959 then
		cameraFlash('game', 'FFFFFF', 0.5, true)
		doTweenAlpha('light', 'bg', 1, 0.5, 'quadOut')	
		objectPlayAnimation('kirbo', 'walk', true)
		doTweenX('kirbowalking', 'kirbo', 620, 5, 'linear')
	elseif curStep == 1215 then	
		cameraFlash('game', 'FFFFFF', 0.5, true)
	elseif curStep == 1231 then
		objectPlayAnimation('kirbo', 'waving', true)
	end
end