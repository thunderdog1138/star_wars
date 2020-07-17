
-- clear default mapgen biomes, decorations and ores
minetest.clear_registered_biomes()
minetest.clear_registered_decorations()
--minetest.clear_registered_ores()

local path = minetest.get_modpath("ethereal")

dofile(path .. "/ores.lua")

path = path .. "/schematics/"

local dpath = minetest.get_modpath("default") .. "/schematics/"

-- tree schematics
dofile(path .. "jogan_tree.lua")
dofile(path .. "bamboo_tree.lua")
dofile(path .. "bush.lua")
dofile(path .. "waterlily.lua")
dofile(path .. "volcanom.lua")
dofile(path .. "volcanol.lua")
dofile(path .. "brylark_tree.lua")
dofile(path .. "palm_tree.lua")
dofile(path .. "pine_tree.lua")
dofile(path .. "mushroom.lua")
dofile(path .. "uneti_tree.lua")
dofile(path .. "wroshyr_tree.lua")
dofile(path .. "gnarltree.lua")

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
	"default:desert_stone", nil, nil, nil, nil, 3, 23, 35, 20, 1)

add_biome("desert_ocean", nil, "default:sand", 1, "default:sand", 2,
	"default:desert_stone", nil, nil, nil, nil, -192, 3, 35, 20, 1)

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

