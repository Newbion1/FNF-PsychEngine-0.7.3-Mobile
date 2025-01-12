function onCreate()
    makeLuaSprite('logo', 'pizzalogo', 230, 200)
    addLuaSprite('logo')
    setProperty('logo.alpha', 0)
    setObjectCamera('logo', 'hud')
end

function onStepHit()
    if curStep == 32 then
        doTweenAlpha('pizzalogo', 'logo', 1, 0.5, 'quadOut')
    elseif curStep == 64 then
        doTweenAlpha('pizzalogo', 'logo', 0, 0.5, 'quadIn')
    end 
end

