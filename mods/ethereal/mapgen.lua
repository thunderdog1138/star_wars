
-- clear default mapgen biomes, decorations and ores
minetest.clear_registered_biomes()
minetest.clear_registered_decorations()
--minetest.clear_registered_ores()

local path = minetest.get_modpath("ethereal")

dofile(path .. "/ores.lua")

path = path .. "/schematics/"

local dpath = minetest.get_modpath("default") .. "/schematics/"

-- tree schematics
dofile(path .. "bamboo_tree.lua")
dofile(path .. "bush.lua")
dofile(path .. "waterlily.lua")
dofile(path .. "volcanom.lua")
dofile(path .. "volcanol.lua")
dofile(path .. "palm_tree.lua")
dofile(path .. "pine_tree.lua")
dofile(path .. "mushroomone.lua")
dofile(path .. "brylark_tree.lua")
dofile(path .. "jogan_tree.lua")
dofile(path .. "uneti_tree.lua")
dofile(path .. "wroshyr_tree.lua")

--= Biomes

local add_biome = function(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)

	if p ~= 1 then return end

	minetest.register_biome({
		name = a,
		node_dust = b,
		node_top = c,
		depth_top = d,
		node_filler = e,
		depth_filler = f,
		node_stone = g,
		node_water_top = h,
		depth_water_top = i,
		node_water = j,
		node_river_water = k,
		y_min = l,
		y_max = m,
		heat_point = n,
		humidity_point = o,
	})
end

add_biome("underground", nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
	-31000, -192, 50, 50, 1)

add_biome("mountain", nil, "default:snow", 1, "default:snow_block", 2,
	nil, nil, nil, nil, nil, 140, 31000, 50, 50, 1)

add_biome("desert", nil, "default:desert_sand", 1, "default:desert_sand", 3,
	"default:desert_stone", nil, nil, nil, nil, 3, 23, 35, 20, ethereal.desert)

add_biome("desert_ocean", nil, "default:sand", 1, "default:sand", 2,
	"default:desert_stone", nil, nil, nil, nil, -192, 3, 35, 20, ethereal.desert)

if ethereal.glacier == 1 then

	minetest.register_biome({
		name = "glacier",
		node_dust = "default:snow_block",
		node_top = "default:snow_block",
		depth_top = 1,
		node_filler = "default:snow_block",
		depth_filler = 3,
		node_stone = "default:ice",
		node_water_top = "default:ice",
		depth_water_top = 10,
		--node_water = "",
		node_river_water = "default:ice",
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		y_min = -8,
		y_max = 31000,
		heat_point = 0,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "glacier_ocean",
		node_dust = "default:snow_block",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -9,
		heat_point = 0,
		humidity_point = 50,
	})
end

