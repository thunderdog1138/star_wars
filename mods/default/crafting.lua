-- mods/default/crafting.lua

minetest.register_craft({
	output = "default:jogan_wood 4",
	recipe = {
		{"default:jogan_trunk"},
	}
})

minetest.register_craft({
	output = "default:pine_wood 4",
	recipe = {
		{"default:pine_trunk"},
	}
})

minetest.register_craft({
	output = "default:uneti_wood 4",
	recipe = {
		{"default:uneti_trunk"},
	}
})

minetest.register_craft({
	output = "default:brylark_wood 4",
	recipe = {
		{"default:brylark_trunk"},
	}
})

minetest.register_craft({
	output = "default:wroshyr_wood 4",
	recipe = {
		{"default:wroshyr_trunk"},
	}
})

minetest.register_craft({
	output = "default:palm_wood 4",
	recipe = {
		{"default:palm_trunk"},
	}
})

minetest.register_craft({
	output = "default:stick 4",
	recipe = {
		{"default:bush_stem"},
	}
})

minetest.register_craft({
	output = "default:stick 4",
	recipe = {
		{"group:soft_wood"},
	}
})

minetest.register_craft({
	output = "default:sign_wall_durasteel 3",
	recipe = {
		{"default:durasteel_ingot", "default:durasteel_ingot", "default:durasteel_ingot"},
		{"default:durasteel_ingot", "default:durasteel_ingot", "default:durasteel_ingot"},
		{"", "group:stick", ""},
	}
})

minetest.register_craft({
	output = "default:sign_wall_wood 3",
	recipe = {
		{"group:soft_wood", "group:soft_wood", "group:soft_wood"},
		{"group:soft_wood", "group:soft_wood", "group:soft_wood"},
		{"", "group:stick", ""},
	}
})

