local followchars = true;
local del = 0;
local del2 = 0;
local xx = 670;
local yy = 150;
local xx2 = 2750;
local yy2 = 630;
local ofs = 50;
function onCreate()
	makeLuaSprite('Wall','Wall',-900,-800)
	addLuaSprite('Wall',false)
	setLuaSpriteScrollFactor('Wall', 0.9, 0.9);

	makeLuaSprite('Floor','Floor',-900,800)
	addLuaSprite('Floor',false)
	setLuaSpriteScrollFactor('Floor', 1, 1);
	
        makeLuaSprite('pebles','pebles',0,1000)
	addLuaSprite('pebles',false)
	setLuaSpriteScrollFactor('pebles', 1, 1);

	makeLuaSprite('FleetwayBG','FleetwayBG',-2100,-1450)
	addLuaSprite('FleetwayBG',false)
	setLuaSpriteScrollFactor('FleetwayBG', 1, 1);

    makeAnimatedLuaSprite('Emerald Beam Charged','Emerald Beam Charged',0,-1700)
    addAnimationByPrefix('Emerald Beam Charged','Emerald Beam Charged instance','Emerald Beam Charged instance',24,true)
    addLuaSprite('Emerald Beam Charged',false)
    objectPlayAnimation('Emerald Beam Charged','Emerald Beam Charged instance',false)

        makeLuaSprite('The Chamber','The Chamber',0,700)
	addLuaSprite('The Chamber',true)
	setLuaSpriteScrollFactor('The Chamber', 1, 1);

    makeAnimatedLuaSprite('Porker Lewis','Porker Lewis',2900,-900)
    addAnimationByPrefix('Porker Lewis','Porker FG','Porker FG',24,true)
    addLuaSprite('Porker Lewis',true)
    objectPlayAnimation('Porker Lewis','Porker FG',false)

    makeAnimatedLuaSprite('Emeralds','Emeralds',700,-300)
    addAnimationByPrefix('Emeralds','TheEmeralds instance','TheEmeralds instance',24,true)
    addLuaSprite('Emeralds',false)
    objectPlayAnimation('Emeralds','The Emeralds instance',false)
end	

function onBeatHit()-- for every beat
	-- body
end

function onStepHit()-- for every step
	-- body
end

function onUpdate()
        if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.6)
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
            if getProperty('dad.animation.curAnim.name') == 'WHAT' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'Grr' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'Too Slow' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'Laugh' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',0.7)
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
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
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
