
local path = minetest.get_modpath("mobs_animal")

-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")
mobs.intllib = S

-- Animals

dofile(path .. "/chicken.lua") -- JKmurray
dofile(path .. "/bantha.lua") -- KrupnoPavel
dofile(path .. "/rat.lua") -- PilzAdam
dofile(path .. "/sheep.lua") -- PilzAdam
dofile(path .. "/warthog.lua") -- KrupnoPavel
dofile(path .. "/bee.lua") -- KrupnoPavel
dofile(path .. "/bunny.lua") -- ExeterDad
dofile(path .. "/tooka.lua") -- Jordach/BFD

dofile(path .. "/lucky_block.lua")

print (S("[MOD] Mobs Redo Animals loaded"))