minetest.register_craft({
	output = "default:torch 4",
	recipe = {
		{"default:coal_lump"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "default:pick_wood",
	recipe = {
		{"group:soft_wood", "group:soft_wood", "group:soft_wood"},
		{"", "group:stick", ""},
		{"", "group:stick", ""},
	}
})

minetest.register_craft({
	output = "default:pick_stone",
	recipe = {
		{"group:stone", "group:stone", "group:stone"},
		{"", "group:stick", ""},
		{"", "group:stick", ""},
	}
})

minetest.register_craft({
	output = "default:pick_durasteel",
	recipe = {
		{"default:durasteel_ingot", "default:durasteel_ingot", "default:durasteel_ingot"},
		{"", "group:stick", ""},
		{"", "group:stick", ""},
	}
})

minetest.register_craft({
	output = "default:pick_bronze",
	recipe = {
		{"default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot"},
		{"", "group:stick", ""},
		{"", "group:stick", ""},
	}
})

minetest.register_craft({
	output = "default:pick_beskar",
	recipe = {
		{"default:beskar_ingot", "default:beskar_ingot", "default:beskar_ingot"},
		{"", "group:stick", ""},
		{"", "group:stick", ""},
	}
})

minetest.register_craft({
	output = "default:shovel_wood",
	recipe = {
		{"group:soft_wood"},
		{"group:stick"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "default:shovel_stone",
	recipe = {
		{"group:stone"},
		{"group:stick"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "default:shovel_durasteel",
	recipe = {
		{"default:durasteel_ingot"},
		{"group:stick"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "default:shovel_bronze",
	recipe = {
		{"default:bronze_ingot"},
		{"group:stick"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "default:shovel_beskar",
	recipe = {
		{"default:beskar_ingot"},
		{"group:stick"},
		{"group:stick"},
	}
})

-- Axes
-- Recipes face left to match appearence in textures and inventory

minetest.register_craft({
	output = "default:axe_wood",
	recipe = {
		{"group:soft_wood", "group:soft_wood"},
		{"group:soft_wood", "group:stick"},
		{"", "group:stick"},
	}
})

minetest.register_craft({
	output = "default:axe_stone",
	recipe = {
		{"group:stone", "group:stone"},
		{"group:stone", "group:stick"},
		{"", "group:stick"},
	}
})

minetest.register_craft({
	output = "default:axe_durasteel",
	recipe = {
		{"default:durasteel_ingot", "default:durasteel_ingot"},
		{"default:durasteel_ingot", "group:stick"},
		{"", "group:stick"},
	}
})

minetest.register_craft({
	output = "default:axe_bronze",
	recipe = {
		{"default:bronze_ingot", "default:bronze_ingot"},
		{"default:bronze_ingot", "group:stick"},
		{"", "group:stick"},
	}
})

minetest.register_craft({
	output = "default:axe_beskar",
	recipe = {
		{"default:beskar_ingot", "default:beskar_ingot"},
		{"default:beskar_ingot", "group:stick"},
		{"", "group:stick"},
	}
})

minetest.register_craft({
	output = "default:sword_wood",
	recipe = {
		{"group:soft_wood"},
		{"group:soft_wood"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "default:sword_stone",
	recipe = {
		{"group:stone"},
		{"group:stone"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "default:sword_durasteel",
	recipe = {
		{"default:durasteel_ingot"},
		{"default:durasteel_ingot"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "default:sword_bronze",
	recipe = {
		{"default:bronze_ingot"},
		{"default:bronze_ingot"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "default:sword_beskar",
	recipe = {
		{"default:beskar_ingot"},
		{"default:beskar_ingot"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "default:skeleton_keycard",
	recipe = {
		{"default:durasteel_ingot"},
	}
})

minetest.register_craft({
	output = "default:chest",
	recipe = {
		{"group:soft_wood", "group:soft_wood", "group:soft_wood"},
		{"group:soft_wood", "", "group:soft_wood"},
		{"group:soft_wood", "group:soft_wood", "group:soft_wood"},
	}
})

minetest.register_craft({
	output = "default:chest_locked",
	recipe = {
		{"group:soft_wood", "group:soft_wood", "group:soft_wood"},
		{"group:soft_wood", "default:durasteel_ingot", "group:soft_wood"},
		{"group:soft_wood", "group:soft_wood", "group:soft_wood"},
	}
})

minetest.register_craft( {
	type = "shapeless",
	output = "default:chest_locked",
	recipe = {"default:chest", "default:durasteel_ingot"},
})

minetest.register_craft({
	output = "default:furnace",
	recipe = {
		{"group:stone", "group:stone", "group:stone"},
		{"group:stone", "", "group:stone"},
		{"group:stone", "group:stone", "group:stone"},
	}
})

minetest.register_craft({
	output = "default:coal_block",
	recipe = {
		{"default:coal_lump", "default:coal_lump", "default:coal_lump"},
		{"default:coal_lump", "default:coal_lump", "default:coal_lump"},
		{"default:coal_lump", "default:coal_lump", "default:coal_lump"},
	}
})

minetest.register_craft({
	output = "default:coal_lump 9",
	recipe = {
		{"default:coal_block"},
	}
})

minetest.register_craft({
	output = "default:durasteel_block",
	recipe = {
		{"default:durasteel_ingot", "default:durasteel_ingot", "default:durasteel_ingot"},
		{"default:durasteel_ingot", "default:durasteel_ingot", "default:durasteel_ingot"},
		{"default:durasteel_ingot", "default:durasteel_ingot", "default:durasteel_ingot"},
	}
})

minetest.register_craft({
	output = "default:durasteel_ingot 9",
	recipe = {
		{"default:durasteel_block"},
	}
})

minetest.register_craft({
	output = "default:copper_block",
	recipe = {
		{"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
		{"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
		{"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
	}
})

minetest.register_craft({
	output = "default:copper_ingot 9",
	recipe = {
		{"default:copper_block"},
	}
})

minetest.register_craft({
	output = "default:tin_block",
	recipe = {
		{"default:tin_ingot", "default:tin_ingot", "default:tin_ingot"},
		{"default:tin_ingot", "default:tin_ingot", "default:tin_ingot"},
		{"default:tin_ingot", "default:tin_ingot", "default:tin_ingot"},
	}
})

minetest.register_craft({
	output = "default:tin_ingot 9",
	recipe = {
		{"default:tin_block"},
	}
})

minetest.register_craft({
	output = "default:bronze_ingot 9",
	recipe = {
		{"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
		{"default:copper_ingot", "default:tin_ingot", "default:copper_ingot"},
		{"default:copper_ingot", "default:copper_ingot", "default:copper_ingot"},
	}
})

minetest.register_craft({
	output = "default:bronze_block",
	recipe = {
		{"default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot"},
		{"default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot"},
		{"default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot"},
	}
})

minetest.register_craft({
	output = "default:bronze_ingot 9",
	recipe = {
		{"default:bronze_block"},
	}
})

minetest.register_craft({
	output = "default:gold_block",
	recipe = {
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
	}
})

minetest.register_craft({
	output = "default:gold_ingot 9",
	recipe = {
		{"default:gold_block"},
	}
})

minetest.register_craft({
	output = "default:beskar_block",
	recipe = {
		{"default:beskar_ingot", "default:beskar_ingot", "default:beskar_ingot"},
		{"default:beskar_ingot", "default:beskar_ingot", "default:beskar_ingot"},
		{"default:beskar_ingot", "default:beskar_ingot", "default:beskar_ingot"},
	}
})

minetest.register_craft({
	output = "default:beskar_ingot 9",
	recipe = {
		{"default:beskar_block"},
	}
})

minetest.register_craft({
	output = "default:sandstone",
	recipe = {
		{"default:sand", "default:sand"},
		{"default:sand", "default:sand"},
	}
})

minetest.register_craft({
	output = "default:sand 4",
	recipe = {
		{"default:sandstone"},
	}
})

minetest.register_craft({
	output = "default:sandstone_brick 4",
	recipe = {
		{"default:sandstone", "default:sandstone"},
		{"default:sandstone", "default:sandstone"},
	}
})

minetest.register_craft({
	output = "default:sandstone_block 9",
	recipe = {
		{"default:sandstone", "default:sandstone", "default:sandstone"},
		{"default:sandstone", "default:sandstone", "default:sandstone"},
		{"default:sandstone", "default:sandstone", "default:sandstone"},
	}
})

minetest.register_craft({
	output = "default:desert_sandstone",
	recipe = {
		{"default:desert_sand", "default:desert_sand"},
		{"default:desert_sand", "default:desert_sand"},
	}
})

minetest.register_craft({
	output = "default:desert_sand 4",
	recipe = {
		{"default:desert_sandstone"},
	}
})

minetest.register_craft({
	output = "default:desert_sandstone_brick 4",
	recipe = {
		{"default:desert_sandstone", "default:desert_sandstone"},
		{"default:desert_sandstone", "default:desert_sandstone"},
	}
})

minetest.register_craft({
	output = "default:desert_sandstone_block 9",
	recipe = {
		{"default:desert_sandstone", "default:desert_sandstone", "default:desert_sandstone"},
		{"default:desert_sandstone", "default:desert_sandstone", "default:desert_sandstone"},
		{"default:desert_sandstone", "default:desert_sandstone", "default:desert_sandstone"},
	}
})

minetest.register_craft({
	output = "default:silver_sandstone",
	recipe = {
		{"default:silver_sand", "default:silver_sand"},
		{"default:silver_sand", "default:silver_sand"},
	}
})

minetest.register_craft({
	output = "default:silver_sand 4",
	recipe = {
		{"default:silver_sandstone"},
	}
})

minetest.register_craft({
	output = "default:silver_sandstone_brick 4",
	recipe = {
		{"default:silver_sandstone", "default:silver_sandstone"},
		{"default:silver_sandstone", "default:silver_sandstone"},
	}
})

minetest.register_craft({
	output = "default:silver_sandstone_block 9",
	recipe = {
		{"default:silver_sandstone", "default:silver_sandstone", "default:silver_sandstone"},
		{"default:silver_sandstone", "default:silver_sandstone", "default:silver_sandstone"},
		{"default:silver_sandstone", "default:silver_sandstone", "default:silver_sandstone"},
	}
})

minetest.register_craft({
	output = "default:clay",
	recipe = {
		{"default:clay_lump", "default:clay_lump"},
		{"default:clay_lump", "default:clay_lump"},
	}
})

minetest.register_craft({
	output = "default:clay_lump 4",
	recipe = {
		{"default:clay"},
	}
})

minetest.register_craft({
	output = "default:brick_block",
	recipe = {
		{"default:clay_brick", "default:clay_brick"},
		{"default:clay_brick", "default:clay_brick"},
	}
})

minetest.register_craft({
	output = "default:clay_brick 4",
	recipe = {
		{"default:brick_block"},
	}
})

minetest.register_craft({
	output = "default:paper",
	recipe = {
		{"default:reeds", "default:reeds", "default:reeds"},
	}
})

minetest.register_craft({
	output = "default:book",
	recipe = {
		{"default:paper"},
		{"default:paper"},
		{"default:paper"},
	}
})

minetest.register_craft({
	output = "default:bookshelf",
	recipe = {
		{"group:soft_wood", "group:soft_wood", "group:soft_wood"},
		{"default:book", "default:book", "default:book"},
		{"group:soft_wood", "group:soft_wood", "group:soft_wood"},
	}
})

minetest.register_craft({
	output = "default:ladder_wood 5",
	recipe = {
		{"group:stick", "", "group:stick"},
		{"group:stick", "group:stick", "group:stick"},
		{"group:stick", "", "group:stick"},
	}
})

minetest.register_craft({
	output = "default:ladder_durasteel 15",
	recipe = {
		{"default:durasteel_ingot", "", "default:durasteel_ingot"},
		{"default:durasteel_ingot", "default:durasteel_ingot", "default:durasteel_ingot"},
		{"default:durasteel_ingot", "", "default:durasteel_ingot"},
	}
})

minetest.register_craft({
	output = "default:obsidian_shard 9",
	recipe = {
		{"default:obsidian"}
	}
})

minetest.register_craft({
	output = "default:obsidian",
	recipe = {
		{"default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard"},
		{"default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard"},
		{"default:obsidian_shard", "default:obsidian_shard", "default:obsidian_shard"},
	}
})

minetest.register_craft({
	output = "default:obsidian_brick 4",
	recipe = {
		{"default:obsidian", "default:obsidian"},
		{"default:obsidian", "default:obsidian"}
	}
})

minetest.register_craft({
	output = "default:obsidian_block 9",
	recipe = {
		{"default:obsidian", "default:obsidian", "default:obsidian"},
		{"default:obsidian", "default:obsidian", "default:obsidian"},
		{"default:obsidian", "default:obsidian", "default:obsidian"},
	}
})

minetest.register_craft({
	output = "default:stone_brick 4",
	recipe = {
		{"default:stone", "default:stone"},
		{"default:stone", "default:stone"},
	}
})

minetest.register_craft({
	output = "default:stone_block 9",
	recipe = {
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "default:stone", "default:stone"},
	}
})

minetest.register_craft({
	output = "default:desert_stone_brick 4",
	recipe = {
		{"default:desert_stone", "default:desert_stone"},
		{"default:desert_stone", "default:desert_stone"},
	}
})

minetest.register_craft({
	output = "default:desert_stone_block 9",
	recipe = {
		{"default:desert_stone", "default:desert_stone", "default:desert_stone"},
		{"default:desert_stone", "default:desert_stone", "default:desert_stone"},
		{"default:desert_stone", "default:desert_stone", "default:desert_stone"},
	}
})

minetest.register_craft({
	output = "default:snow_block",
	recipe = {
		{"default:snow", "default:snow", "default:snow"},
		{"default:snow", "default:snow", "default:snow"},
		{"default:snow", "default:snow", "default:snow"},
	}
})

minetest.register_craft({
	output = "default:snow 9",
	recipe = {
		{"default:snow_block"},
	}
})

minetest.register_craft({
	output = "default:quicksand",
	recipe = {
		{"group:sand", "group:sand", "group:sand"},
		{"group:sand", "bucket:bucket_water", "group:sand"},
		{"group:sand", "group:sand", "group:sand"},
	},
	replacements = {
		{"bucket:bucket_water", "bucket:bucket_empty"}
	}
})


--
-- Crafting (tool repair)
--

minetest.register_craft({
	type = "toolrepair",
	additional_wear = -0.02,
})


--
-- Cooking recipes
--

minetest.register_craft({
	type = "cooking",
	output = "default:glass",
	recipe = "group:sand",
})

minetest.register_craft({
	type = "cooking",
	output = "default:obsidian_glass",
	recipe = "default:obsidian_shard",
})

minetest.register_craft({
	type = "cooking",
	output = "default:stone",
	recipe = "default:cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "default:stone",
	recipe = "default:mossycobble",
})

minetest.register_craft({
	type = "cooking",
	output = "default:desert_stone",
	recipe = "default:desert_cobble",
})

minetest.register_craft({
	type = "cooking",
	output = "default:durasteel_ingot",
	recipe = "default:zersium_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "default:copper_ingot",
	recipe = "default:copper_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "default:tin_ingot",
	recipe = "default:tin_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "default:gold_ingot",
	recipe = "default:gold_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "default:beskar_ingot",
	recipe = "default:beskar_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "default:clay_brick",
	recipe = "default:clay_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "default:durasteel_ingot",
	recipe = "default:skeleton_keycard",
	cooktime = 5,
})

minetest.register_craft({
	type = "cooking",
	output = "default:durasteel_ingot",
	recipe = "default:keycard",
	cooktime = 5,
})


--
-- Fuels
--

-- Burn time for trunks

minetest.register_craft({
	type = "fuel",
	recipe = "default:jogan_trunk",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:pine_trunk",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:palm_trunk",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:uneti_trunk",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:wroshyr_trunk",
	burntime = 30,
})


-- Burn time for wood

minetest.register_craft({
	type = "fuel",
	recipe = "default:jogan_wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:pine_wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:palm_wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:uneti_wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:wroshyr_wood",
	burntime = 7,
})


-- Support use of group:sapling, includes default:sapling which has the same burn time
minetest.register_craft({
	type = "fuel",
	recipe = "group:sapling",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:bush_sapling",
	burntime = 3,
})


minetest.register_craft({
	type = "fuel",
	recipe = "default:fence_jogan_wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:fence_pine_wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:fence_palm_wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:fence_uneti_wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:fence_wroshyr_wood",
	burntime = 7,
})


minetest.register_craft({
	type = "fuel",
	recipe = "default:fence_rail_jogan_wood",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:fence_rail_pine_wood",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:fence_rail_palm_wood",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:fence_rail_uneti_wood",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:fence_rail_wroshyr_wood",
	burntime = 5,
})


minetest.register_craft({
	type = "fuel",
	recipe = "default:bush_stem",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:jungle_grass",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:leaves",
	burntime = 4,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:cactus",
	burntime = 15,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:reeds",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:bookshelf",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:ladder_wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:lava_source",
	burntime = 60,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:torch",
	burntime = 4,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:sign_wall_wood",
	burntime = 10,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:chest",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:chest_locked",
	burntime = 30,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:coal_lump",
	burntime = 40,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:coal_block",
	burntime = 370,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:grass_1",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:dry_grass_1",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:fern_1",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:saago_grass_1",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:paper",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:book",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:book_written",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:dry_shrub",
	burntime = 2,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:stick",
	burntime = 1,
})


minetest.register_craft({
	type = "fuel",
	recipe = "default:pick_wood",
	burntime = 6,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:shovel_wood",
	burntime = 4,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:axe_wood",
	burntime = 6,
})

minetest.register_craft({
	type = "fuel",
	recipe = "default:sword_wood",
	burntime = 5,
})
