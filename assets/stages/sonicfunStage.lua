local followchars = true;
local del = 0;
local del2 = 0;
local xx = 950;
local yy = 560;
local xx2 = 1500;
local yy2 = 630;
local ofs = 50;
function onCreate()
	makeLuaSprite('sonicFUNsky','sonicFUNsky',-100,0)
	addLuaSprite('sonicFUNsky',false)
	setLuaSpriteScrollFactor('sonicFUNsky', 0.9, 0.9);
    
	makeAnimatedLuaSprite('Majin Boppers Back','Majin Boppers Back',0,0)
    	addAnimationByPrefix('Majin Boppers Back','MajinBop2 instance','MajinBop2 instance',24,true)
    	addLuaSprite('Majin Boppers Back',false)
    	objectPlayAnimation('Majin Boppers Back','MajinBop2 instance',false)

	makeLuaSprite('Bush 1','Bush 1',0,300)
	addLuaSprite('Bush 1',false)
	setLuaSpriteScrollFactor('Bush 1', 0.9, 0.9);

	makeLuaSprite('Bush2','Bush2',0,300)
	addLuaSprite('Bush2',false)
	setLuaSpriteScrollFactor('Bush2', 0.9, 0.9);
    
	makeAnimatedLuaSprite('Majin Boppers Front','Majin Boppers Front',0,-400)
    	addAnimationByPrefix('Majin Boppers Front','MajinBop1 instance','MajinBop1 instance',24,true)
    	addLuaSprite('Majin Boppers Front',false)
    	objectPlayAnimation('Majin Boppers Front','MajinBop1 instance',false)

	makeLuaSprite('floor BG','floor BG',0,500)
	addLuaSprite('floor BG',false)
	setLuaSpriteScrollFactor('floor BG', 1, 1);
	
	makeAnimatedLuaSprite('majin-FG2','majin-FG2',200,780)
    	addAnimationByPrefix('majin-FG2','majin front bopper2','majin front bopper2',24,true)
    	addLuaSprite('majin-FG2',true)
    	objectPlayAnimation('majin-FG2','majin front bopper2',false)
	
	makeAnimatedLuaSprite('majin-FG1','majin-FG1',1700,780)
    	addAnimationByPrefix('majin-FG1','majin front bopper','majin front bopper',24,true)
    	addLuaSprite('majin-FG1',true)
    	objectPlayAnimation('majin-FG1','majin front bopper',false)

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
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