add_biome("clearing", nil, "default:grass_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 71, 45, 65, 1) -- ADDED

add_biome("bamboo", nil, "default:bamboo_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 25, 70, 45, 75, ethereal.bamboo)

--add_biome("bamboo_ocean", nil, "default:sand", 1, "default:sand", 2,
	--nil, nil, nil, nil, nil, -192, 2, 45, 75, ethereal.bamboo)

add_biome("mesa", nil, "default:savanna_dirt", 1, "bakedclay:orange", 15,
	nil, nil, nil, nil, nil, 1, 71, 25, 28, ethereal.mesa)

add_biome("mesa_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 1, 25, 28, ethereal.mesa)

add_biome("alpine", nil, "default:snow_dirt", 1, "default:dirt", 2,
	nil, nil, nil, nil, nil, 40, 140, 10, 40, ethereal.alpine)

add_biome("snowy", nil, "default:cold_dirt", 1, "default:dirt", 2,
	nil, nil, nil, nil, nil, 4, 40, 10, 40, ethereal.snowy)

add_biome("grassy", nil, "default:grass_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 91, 13, 40, ethereal.grassy)

add_biome("grassy_ocean", nil, "defaut:sand", 2, "default:gravel", 1,
	nil, nil, nil, nil, nil, -31000, 3, 13, 40, ethereal.grassy)

add_biome("caves", nil, "default:desert_stone", 3, "air", 8,
	nil, nil, nil, nil, nil, 4, 41, 15, 25, ethereal.caves)

add_biome("prairie", nil, "default:prairie_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 26, 20, 40, ethereal.prairie)

add_biome("prairie_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 1, 20, 40, ethereal.prairie)

add_biome("jumble", nil, "default:grass_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 1, 71, 25, 50, ethereal.jumble)

add_biome("jumble_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 1, 25, 50, ethereal.jumble)

add_biome("junglee", nil, "default:jungle_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 1, 71, 30, 60, ethereal.junglee)

add_biome("junglee_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 1, 30, 60, ethereal.junglee)

add_biome("grove", nil, "default:grass_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 23, 45, 35, ethereal.grove)

add_biome("grove_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 45, 35, ethereal.grove)

add_biome("mushroom", nil, "default:fungus_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 50, 45, 55, ethereal.mushroom)

add_biome("mushroom_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 45, 55, ethereal.mushroom)

add_biome("sandstone", nil, "default:sandstone", 1, "default:sandstone", 1,
	"default:sandstone", nil, nil, nil, nil, 3, 23, 50, 20, ethereal.sandstone)

add_biome("sandstone_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 50, 20, ethereal.sandstone)

add_biome("quicksand", nil, "default:quicksand", 3, "default:gravel", 1,
	nil, nil, nil, nil, nil, 1, 1, 50, 38, ethereal.quicksand)

add_biome("plains", nil, "default:dry_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 25, 65, 25, ethereal.plains)

add_biome("plains_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 55, 25, ethereal.plains)

add_biome("savanna", nil, "default:savanna_dirt", 1, "default:dirt",
	3, nil, nil, nil, nil, nil, 3, 50, 55, 25, ethereal.savanna)

add_biome("savanna_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 1, 55, 25, ethereal.savanna)

add_biome("volcanic", nil, "default:charred_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 5, 20, 75, 10, ethereal.volcanic)

add_biome("volcanic_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 4, 75, 10, ethereal.volcanic)

add_biome("sandclay", nil, "default:sand", 3, "default:clay", 2,
	nil, nil, nil, nil, nil, 1, 11, 65, 2, ethereal.sandclay)

add_biome("swamp", nil, "default:grass_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 1, 7, 80, 90, ethereal.swamp)

add_biome("swamp_ocean", nil, "default:sand", 2, "default:clay", 2,
	nil, nil, nil, nil, nil, -192, 1, 80, 90, ethereal.swamp)

--= schematic decorations

local add_schem = function(a, b, c, d, e, f, g, h)

	if g ~= 1 then return end

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = a,
		sidelen = 80,
		fill_ratio = b,
		biomes = c,
		y_min = d,
		y_max = e,
		schematic = f,
		flags = "place_center_x, place_center_z",
		replacements = h,
	})
end

-- wroshyr tree
add_schem({"default:jungle_dirt"}, 0.0025, {"junglee"}, 1, 100, ethereal.wroshyr_tree, ethereal.junglee)

-- brylark tree
add_schem({"default:jungle_dirt"}, 0.01, {"junglee"}, 1, 100, ethereal.brylark_tree, ethereal.junglee)

-- uneti tree
add_schem({"default:snowdirt"}, 0.001, {"alpine"}, 120, 140, ethereal.uneti_tree, ethereal.alpine)

if ethereal.mushroom then

-- giant mushshroom
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:fungus_dirt"},
		sidelen = 80,
		fill_ratio = 0.02,
		biomes = {"mushroom"},
		y_min = 1,
		y_max = 100,
		schematic = ethereal.mushroomone,
		flags = "place_center_x, place_center_z",
		spawn_by = "default:fungus_dirt",
		num_spawn_by = 6,
	})
end

if ethereal.fiery then

	-- small lava crater
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:charred_dirt"},
		sidelen = 80,
		fill_ratio = 0.01,
		biomes = {"volcanic"},
		y_min = 1,
		y_max = 100,
		schematic = ethereal.volcanom,
		flags = "place_center_x, place_center_z",
		spawn_by = "default:charred_dirt",
		num_spawn_by = 8,
	})

	-- large lava crater
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:charred_dirt"},
		sidelen = 80,
		fill_ratio = 0.003,
		biomes = {"volcanic"},
		y_min = 1,
		y_max = 100,
		schematic = ethereal.volcanol,
		flags = "place_center_x, place_center_z",
		spawn_by = "default:charred_dirt",
		num_spawn_by = 8,
		rotation = "random",
	})
end

-- pine tree (default for lower elevation and ethereal for higher)
add_schem({"default:cold_dirt"}, 0.025, {"snowy"}, 10, 40, ethereal.pine_tree, ethereal.snowy)
add_schem({"default:snow_dirt"}, 0.025, {"alpine"}, 40, 140, ethereal.pine_tree, ethereal.alpine)

-- jogan tree
add_schem({"default:grass_dirt"}, 0.02, {"jumble"}, 1, 100, ethereal.jogan_tree, ethereal.grassy)
add_schem({"default:grass_dirt"}, 0.03, {"grassy"}, 1, 100, ethereal.jogan_tree, ethereal.grassy)

-- palm tree
add_schem({"default:sand"}, 0.0025, {"desert_ocean"}, 1, 1, ethereal.palm_tree, ethereal.desert)
add_schem({"default:sand"}, 0.0025, {"plains_ocean"}, 1, 1, ethereal.palm_tree, ethereal.plains)
add_schem({"default:sand"}, 0.0025, {"sandclay"}, 1, 1, ethereal.palm_tree, ethereal.sandclay)
add_schem({"default:sand"}, 0.0025, {"sandstone_ocean"}, 1, 1, ethereal.palm_tree, ethereal.sandstone)
add_schem({"default:sand"}, 0.0025, {"mesa_ocean"}, 1, 1, ethereal.palm_tree, ethereal.mesa)
add_schem({"default:sand"}, 0.0025, {"grove_ocean"}, 1, 1, ethereal.palm_tree, ethereal.grove)
add_schem({"default:sand"}, 0.0025, {"grassy_ocean"}, 1, 1, ethereal.palm_tree, ethereal.grassy)

-- bamboo tree
add_schem({"default:bamboo_dirt"}, 0.025, {"bamboo"}, 1, 100, ethereal.bamboo_tree, ethereal.bamboo)

-- bush
add_schem({"default:bamboo_dirt"}, 0.08, {"bamboo"}, 1, 100, ethereal.bush, ethereal.bamboo)

-- vine tree
add_schem({"default:grass_dirt"}, 0.02, {"swamp"}, 1, 100, ethereal.vine_tree, ethereal.swamp)

-- water pools in swamp areas if 5.0 detected
if minetest.registered_nodes["default:permafrost"] then
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:grass_dirt"},
	place_offset_y = -1,
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"swamp"},
	y_max = 2,
	y_min = 1,
	flags = "force_placement",
	decoration = "default:water_source",
	spawn_by = "default:grass_dirt",
	num_spawn_by = 8,
})
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:grass_dirt"},
	place_offset_y = -1,
	sidelen = 16,
	fill_ratio = 0.1,
	biomes = {"swamp"},
	y_max = 2,
	y_min = 1,
	flags = "force_placement",
	decoration = "default:water_source",
	spawn_by = {"default:grass_dirt", "default:water_source"},
	num_spawn_by = 8,
})
end

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:savanna_dirt"},
	sidelen = 4,
	noise_params = {
		offset = -1.5,
		scale = -1.5,
		spread = {x = 200, y = 200, z = 200},
		seed = 329,
		octaves = 4,
		persist = 1.0
	},
	biomes = {"savanna"},
	y_max = 31000,
	y_min = 1,
	decoration = "default:dry_dirt",
	place_offset_y = -1,
	flags = "force_placement",
})

-- bush
--minetest.register_decoration({
--	deco_type = "schematic",
--	place_on = {"default:grass_dirt", "default:snow_dirt"},
--	sidelen = 16,
--	noise_params = {
--		offset = -0.004,
--		scale = 0.01,
--		spread = {x = 100, y = 100, z = 100},
--		seed = 137,
--		octaves = 3,
--		persist = 0.7,
--	},
--	biomes = {"grassy", "grassytwo", "jumble"},
--	y_min = 1,
--	y_max = 31000,
--	schematic = dpath .. "bush.mts",
--	flags = "place_center_x, place_center_z",
--})

--= simple decorations

local add_node = function(a, b, c, d, e, f, g, h, i, j)

	if j ~= 1 then return end

	minetest.register_decoration({
		deco_type = "simple",
		place_on = a,
		sidelen = 80,
		fill_ratio = b,
		biomes = c,
		y_min = d,
		y_max = e,
		decoration = f,
		height_max = g,
		spawn_by = h,
		num_spawn_by = i,
	})
end

-- scorched tree
add_node({"ethereal:dry_dirt"}, 0.006, {"plains"}, 1, 100, {"default:scorched_tree"}, 6, nil, nil, ethereal.plains)

-- dry shrub
add_node({"default:dry_dirt"}, 0.015, {"plains"}, 1, 100, {"default:dry_shrub"}, nil, nil, nil, ethereal.plains)
add_node({"default:sand"}, 0.015, {"grassy_ocean"}, 1, 100, {"default:dry_shrub"}, nil, nil, nil, ethereal.grassy)
add_node({"default:desert_sand"}, 0.015, {"desert"}, 1, 100, {"default:dry_shrub"}, nil, nil, nil, ethereal.desert)
add_node({"default:sandstone"}, 0.015, {"sandstone"}, 1, 100, {"default:dry_shrub"}, nil, nil, nil, ethereal.sandstone)
add_node({"bakedclay:red", "bakedclay:orange"}, 0.015, {"mesa"}, 1, 100, {"default:dry_shrub"}, nil, nil, nil, ethereal.mesa)

-- dry grass
add_node({"default:savanna_dirt"}, 0.25, {"savanna"}, 1, 100,
	{"default:dry_grass_2", "default:dry_grass_3", "default:dry_grass_4",
	"default:dry_grass_5"}, nil, nil, nil, ethereal.savanna)
add_node({"default:savanna_dirt"}, 0.10, {"mesa"}, 1, 100, {"default:dry_grass_2",
	"default:dry_grass_3", "default:dry_grass_4", "default:dry_grass_5"}, nil, nil, nil, ethereal.mesa)
add_node({"default:desert_stone"}, 0.005, {"caves"}, 5, 40, {"default:dry_grass_2",
	"default:dry_grass_3", "default:dry_shrub"}, nil, nil, nil, ethereal.caves)

-- flowers
add_node({"default:grass_dirt"}, 0.025, {"grassy"}, 1, 100, {"flowers:lily_white",
	"flowers:delia_pavorum", "flowers:starflower", "flowers:plom_bloom", "flowers:hai_ka_flower",
	"flowers:purple_passion"}, nil, nil, nil, ethereal.grassy)
add_node({"default:grass_dirt"}, 0.025, {"grassytwo"}, 1, 100, {"flowers:lily_white",
	"flowers:delia_pavorum", "flowers:starflower", "flowers:plom_bloom", "flowers:hai_ka_flower",
	"flowers:purple_passion"}, nil, nil, nil, ethereal.grassytwo)

-- prairie flowers & strawberry
add_node({"default:prairie_dirt"}, 0.035, {"prairie"}, 1, 100, {"flowers:lily_white",
	"flowers:delia_pavorum", "flowers:starflower", "flowers:plom_bloom", "flowers:hai_ka_flower",
	"flowers:purple_passion", "flowers:jade_rose", "flowers:zinthorn"}, nil, nil, nil, ethereal.prairie)

-- snowy grass
--add_node({"default:cold_dirt"}, 0.05, {"snowy"}, 1, 100, {"default:snowy_grass"}, nil, nil, nil, ethereal.snowy)

-- cactus
add_node({"default:sandstone"}, 0.0025, {"sandstone"}, 1, 100, {"default:cactus"}, 3, nil, nil, ethereal.sandstone)
add_node({"default:desert_sand"}, 0.005, {"desert"}, 1, 100, {"default:cactus"}, 4, nil, nil, ethereal.desert)

-- wild red mushroom
add_node({"default:fungus_dirt"}, 0.01, {"mushroom"}, 1, 100, {"flowers:mushroom_red"}, nil, nil, nil, ethereal.mushroom)

local list = {
	{"junglee", {"default:jungle_dirt", "default:dirt_with_rainforest_litter"}, ethereal.junglee},
	{"grassy", {"default:grass_dirt"}, ethereal.grassy},
	{"grassytwo", {"default:grass_dirt"}, ethereal.grassytwo},
	{"prairie", {"default:prairie_dirt"}, ethereal.prairie},
	{"mushroom", {"default:fungus_dirt"}, ethereal.mushroom},
	{"swamp", {"default:grass_dirt"}, ethereal.swamp},
}

-- wild red and brown mushrooms
for _, row in pairs(list) do

if row[3] == 1 then
minetest.register_decoration({
	deco_type = "simple",
	place_on = row[2],
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.009,
		spread = {x = 200, y = 200, z = 200},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {row[1]},
	y_min = 1,
	y_max = 120,
	decoration = {"flowers:mushroom_brown", "flowers:mushroom_red"},
})
end

end

-- jungle grass
add_node({"default:jungle_dirt"}, 0.10, {"junglee"}, 1, 100, {"default:jungle_grass"}, nil, nil, nil, ethereal.junglee)
add_node({"default:grass_dirt"}, 0.15, {"jumble"}, 1, 100, {"default:jungle_grass"}, nil, nil, nil, ethereal.jumble)
add_node({"default:grass_dirt"}, 0.25, {"swamp"}, 1, 100, {"default:jungle_grass"}, nil, nil, nil, ethereal.swamp)

-- grass
add_node({"default:grass_dirt"}, 0.35, {"grassy"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.grassy)
add_node({"default:grass_dirt"}, 0.35, {"grassytwo"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.grassytwo)
add_node({"default:grass_dirt"}, 0.35, {"jumble"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.jumble)
add_node({"default:jungle_dirt"}, 0.35, {"junglee"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.junglee)
add_node({"default:prairie_dirt"}, 0.35, {"prairie"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.prairie)
add_node({"default:grass_dirt"}, 0.35, {"grove"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.grove)
add_node({"default:bamboo_dirt"}, 0.35, {"bamboo"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, ethereal.bamboo)
add_node({"default:grass_dirt"}, 0.35, {"clearing", "swamp"}, 1, 100, {"default:grass_3",
	"default:grass_4"}, nil, nil, nil, 1)

-- grass on sand
add_node({"default:sand"}, 0.25, {"sandclay"}, 3, 4, {"default:saago_grass_1",
	"default:saago_grass_2", "default:saago_grass_3"}, nil, nil, nil, ethereal.sandclay)

-- ferns
add_node({"default:grass_dirt"}, 0.2, {"grove"}, 1, 100, {"default:fern"}, nil, nil, nil, ethereal.grove)
add_node({"default:grass_dirt"}, 0.1, {"swamp"}, 1, 100, {"default:fern"}, nil, nil, nil, ethereal.swamp)

-- snow
add_node({"default:cold_dirt"}, 0.8, {"snowy"}, 4, 40, {"default:snow"}, nil, nil, nil, ethereal.snowy)
add_node({"default:snow_dirt"}, 0.8, {"alpine"}, 40, 140, {"default:snow"}, nil, nil, nil, ethereal.alpine)

-- reeds
add_node({"default:grass_dirt"}, 0.1, {"grassy"}, 1, 1, {"default:reeds"}, 4, "default:water_source", 1, ethereal.grassy)
add_node({"default:jungle_dirt"}, 0.1, {"junglee"}, 1, 1, {"default:reeds"}, 4, "default:water_source", 1, ethereal.junglee)
add_node({"default:grass_dirt"}, 0.1, {"swamp"}, 1, 1, {"default:reeds"}, 4, "default:water_source", 1, ethereal.swamp)

--= Farming Redo plants

if farming and farming.mod and farming.mod == "redo" then

print ("[MOD] Ethereal - Farming Redo detected and in use")

-- place waterlily in beach areas
local list = {
	{"desert_ocean", ethereal.desert},
	{"plains_ocean", ethereal.plains},
	{"sandclay", ethereal.sandclay},
	{"sandstone_ocean", ethereal.sandstone},
	{"mesa_ocean", ethereal.mesa},
	{"grove_ocean", ethereal.grove},
	{"grassy_ocean", ethereal.grassy},
	{"swamp_ocean", ethereal.swamp},
}

for _, row in pairs(list) do

	if row[2] == 1 then

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.12,
			scale = 0.3,
			spread = {x = 200, y = 200, z = 200},
			seed = 33,
			octaves = 3,
			persist = 0.7
		},
		biomes = {row[1]},
		y_min = 0,
		y_max = 0,
		schematic = ethereal.waterlily,
		rotation = "random",
	})

	end

end

if ethereal.tundra and minetest.registered_nodes["default:permafrost"] then
	minetest.register_biome({
		name = "tundra_highland",
		node_dust = "default:snow",
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		y_max = 180,
		y_min = 47,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra",
		node_top = "default:permafrost_with_stones",
		depth_top = 1,
		node_filler = "default:permafrost",
		depth_filler = 1,
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		vertical_blend = 4,
		y_max = 46,
		y_min = 2,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra_beach",
		node_top = "default:gravel",
		depth_top = 1,
		node_filler = "default:gravel",
		depth_filler = 2,
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = 1,
		y_min = -3,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra_ocean",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = -4,
		y_min = -112,
		heat_point = 0,
		humidity_point = 40,
	})

	-- Tundra moss

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:permafrost_with_stones"},
		sidelen = 4,
		noise_params = {
			offset = -0.8,
			scale = 2.0,
			spread = {x = 100, y = 100, z = 100},
			seed = 53995,
			octaves = 3,
			persist = 1.0
		},
		biomes = {"tundra"},
		y_max = 50,
		y_min = 2,
		decoration = "default:permafrost_with_moss",
		place_offset_y = -1,
		flags = "force_placement",
	})

	-- Tundra patchy snow

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {
			"default:permafrost_with_moss",
			"default:permafrost_with_stones",
			"default:stone",
			"default:gravel"
		},
		sidelen = 4,
		noise_params = {
			offset = 0,
			scale = 1.0,
			spread = {x = 100, y = 100, z = 100},
			seed = 172555,
			octaves = 3,
			persist = 1.0
		},
		biomes = {"tundra", "tundra_beach"},
		y_max = 50,
		y_min = 1,
		decoration = "default:snow",
	})
end
  
	-- Kelp

	minetest.register_decoration({
		name = "default:kelp",
		deco_type = "simple",
		place_on = {"default:sand"},
		place_offset_y = -1,
		sidelen = 16,
		noise_params = {
			offset = -0.04,
			scale = 0.1,
			spread = {x = 200, y = 200, z = 200},
			seed = 87112,
			octaves = 3,
			persist = 0.7
		},
		biomes = {
			"frost_ocean", "grassy_ocean", "sandstone_ocean", "swamp_ocean"},
		y_max = -5,
		y_min = -10,
		flags = "force_placement",
		decoration = "default:sand_with_kelp",
		param2 = 48,
		param2_max = 96,
	})
end
