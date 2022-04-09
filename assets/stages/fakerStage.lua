local followchars = true;
local del = 0;
local del2 = 0;
local xx = 1200;
local yy = 800;
local xx2 = 1600;
local yy2 = 900;
local ofs = 50;
function onCreate()
	makeLuaSprite('sky_faker','sky_faker',0,0)
	addLuaSprite('sky_faker',false)
	setLuaSpriteScrollFactor('sky_faker', 0.9, 0.9);

	makeLuaSprite('mountains','mountains',0,0)
	addLuaSprite('mountains',false)
	setLuaSpriteScrollFactor('mountains', 0.9, 0.9);
	
        makeLuaSprite('grass_faker','grass_faker',0,0)
	addLuaSprite('grass_faker',false)
	setLuaSpriteScrollFactor('grass_faker', 1, 1);        
	
	makeLuaSprite('plant','plant',0,0)
	addLuaSprite('plant',false)
	setLuaSpriteScrollFactor('plant', 1, 1);	
	
	makeLuaSprite('tree2','tree2',0,0)
	addLuaSprite('tree2',false)
	setLuaSpriteScrollFactor('tree2', 1, 1);

	makeLuaSprite('tree1','tree1',0,0)
	addLuaSprite('tree1',false)
	setLuaSpriteScrollFactor('tree1', 1, 1);
        
	makeLuaSprite('pillar1','pillar1',0,0)
	addLuaSprite('pillar1',false)
	setLuaSpriteScrollFactor('pillar1', 1, 1);
      
	makeLuaSprite('pillar2','pillar2',0,0)
	addLuaSprite('pillar2',false)
	setLuaSpriteScrollFactor('pillar2', 1, 1);

	makeLuaSprite('flower1','flower1',0,0)
	addLuaSprite('flower1',false)
	setLuaSpriteScrollFactor('flower1', 1, 1);

	makeLuaSprite('flower2','flower2',0,0)
	addLuaSprite('flower2',false)
	setLuaSpriteScrollFactor('flower2', 1, 1);
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
            setProperty('defaultCamZoom',0.9)
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
