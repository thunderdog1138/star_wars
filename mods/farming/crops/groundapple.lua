
local S = farming.intllib

-- groundapple
minetest.register_craftitem("farming:groundapple", {
	description = S("Groundapple"),
	inventory_image = "groundapple.png",
	groups = {seed = 2, food_groundapple = 1, flammable = 2},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "farming:groundapple_1")
	end,
	on_use = minetest.item_eat(1)
})

local def = {
	drawtype = "plantlike",
	tiles = {"groundapple_1.png"},
	paramtype = "light",
	sunlight_propagates = true,
	waving = 1,
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
minetest.register_node("farming:groundapple_1", table.copy(def))

-- stage 2
def.tiles = {"groundapple_2.png"}
minetest.register_node("farming:groundapple_2", table.copy(def))

-- stage 3
def.tiles = {"groundapple_3.png"}
minetest.register_node("farming:groundapple_3", table.copy(def))

-- stage 4
def.tiles = {"groundapple_4.png"}
minetest.register_node("farming:groundapple_4", table.copy(def))

-- stage 5
def.tiles = {"groundapple_5.png"}
minetest.register_node("farming:groundapple_5", table.copy(def))

-- stage 6
def.tiles = {"groundapple_6.png"}
def.groups.growing = nil
def.drop = {
	max_items = 2, items = {
		{items = {"farming:groundapple"}, rarity = 1},
		{items = {"farming:groundapple"}, rarity = 5}
	}
}
minetest.register_node("farming:groundapple_6", table.copy(def))

-- add to registered_plants
farming.registered_plants["farming:groundapple"] = {
	crop = "farming:groundapple",
	seed = "farming:groundapple",
	minlight = 13,
	maxlight = 15,
	steps = 6
}