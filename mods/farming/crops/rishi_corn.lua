
--[[
	Original textures from GeMinecraft
	http://www.minecraftforum.net/forums/mapping-and-modding/minecraft-mods/wip-mods/1440575-1-2-5-generation-minecraft-beta-1-2-farming-and
]]

local S = farming.intllib

-- rishi corn
minetest.register_craftitem("farming:rishi_corn", {
	description = S("Rishi Corn"),
	inventory_image = "rishi_corn.png",
	groups = {seed = 2, food_corn = 1, flammable = 2},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "farming:rishi_corn_1")
	end,
	on_use = minetest.item_eat(3)
})

-- rishi corn on the cob (texture by TenPlus1)
minetest.register_craftitem("farming:rishi_corn_cob", {
	description = S("Rishi Corn on the Cob"),
	inventory_image = "rishi_corn_cob.png",
	groups = {food_corn_cooked = 1, flammable = 2},
	on_use = minetest.item_eat(5)
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "farming:rishi_corn_cob",
	recipe = "farming:rishi_corn"
})

-- cornstarch
minetest.register_craftitem("farming:cornstarch", {
	description = S("Cornstarch"),
	inventory_image = "cornstarch.png",
	groups = {food_cornstarch = 1, flammable = 2}
})

minetest.register_craft({
	output = "farming:cornstarch",
	recipe = {
		{"group:food_mortar_pestle", "group:food_corn_cooked", "group:food_baking_tray"},
		{"", "group:food_bowl", ""},
	},
	replacements = {
		{"group:food_mortar_pestle", "farming:mortar_pestle"},
		{"group:food_baking_tray", "farming:baking_tray"},
	}
})

-- rishi corn definition
local def = {
	drawtype = "plantlike",
	tiles = {"rishi_corn_1.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	drop = "",
	selection_box = farming.select,
	groups = {
		snappy = 3, flammable = 2, plant = 1, attached_node = 1,
		not_in_creative_inventory = 1, growing = 1
	},
	sounds = default.node_sound_leaves_defaults()
}

-- stage 1
minetest.register_node("farming:rishi_corn_1", table.copy(def))

-- stage 2
def.tiles = {"rishi_corn_2.png"}
minetest.register_node("farming:rishi_corn_2", table.copy(def))

-- stage 3
def.tiles = {"rishi_corn_3.png"}
minetest.register_node("farming:rishi_corn_3", table.copy(def))

-- stage 4
def.tiles = {"rishi_corn_4.png"}
minetest.register_node("farming:rishi_corn_4", table.copy(def))

-- stage 5
def.tiles = {"rishi_corn_5.png"}
minetest.register_node("farming:rishi_corn_5", table.copy(def))

-- stage 6
def.tiles = {"rishi_corn_6.png"}
def.visual_scale = 1.9
minetest.register_node("farming:rishi_corn_6", table.copy(def))

-- stage 7
def.tiles = {"rishi_corn_7.png"}
def.drop = {
	items = {
		{items = {"farming:rishi_corn"}, rarity = 1},
		{items = {"farming:rishi_corn"}, rarity = 2},
		{items = {"farming:rishi_corn"}, rarity = 3}
	}
}
minetest.register_node("farming:rishi_corn_7", table.copy(def))

-- stage 8 (final)
def.tiles = {"rishi_corn_8.png"}
def.groups.growing = nil
def.drop = {
	items = {
		{items = {"farming:rishi_corn 2"}, rarity = 1},
		{items = {"farming:rishi_corn 2"}, rarity = 2},
		{items = {"farming:rishi_corn 2"}, rarity = 2}
	}
}
minetest.register_node("farming:rishi_corn_8", table.copy(def))

-- add to registered_plants
farming.registered_plants["farming:rishi_corn"] = {
	crop = "farming:rishi_corn",
	seed = "farming:rishi_corn",
	minlight = 13,
	maxlight = 15,
	steps = 8
}