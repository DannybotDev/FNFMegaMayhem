function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)
end


function update (elapsed)
	local currentBeat = (songPos / 1000)*(bpm/60)
	for i=0,7 do
		setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0.25) * math.pi), i)
		setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*0.25) * math.pi), i)       
        setActorAngle(getActorAngle(i) + 1, i)
        setActorY(+ 10 * math.cos((currentBeat + i*0.25) * math.pi), dad)
	end
end

function beatHit (beat)
   -- do nothing
end

function stepHit (step)
	-- do nothing
end

function keyPressed (key)
	-- do nothing
end

print("Mod Chart script loaded :)")