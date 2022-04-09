local followchars = true;
local del = 0;
local del2 = 0;
local xx = 800;
local yy = 630;
local xx2 = 1100;
local yy2 = 630;
local ofs = 50;
function onCreate()
	makeLuaSprite('SKY','SKY',0,0)
	addLuaSprite('SKY',false)
	setLuaSpriteScrollFactor('SKY', 0.9, 0.9);

	makeLuaSprite('HILLS','HILLS',0,0)
	addLuaSprite('HILLS',false)
	setLuaSpriteScrollFactor('HILLS', 0.9, 0.9);
	
        makeLuaSprite('FLOOR2','FLOOR2',0,-100)
	addLuaSprite('FLOOR2',false)
	setLuaSpriteScrollFactor('FLOOR2', 1, 1);

	makeLuaSprite('FLOOR1','FLOOR1',0,0)
	addLuaSprite('FLOOR1',false)
	setLuaSpriteScrollFactor('FLOOR1', 1, 1);

    makeAnimatedLuaSprite('TailsSpikeAnimated','TailsSpikeAnimated',150,300)
    addAnimationByPrefix('TailsSpikeAnimated','Tails Spike Animated instance','Tails Spike Animated instance',5,true)
    addLuaSprite('TailsSpikeAnimated',false)
    objectPlayAnimation('TailsSpikeAnimated','Tails Spike Animated instance',false)

        makeLuaSprite('frontgrass','frontgrass',0,0)
	addLuaSprite('frontgrass',false)
	setLuaSpriteScrollFactor('frontgrass', 1, 1);

        makeLuaSprite('KNUCKLE','KNUCKLE',580,-100)
	addLuaSprite('KNUCKLE',true)
	setLuaSpriteScrollFactor('KNUCKLE', 1, 1);

        makeLuaSprite('TAIL','TAIL',-139,0)
	addLuaSprite('TAIL',false)
	setLuaSpriteScrollFactor('TAIL', 1, 1);

        makeLuaSprite('EGGMAN','EGGMAN',0,50)
	addLuaSprite('EGGMAN',false)
	setLuaSpriteScrollFactor('EGGMAN', 1, 1);

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
   	setPropertyFromClass('GameOverSubstate', 'characterName', 'ded'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/ 
end
