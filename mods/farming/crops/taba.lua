local S = farming.intllib

-- taba
minetest.register_craftitem("farming:taba", {
	description = S("Taba"),
	inventory_image = "taba.png",
	groups = {seed = 2, food_taba = 1, flammable = 2},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "farming:taba_1")
	end,
	on_use = minetest.item_eat(1)
})

-- taba
local def = {
	drawtype = "plantlike",
	tiles = {"taba_1.png"},
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
minetest.register_node("farming:taba_1", table.copy(def))

-- stage 2
def.tiles = {"taba_2.png"}
minetest.register_node("farming:taba_2", table.copy(def))

-- stage 3
def.tiles = {"taba_3.png"}
minetest.register_node("farming:taba_3", table.copy(def))

-- stage 4 (final)
def.tiles = {"taba_4.png"}
def.groups.growing = nil
def.drop = {
	items = {
		{items = {"farming:taba 2"}, rarity = 1},
		{items = {"farming:taba"}, rarity = 2},
		{items = {"farming:taba"}, rarity = 3},
	}
}
minetest.register_node("farming:taba_4", table.copy(def))

-- add to registered_plants
farming.registered_plants["farming:taba"] = {
	crop = "farming:taba",
	seed = "farming:taba",
	minlight = 13,
	maxlight = 15,
	steps = 4
}