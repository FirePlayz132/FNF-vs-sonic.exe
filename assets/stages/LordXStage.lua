local followchars = true;
local del = 0;
local del2 = 0;
local xx = 1900;
local yy = 1100;
local xx2 = 2800;
local yy2 = 1200;
local ofs = 50;
function onCreate()
	makeLuaSprite('sky_x','sky_x',0,0)
	addLuaSprite('sky_x',false)
	setLuaSpriteScrollFactor('sky_x', 0.9, 0.9);

	makeLuaSprite('hills1','hills1',0,0)
	addLuaSprite('hills1',false)
	setLuaSpriteScrollFactor('hills1', 0.9, 0.9);
	
        makeLuaSprite('hills2','hills2',0,-100)
	addLuaSprite('hills2',false)
	setLuaSpriteScrollFactor('hills2', 1, 1);

	makeLuaSprite('floor_x','floor_x',0,0)
	addLuaSprite('floor_x',false)
	setLuaSpriteScrollFactor('floor_x', 1, 1);

    makeAnimatedLuaSprite('NotKnuckles_Assets','NotKnuckles_Assets',1500,-200)
    addAnimationByPrefix('NotKnuckles_Assets','Notknuckles','Notknuckles',24,true)
    addLuaSprite('NotKnuckles_Assets',false)
    objectPlayAnimation('NotKnuckles_Assets','Notknuckles',false)

    makeAnimatedLuaSprite('TreeAnimatedMoment','TreeAnimatedMoment',3000,800)
    addAnimationByPrefix('TreeAnimatedMoment','TreeAnimated','TreeAnimated',24,true)
    addLuaSprite('TreeAnimatedMoment',false)
    objectPlayAnimation('TreeAnimatedMoment','TreeAnimated',false)

    makeAnimatedLuaSprite('WeirdAssFlower_Assets','WeirdAssFlower_Assets',900,620)
    addAnimationByPrefix('WeirdAssFlower_Assets','flower','flower',24,true)
    addLuaSprite('WeirdAssFlower_Assets',false)
    objectPlayAnimation('WeirdAssFlower_Assets','flower',false)

        makeLuaSprite('smallflowe2','smallflowe2',1100,0)
	addLuaSprite('smallflowe2',false)
	setLuaSpriteScrollFactor('smallflowe2', 1, 1);

        makeLuaSprite('smallflower','smallflower',0,0)
	addLuaSprite('smallflower',true)
	setLuaSpriteScrollFactor('smallflower', 1, 1);
        
	makeLuaSprite('tree','tree',0,-200)
	addLuaSprite('tree',true)
	setLuaSpriteScrollFactor('tree', 1, 1);
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
            setProperty('defaultCamZoom',0.85)
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
             if getProperty('dad.animation.curAnim.name') == 'Im_god' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',0.9)
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
