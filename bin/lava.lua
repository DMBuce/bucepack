#!/usr/bin/env lua

-- usage: lava.lua [pixels] [frames] | magick txt:- lava.png
--
--    generates a lava texture using a cellular automata simulation
--    of a flame heating a kettle with liquid in it
--
-- parameters:
--
--    pixels   the width and height of each animation frame
--
--    frames   the number of frames to generate
--
-- environment variables:
--
--    LAVA_PIXELS                 default width and height of each frame
--
--    LAVA_FRAMES                 default number of frames to generate
--
--    LAVA_SIM_FRAMES             the number of frames to simulate before rendering
--
--    LAVA_BLEND_FRAMES           the number of extra frames to generate and blend
--                                into the beginning of the animation
--
--    LAVA_SEED                   the random seed to use
--
--    LAVA_HOT_COLOR              color to generate in hottest areas
--
--    LAVA_COLD_COLOR             color to generate in coldest areas
--
--    LAVA_FLAME_CHANCE           chance for flame to flare up per pixel each frame
--
--    LAVA_FLAME_MAG              size of flames when they flare up
--
--    LAVA_FLAME_LOSS             heat lost by flame each frame
--
--    LAVA_LIQUID_APPLY_PERCENT   heat preserved in liquid each frame
--
--    LAVA_KETTLE_APPLY_PERCENT   heat applied to liquid by kettle each frame
--
--    LAVA_FLAME_APPLY_PERCENT    heat applied to kettle by flame each frame

local pi, sin = math.pi, math.sin

-- set defaults
num_defaults = {
	-- simulation params
	flame_chance = 0.5,
	flame_mag = 1.5,
	flame_loss = 0.06,
	liquid_apply_percent = 0.9,
	kettle_apply_percent = 0.8,
	flame_apply_percent = 0.01,
	-- animation params
	pixels = 16,
	frames = 3*1024,
	sim_frames = 3*512,
	blend_frames = 64,
	seed = false,
}
str_defaults = {
	hot_color = "#ffff80",
	cold_color = "#9b0000",
}

-- use environment
for var,value in pairs(num_defaults) do
	_G[var] = tonumber(os.getenv("LAVA_"..var:upper())) or value
end
for var,value in pairs(str_defaults) do
	_G[var] = os.getenv("LAVA_"..var:upper()) or value
end

-- parse args
pixels = math.floor(tonumber(arg[1] or pixels))
frames = math.floor(tonumber(arg[2] or frames))

-- wraps an index to the opposite side of a pixel array
function wrap(i)
	if i < 1 then return pixels end
	if i > pixels then return 1 end
	return i
end

-- returns the sign of an angle
function sign(angle)
	if angle <= pi then return 1 end
	return -1
	--if angle == 0 then return 0 end
	--if angle == pi then return 0 end
	--if angle < pi then return 1 end
	--if angle > pi then return -1 end
end

-- converts hex to rgb
-- hex: hex string e.g. "#9a9a9a"
-- return: rgb table e.g. {r=154,g=154,b=154}
function hex2rgb(hex)
	hex = hex:gsub("#","")
	return {
		r=tonumber("0x"..hex:sub(1,2)),
		g=tonumber("0x"..hex:sub(3,4)),
		b=tonumber("0x"..hex:sub(5,6)),
	}
end

---- debug
--for i=1,pixels do
--	for j=1,pixels do
--		local row = i + math.floor( 1.2 * sign( (j-1)*2*pi/pixels) )
--		local col = j + math.floor( 1.2 * sign( (i-1)*2*pi/pixels) )
--		io.write(row+col-i-j.." ")
--		--io.write(row-i.." ")
--		--io.write(col-j.." ")
--	end
--	print()
--end
--os.exit()

-- set up heat arrays
liquid = {}
kettle = {}
flame = {}
for i=1,pixels do
	liquid[i] = {}
	kettle[i] = {}
	flame[i] = {}
	for j=1,pixels do
		liquid[i][j] = 0
		kettle[i][j] = 0
		flame[i][j] = 0
	end
end

-- set up texture array
texture = {}
for i=0,pixels*(frames+blend_frames)-1 do
	texture[i] = {}
end

-- set up palette
hot = hex2rgb(hot_color)
cold = hex2rgb(cold_color)
io.stderr:write("example colors:\n")
for _,heat in ipairs{0.0, 0.25, 0.5, 0.75, 1.0} do
	local red   = math.floor(heat * (hot.r-cold.r) + cold.r)
	local green = math.floor(heat^2 * (hot.g-cold.g) + cold.g)
	local blue  = math.floor(heat^4 * (hot.b-cold.b) + cold.b)
	local rgb = red..","..green..","..blue
	local hex = string.format("%02x%02x%02x", red, green, blue)
	io.stderr:write("  #"..hex.." "..rgb.."\n")