add_biome("clearing", nil, "ethereal:grass_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 71, 45, 65, 1)

add_biome("bamboo", nil, "ethereal:bamboo_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 25, 70, 45, 75, 1)

add_biome("bamboo_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 45, 75, 1)

add_biome("mesa", nil, "ethereal:savanna_dirt", 1, "bakedclay:orange", 15,
	nil, nil, nil, nil, nil, 1, 71, 25, 28, 1)

add_biome("mesa_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 1, 25, 28, 1)

add_biome("alpine", nil, "default:snow_dirt", 1, "default:dirt", 2,
	nil, nil, nil, nil, nil, 40, 140, 10, 40, 1)

add_biome("snowy", nil, "ethereal:cold_dirt", 1, "default:dirt", 2,
	nil, nil, nil, nil, nil, 4, 40, 10, 40, 1)

add_biome("grassy", nil, "ethereal:grass_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 91, 13, 40, 1)

add_biome("grassy_ocean", nil, "defaut:sand", 2, "default:gravel", 1,
	nil, nil, nil, nil, nil, -31000, 3, 13, 40, 1)

add_biome("caves", nil, "default:desert_stone", 3, "air", 8,
	nil, nil, nil, nil, nil, 4, 41, 15, 25, 1)

add_biome("grassytwo", nil, "ethereal:grass_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 1, 91, 15, 40, 1)

add_biome("grassytwo_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 1, 15, 40, 1)

add_biome("prairie", nil, "ethereal:prairie_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 26, 20, 40, 1)

add_biome("prairie_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 1, 20, 40, 1)

add_biome("jumble", nil, "ethereal:grass_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 1, 71, 25, 50, 1)

add_biome("jumble_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 1, 25, 50, 1)

	add_biome("junglee", nil, "ethereal:jungle_dirt", 1, "default:dirt", 3,
		nil, nil, nil, nil, nil, 1, 71, 30, 60, 1)

add_biome("junglee_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 1, 30, 60, 1)

add_biome("grove", nil, "ethereal:grass_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 23, 45, 35, 1)

add_biome("grove_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 45, 35, 1)

add_biome("fungus", nil, "ethereal:fungus_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 50, 45, 55, 1)

add_biome("fungus_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 45, 55, 1)

add_biome("sandstone", nil, "default:sandstone", 1, "default:sandstone", 1,
	"default:sandstone", nil, nil, nil, nil, 3, 23, 50, 20, 1)

add_biome("sandstone_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 50, 20, 1)

add_biome("quicksand", nil, "ethereal:quicksand", 3, "default:gravel", 1,
	nil, nil, nil, nil, nil, 1, 1, 50, 38, 1)

add_biome("plains", nil, "ethereal:dry_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 3, 25, 65, 25, 1)

add_biome("plains_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 2, 55, 25, 1)

add_biome("savanna", nil, "ethereal:savanna_dirt", 1, "default:dirt",
	3, nil, nil, nil, nil, nil, 3, 50, 55, 25, 1)

add_biome("savanna_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 1, 55, 25, 1)

add_biome("volcanic", nil, "ethereal:charred_dirt", 1, "ethereal:dry_dirt", 3,
	nil, nil, nil, nil, nil, 5, 20, 75, 10, 1)

add_biome("volcanic_ocean", nil, "default:sand", 1, "default:sand", 2,
	nil, nil, nil, nil, nil, -192, 4, 75, 10, 1)

add_biome("sandclay", nil, "default:sand", 3, "default:clay_block", 2,
	nil, nil, nil, nil, nil, 1, 11, 65, 2, 1)

add_biome("swamp", nil, "ethereal:swamp_dirt", 1, "default:dirt", 3,
	nil, nil, nil, nil, nil, 1, 7, 80, 90, 1)

add_biome("swamp_ocean", nil, "default:sand", 2, "default:clay_block", 2,
	nil, nil, nil, nil, nil, -192, 1, 80, 90, 1)

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
add_schem({"ethereal:jungle_dirt"}, 0.0025, {"junglee"}, 1, 100, ethereal.wroshyr_tree, 1)

-- uneti tree
add_schem({"default:snow_dirt"}, 0.01, {"alpine"}, 120, 140, ethereal.uneti_tree, 1)

-- brylark tree
add_schem({"ethereal:jungle_dirt"}, 0.01, {"junglee"}, 1, 100, ethereal.brylark_tree, 1)

-- giant shroom
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"ethereal:fungus_dirt"},
	sidelen = 80,
	fill_ratio = 0.02,
	biomes = {"fungus"},
	y_min = 1,
	y_max = 100,
	schematic = ethereal.mushroom,
	flags = "place_center_x, place_center_z",
	spawn_by = "ethereal:fungus_dirt",
	num_spawn_by = 6,
})

-- small lava crater
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"ethereal:charred_dirt"},
	sidelen = 80,
	fill_ratio = 0.01,
	biomes = {"volcanic"},
	y_min = 1,
	y_max = 100,
	schematic = ethereal.volcanom,
	flags = "place_center_x, place_center_z",
	spawn_by = "ethereal:charred_dirt",
	num_spawn_by = 8,
})

-- large lava crater
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"ethereal:charred_dirt"},
	sidelen = 80,
	fill_ratio = 0.003,
	biomes = {"volcanic"},
	y_min = 1,
	y_max = 100,
	schematic = ethereal.volcanol,
	flags = "place_center_x, place_center_z",
	spawn_by = "ethereal:charred_dirt",
	num_spawn_by = 8,
	rotation = "random",
})

-- pine tree
add_schem({"ethereal:cold_dirt"}, 0.025, {"snowy"}, 10, 40, ethereal.pine_tree, 1)
add_schem({"default:snow_dirt"}, 0.025, {"alpine"}, 40, 140, ethereal.pine_tree, 1)

-- jogan tree
add_schem({"ethereal:grass_dirt"}, 0.02, {"jumble"}, 1, 100, ethereal.jogan_tree, 1)
add_schem({"ethereal:grass_dirt"}, 0.03, {"grassy"}, 1, 100, ethereal.jogan_tree, 1)
add_schem({"ethereal:prairie_dirt"}, 0.01, {"prairie"}, 1, 100, ethereal.jogan_tree, 1)

-- palm tree
add_schem({"default:sand"}, 0.0025, {"desert_ocean"}, 1, 1, ethereal.palm_tree, 1)
add_schem({"default:sand"}, 0.0025, {"plains_ocean"}, 1, 1, ethereal.palm_tree, 1)
add_schem({"default:sand"}, 0.0025, {"sandclay"}, 1, 1, ethereal.palm_tree, 1)
add_schem({"default:sand"}, 0.0025, {"sandstone_ocean"}, 1, 1, ethereal.palm_tree, 1)
add_schem({"default:sand"}, 0.0025, {"mesa_ocean"}, 1, 1, ethereal.palm_tree, 1)
add_schem({"default:sand"}, 0.0025, {"grove_ocean"}, 1, 1, ethereal.palm_tree, 1)
add_schem({"default:sand"}, 0.0025, {"grassy_ocean"}, 1, 1, ethereal.palm_tree, 1)

-- bamboo tree
add_schem({"ethereal:bamboo_dirt"}, 0.025, {"bamboo"}, 1, 100, ethereal.bamboo_tree, 1)

-- bamboo_bush
add_schem({"ethereal:bamboo_dirt"}, 0.08, {"bamboo"}, 1, 100, ethereal.bamboo_bush, 1)

-- gnarltree
add_schem({"ethereal:swamp_dirt"}, 0.02, {"swamp"}, 1, 100, ethereal.gnarltree, 1)

-- bush
add_schem({"ethereal:grass_dirt"}, 0.08, {"grassy"}, 1, 100, ethereal.bush, 1)

-- water pools in swamp areas
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:swamp_dirt"},
	place_offset_y = -1,
	sidelen = 16,
	fill_ratio = 0.01,
	biomes = {"swamp"},
	y_max = 2,
	y_min = 1,
	flags = "force_placement",
	decoration = "default:water_source",
	spawn_by = "ethereal:swamp_dirt",
	num_spawn_by = 8,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:swamp_dirt"},
	place_offset_y = -1,
	sidelen = 16,
	fill_ratio = 0.1,
	biomes = {"swamp"},
	y_max = 2,
	y_min = 1,
	flags = "force_placement",
	decoration = "default:water_source",
	spawn_by = {"ethereal:swamp_dirt", "default:water_source"},
	num_spawn_by = 8,
})

-- dry pateches in savanna
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:savanna_dirt"},
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
	decoration = "ethereal:dry_dirt",
	place_offset_y = -1,
	flags = "force_placement",
})

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
add_node({"ethereal:dry_dirt"}, 0.006, {"plains"}, 1, 100, {"ethereal:scorched_tree"}, 6, nil, nil, 1)

-- dry shrub
add_node({"ethereal:dry_dirt"}, 0.015, {"plains"}, 1, 100, {"default:dry_shrub"}, nil, nil, nil, 1)
add_node({"default:sand"}, 0.015, {"grassy_ocean"}, 1, 100, {"default:dry_shrub"}, nil, nil, nil, 1)
add_node({"default:desert_sand"}, 0.015, {"desert"}, 1, 100, {"default:dry_shrub"}, nil, nil, nil, 1)
add_node({"default:sandstone"}, 0.015, {"sandstone"}, 1, 100, {"default:dry_shrub"}, nil, nil, nil, 1)
add_node({"bakedclay:red", "bakedclay:orange"}, 0.015, {"mesa"}, 1, 100, {"default:dry_shrub"}, nil, nil, nil, 1)

-- dry grass
add_node({"ethereal:savanna_dirt"}, 0.25, {"savanna"}, 1, 100,
	{"default:dry_grass_2", "default:dry_grass_3", "default:dry_grass_4",
	"default:dry_grass_5"}, nil, nil, nil, 1)
add_node({"ethereal:savanna_dirt"}, 0.10, {"mesa"}, 1, 100, {"default:dry_grass_2",
	"default:dry_grass_3", "default:dry_grass_4", "default:dry_grass_5"}, nil, nil, nil, 1)
add_node({"default:desert_stone"}, 0.005, {"caves"}, 5, 40, {"default:dry_grass_2",
	"default:dry_grass_3", "default:dry_shrub"}, nil, nil, nil, 1)

-- flowers & strawberry
--add_node({"default:dirt_with_grass"}, 0.025, {"grassy"}, 1, 100, {"flowers:dandelion_white",
--	"flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip",
--	"flowers:viola", "ethereal:strawberry_7"}, nil, nil, nil, ethereal.grassy)
--add_node({"default:dirt_with_grass"}, 0.025, {"grassytwo"}, 1, 100, {"flowers:dandelion_white",
--	"flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip",
--	"flowers:viola", "ethereal:strawberry_7"}, nil, nil, nil, ethereal.grassytwo)

-- prairie flowers & strawberry
--add_node({"ethereal:prairie_dirt"}, 0.035, {"prairie"}, 1, 100, {"flowers:dandelion_white",
--	"flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip",
--	"flowers:viola", "ethereal:strawberry_7", "flowers:chrysanthemum_green", "flowers:tulip_black"}, nil, nil, nil, ethereal.prairie)

-- snowy grass
add_node({"ethereal:cold_dirt"}, 0.05, {"snowy"}, 1, 100, {"ethereal:snowygrass"}, nil, nil, nil, 1)

-- cactus
add_node({"default:sandstone"}, 0.0025, {"sandstone"}, 1, 100, {"default:cactus"}, 3, nil, nil, 1)
add_node({"default:desert_sand"}, 0.005, {"desert"}, 1, 100, {"default:cactus"}, 4, nil, nil, 1)

-- wild red mushroom
--add_node({"ethereal:mushroom_dirt"}, 0.01, {"mushroom"}, 1, 100, {"flowers:mushroom_fertile_red"}, nil, nil, nil, 1)

local list = {
	{"junglee", {"ethereal:jungle_dirt"}, 1},
	{"grassy", {"ethereal:grass_dirt"}, 1},
	{"grassytwo", {"ethereal:grass_dirt"}, 1},
	{"prairie", {"ethereal:prairie_dirt"}, 1},
	{"fungus", {"ethereal:fungus_dirt"}, 1},
	{"swamp", {"ethereal:swamp_dirt"}, 1},
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
add_node({"ethereal:jungle_dirt"}, 0.10, {"junglee"}, 1, 100, {"default:jungle_grass"}, nil, nil, nil, 1)
add_node({"ethereal:grass_dirt"}, 0.15, {"jumble"}, 1, 100, {"default:jungle_grass"}, nil, nil, nil, 1)
add_node({"ethereal:grass_dirt"}, 0.25, {"swamp"}, 1, 100, {"default:jungle_grass"}, nil, nil, nil, 1)

-- grass
add_node({"ethereal:grass_dirt"}, 0.35, {"grassy"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, 1)
add_node({"ethereal:grass_dirt"}, 0.35, {"grassytwo"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, 1)
add_node({"ethereal:grass_dirt"}, 0.35, {"jumble"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, 1)
add_node({"ethereal:jungle_dirt"}, 0.35, {"junglee"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, 1)
add_node({"ethereal:prairie_dirt"}, 0.35, {"prairie"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, 1)
add_node({"ethereal:grass_dirt"}, 0.35, {"grove"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, 1)
add_node({"ethereal:bamboo_dirt"}, 0.35, {"bamboo"}, 1, 100, {"default:grass_2", "default:grass_3",
	"default:grass_4", "default:grass_5"}, nil, nil, nil, 1)
add_node({"ethereal:grass_dirt"}, 0.35, {"clearing"}, 1, 100, {"default:grass_3",
	"default:grass_4"}, nil, nil, nil, 1)
add_node({"ethereal:swamp_dirt"}, 0.35, {"swamp"}, 1, 100, {"default:grass_3",
	"default:grass_4"}, nil, nil, nil, 1)

-- saago grass
add_node({"default:sand"}, 0.25, {"sandclay"}, 3, 4, {"default:saago_grass_1",
	"default:saago_grass_2", "default:saago_grass_3"}, nil, nil, nil, 1)

-- ferns
add_node({"ethereal:grass_dirt"}, 0.2, {"grove"}, 1, 100, {"ethereal:fern"}, nil, nil, nil, 1)
add_node({"ethereal:swamp_dirt"}, 0.1, {"swamp"}, 1, 100, {"ethereal:fern"}, nil, nil, nil, 1)

-- snow
add_node({"ethereal:cold_dirt"}, 0.8, {"snowy"}, 4, 40, {"default:snow"}, nil, nil, nil, 1)
add_node({"default:snow_dirt"}, 0.8, {"alpine"}, 40, 140, {"default:snow"}, nil, nil, nil, 1)

-- reeds
add_node({"ethereal:grass_dirt"}, 0.1, {"grassy"}, 1, 1, {"default:reeds"}, 4, "default:water_source", 1, 1)
add_node({"ethereal:jungle_dirt"}, 0.1, {"junglee"}, 1, 1, {"default:reeds"}, 4, "default:water_source", 1, 1)
add_node({"ethereal:swamp_dirt"}, 0.1, {"swamp"}, 1, 1, {"default:reeds"}, 4, "default:water_source", 1, 1)

--= Farming Redo plants

if farming and farming.mod and farming.mod == "redo" then

print ("[MOD] Ethereal - Farming Redo detected and in use")

-- potato
add_node({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"}, 0.035, {"junglee"}, 1, 100, {"farming:potato_3"}, nil, nil, nil, ethereal.junglee)

-- carrot, cucumber, potato, tomato, corn, coffee, raspberry, rhubarb
add_node({"default:dirt_with_grass"}, 0.05, {"grassytwo"}, 1, 100, {"farming:carrot_7", "farming:cucumber_4",
	"farming:potato_3", "farming:tomato_7", "farming:corn_8", "farming:coffee_5",
	"farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4"}, nil, nil, nil, ethereal.grassytwo)
add_node({"default:dirt_with_grass"}, 0.05, {"grassy"}, 1, 100, {"farming:carrot_7", "farming:cucumber_4",
	"farming:potato_3", "farming:tomato_7", "farming:corn_8", "farming:coffee_5",
	"farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4",
	"farming:beetroot_5"}, nil, nil, nil, ethereal.grassy)
add_node({"default:dirt_with_grass"}, 0.05, {"jumble"}, 1, 100, {"farming:carrot_7", "farming:cucumber_4",
	"farming:potato_3", "farming:tomato_7", "farming:corn_8", "farming:coffee_5",
	"farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4"}, nil, nil, nil, ethereal.jumble)
add_node({"ethereal:prairie_dirt"}, 0.05, {"prairie"}, 1, 100, {"farming:carrot_7", "farming:cucumber_4",
	"farming:potato_3", "farming:tomato_7", "farming:corn_8", "farming:coffee_5",
	"farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4",
	"farming:pea_5", "farming:beetroot_5"}, nil, nil, nil, ethereal.prairie)

-- melon and pumpkin
add_node({"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"}, 0.015, {"junglee"}, 1, 1, {"farming:melon_8", "farming:pumpkin_8"}, nil, "default:water_source", 1, ethereal.junglee)
add_node({"default:dirt_with_grass"}, 0.015, {"grassy"}, 1, 1, {"farming:melon_8", "farming:pumpkin_8"}, nil, "default:water_source", 1, ethereal.grassy)
add_node({"default:dirt_with_grass"}, 0.015, {"grassytwo"}, 1, 1, {"farming:melon_8", "farming:pumpkin_8"}, nil, "default:water_source", 1, ethereal.grassytwo)
add_node({"default:dirt_with_grass"}, 0.015, {"jumble"}, 1, 1, {"farming:melon_8", "farming:pumpkin_8"}, nil, "default:water_source", 1, ethereal.jumble)

-- green beans
add_node({"default:dirt_with_grass"}, 0.035, {"grassytwo"}, 1, 100, {"farming:beanbush"}, nil, nil, nil, ethereal.grassytwo)

-- grape bushel
add_node({"default:dirt_with_grass"}, 0.025, {"grassytwo"}, 1, 100, {"farming:grapebush"}, nil, nil, nil, ethereal.grassytwo)
add_node({"default:dirt_with_grass"}, 0.025, {"grassy"}, 1, 100, {"farming:grapebush"}, nil, nil, nil, ethereal.grassy)
add_node({"ethereal:prairie_dirt"}, 0.025, {"prairie"}, 1, 100, {"farming:grapebush"}, nil, nil, nil, ethereal.prairie)

minetest.register_decoration({
	deco_type = "simple",
	place_on = {
		"default:dirt_with_grass", "ethereal:prairie_dirt",
		"default:dirt_with_rainforest_litter",
	},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.06,
		spread = {x = 100, y = 100, z = 100},
		seed = 420,
		octaves = 3,
		persist = 0.6
	},
	y_min = 5,
	y_max = 35,
	decoration = "farming:hemp_7",
	spawn_by = "group:tree",
	num_spawn_by = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.09,
		spread = {x = 100, y = 100, z = 100},
		seed = 760,
		octaves = 3,
		persist = 0.6
	},
	y_min = 5,
	y_max = 35,
	decoration = {"farming:chili_8", "farming:garlic_5", "farming:pepper_5", "farming:onion_5"},
	spawn_by = "group:tree",
	num_spawn_by = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.06,
		spread = {x = 100, y = 100, z = 100},
		seed = 917,
		octaves = 3,
		persist = 0.6
	},
	y_min = 18,
	y_max = 30,
	decoration = {"farming:pineapple_8"},
})
end

-- place waterlily in beach areas
local list = {
	{"desert_ocean", 1},
	{"plains_ocean", 1},
	{"sandclay", 1},
	{"sandstone_ocean", 1},
	{"mesa_ocean", 1},
	{"grove_ocean", 1},
	{"grassy_ocean", 1},
	{"swamp_ocean", 1},
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

local random = math.random


-- is baked clay mod active? add new flowers if so
if minetest.get_modpath("bakedclay") then

minetest.register_decoration({
	deco_type = "simple",
	place_on = {
		"ethereal:prairie_grass", "ethereal:grass_dirt"
	},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.004,
		spread = {x = 100, y = 100, z = 100},
		seed = 7133,
		octaves = 3,
		persist = 0.6
	},
	y_min = 10,
	y_max = 90,
	decoration = "bakedclay:delphinium",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {
		"ethereal:prairie_grass", "ethereal:grass_dirt", "ethereal:bamboo_dirt"
	},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.004,
		spread = {x = 100, y = 100, z = 100},
		seed = 7134,
		octaves = 3,
		persist = 0.6
	},
	y_min = 15,
	y_max = 90,
	decoration = "bakedclay:thistle",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:jungle_dirt"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.01,
		spread = {x = 100, y = 100, z = 100},
		seed = 7135,
		octaves = 3,
		persist = 0.6
	},
	y_min = 1,
	y_max = 90,
	decoration = "bakedclay:lazarus",
	spawn_by = "default:jungletree",
	num_spawn_by = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"ethereal:grass_dirt", "default:sand"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.009,
		spread = {x = 100, y = 100, z = 100},
		seed = 7136,
		octaves = 3,
		persist = 0.6
	},
	y_min = 1,
	y_max = 15,
	decoration = "bakedclay:mannagrass",
	spawn_by = "group:water",
	num_spawn_by = 1,
})

end

if ethereal.desert and minetest.get_modpath("wine") then
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:desert_sand"},
	sidelen = 16,
	fill_ratio = 0.001,
	biomes = {"desert"},
	decoration = {"wine:blue_agave"},
})
end

if ethereal.snowy and minetest.registered_nodes["default:fern_1"] then
local function register_fern_decoration(seed, length)
	minetest.register_decoration({
		name = "default:fern_" .. length,
		deco_type = "simple",
		place_on = {
			"ethereal:cold_dirt"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.2,
			spread = {x = 100, y = 100, z = 100},
			seed = seed,
			octaves = 3,
			persist = 0.7
		},
		y_max = 31000,
		y_min = 6,
		decoration = "default:fern_" .. length,
	})
end

register_fern_decoration(14936, 3)
register_fern_decoration(801, 2)
register_fern_decoration(5, 1)
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

-- Coral Reef (Minetest 5.0)
if minetest.registered_nodes["default:coral_green"] then
	minetest.register_decoration({
		name = "default:corals",
		deco_type = "simple",
		place_on = {"default:sand"},
		place_offset_y = -1,
		sidelen = 4,
		noise_params = {
			offset = -4,
			scale = 4,
			spread = {x = 50, y = 50, z = 50},
			seed = 7013,
			octaves = 3,
			persist = 0.7,
		},
		biomes = {
			"desert_ocean",
			"savanna_ocean",
			"junglee_ocean",
		},
		y_max = -2,
		y_min = -8,
		flags = "force_placement",
		decoration = {
			"default:coral_green", "default:coral_pink",
			"default:coral_cyan", "default:coral_brown",
			"default:coral_orange", "default:coral_skeleton",
		},
	})

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
			"grassy_ocean", "sandstone_ocean", "swamp_ocean"},
		y_max = -5,
		y_min = -10,
		flags = "force_placement",
		decoration = "default:sand_with_kelp",
		param2 = 48,
		param2_max = 96,
	})
end
