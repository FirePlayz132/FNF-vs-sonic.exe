function onCreate()
	-- background shit
	makeLuaSprite('sanic', 'sanic', -600, -300);
	setScrollFactor('sanic', 0.9, 0.9);



	addLuaSprite('sanic', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end