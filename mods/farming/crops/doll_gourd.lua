
--[[
	Original textures from Crops Plus mod
	Copyright (C) 2018 Grizzly Adam
	https://forum.minetest.net/viewtopic.php?f=9&t=19488
]]

local S = farming.intllib

-- doll gourd
minetest.register_craftitem("farming:doll_gourd", {
	description = S("Doll Gourd"),
	inventory_image = "doll_gourd.png",
	groups = {seed = 2, food_gourd = 1, flammable = 3},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "farming:doll_gourd_1")
	end,
	on_use = minetest.item_eat(1)
})

-- crop definition
local def = {
	drawtype = "plantlike",
	tiles = {"doll_gourd_1.png"},
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 3,
	sunlight_propagates = true,
	waving = 1,
	walkable = false,
	buildable_to = true,
	drop = "",
	selection_box = farming.select,
	groups = {
		snappy = 3, flammable = 3, plant = 1, attached_node = 1,
		not_in_creative_inventory = 1, growing = 1
	},
	sounds = default.node_sound_leaves_defaults()
}

-- stage 1
minetest.register_node("farming:doll_gourd_1", table.copy(def))

-- stage 2
def.tiles = {"doll_gourd_2.png"}
minetest.register_node("farming:doll_gourd_2", table.copy(def))

-- stage 3
def.tiles = {"doll_gourd_3.png"}
minetest.register_node("farming:doll_gourd_3", table.copy(def))

-- stage 4
def.tiles = {"doll_gourd_4.png"}
minetest.register_node("farming:doll_gourd_4", table.copy(def))

-- stage 5
def.tiles = {"doll_gourd_5.png"}
def.groups.growing = nil
def.drop = {
	max_items = 5, items = {
		{items = {"farming:doll_gourd"}, rarity = 1},
		{items = {"farming:doll_gourd"}, rarity = 1},
		{items = {"farming:doll_gourd"}, rarity = 2},
		{items = {"farming:doll_gourd"}, rarity = 2},
		{items = {"farming:doll_gourd"}, rarity = 5},
	}
}
minetest.register_node("farming:doll_gourd_5", table.copy(def))

-- add to registered_plants
farming.registered_plants["farming:doll_gourd"] = {
	crop = "farming:doll_gourd",
	seed = "farming:doll_gourd",
	minlight = 13,
	maxlight = 15,
	steps = 5
}