end

---- debug
--print(os.getenv("LAVA_HOT_COLOR"), hot.r, hot.g, hot.b)
--print(os.getenv("LAVA_COLD_COLOR"), cold.r, cold.g, cold.b)
--os.exit()

-- calculate liquid, kettle, and flame heat for each pixel and frame
if seed then math.randomseed(seed) end
for frame=1,sim_frames+frames+blend_frames do
	for i=1,pixels do
		for j=1,pixels do
			-- calculate liquid_heat = the average of the 3x3 liquid cells
			-- around the current cell offset by local flows
			local liquid_heat = 0
			local row = i + math.floor( 1.2 * sin(2*pi * (j-1)/pixels) )
			local col = j + math.floor( 1.2 * sin(2*pi * (i-1)/pixels) )
			--local row = i + math.floor( 1.2 * sign(2*pi * (j-1)/pixels) )
			--local col = j + math.floor( 1.2 * sign(2*pi * (i-1)/pixels) )
			for l=row-1,row+1 do
				for m=col-1,col+1 do
					liquid_heat = liquid_heat + liquid[wrap(l)][wrap(m)]
				end
			end
			liquid_heat = liquid_heat/9

			-- calculate kettle_heat = the average of the 2x2 kettle cells
			-- with current cell in the upper left
			local kettle_heat = 0
			for l=i,i+1 do
				for m=j,j+1 do
					kettle_heat = kettle_heat + kettle[wrap(l)][wrap(m)]
				end
			end
			kettle_heat = kettle_heat/4

			-- calculate flame_heat = current flame cell minus rate of heat loss,
			-- with a chance to flare up
			local flame_heat = flame[i][j] - flame_loss
			if 100*math.random() <= flame_chance then flame_heat = flame_mag end

			-- update liquid, kettle, and flame heat
			liquid[i][j] = liquid_apply_percent*liquid_heat
			             + kettle_apply_percent*kettle_heat
			kettle[i][j] = kettle[i][j] + flame_apply_percent*flame[i][j]
			if kettle[i][j] < 0 then kettle[i][j] = 0 end
			flame[i][j] = flame_heat

			-- save pixel's heat
			if frame > sim_frames then
				local heat = 2*liquid[i][j]
				if heat < 0 then heat = 0 end
				if heat > 1 then heat = 1 end
				texture[i-1][(frame-sim_frames-1)*pixels+j-1] = heat
			end
		end
	end
end

-- blend the last few frames into the first few frames
-- so that the texture loops smoothly
for frame=0,blend_frames-1 do
	for i=0,pixels-1 do
		for j=0,pixels-1 do
			local blendframe = frame+frames
			local blendpercent = frame/blend_frames
			texture[i][frame*pixels+j] =
				   blendpercent  * texture[i][     frame*pixels+j] +
				(1-blendpercent) * texture[i][blendframe*pixels+j]
		end
	end
end

-- print texture in imagemagick's txt format
--
-- # ImageMagick pixel enumeration: 2,2,0,255,srgba
-- 0,0: (0,0,0,255)  #000000FF  srgba(0,0,0,1)
-- 1,0: (0,255,255,255)  #00FFFFFF  srgba(0,255,255,1)
-- 0,1: (255,0,0,255)  #FF0000FF  srgba(255,0,0,1)
-- 1,1: (255,255,255,255)  #FFFFFFFF  srgba(255,255,255,1)
print("# ImageMagick pixel enumeration: "..pixels..","..pixels*frames..",0,255,srgba")
for frame=0,frames-1 do
	for i=0,pixels-1 do
		for j=0,pixels-1 do
			-- figure out pixel color
			local heat  = texture[i][frame*pixels+j]
			local red   = math.floor(heat * (hot.r-cold.r) + cold.r)
			local green = math.floor(heat^2 * (hot.g-cold.g) + cold.g)
			local blue  = math.floor(heat^4 * (hot.b-cold.b) + cold.b)

			-- print pixel
			local rgb = red..","..green..","..blue
			local hex = string.format("%02x%02x%02x", red, green, blue)
			print(table.concat{
				j..","..frame*pixels+i..":",
				" ("..rgb..",255)",
				"  #"..hex.."FF",
				"  srgba("..rgb..",1)",
			})
		end
	end
end

