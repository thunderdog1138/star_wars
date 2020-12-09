
local S = farming.intllib

-- roti seeds
minetest.register_node("farming:seed_roti", {
	description = S("Roti Seed"),
	tiles = {"roti_seed.png"},
	inventory_image = "roti_seed.png",
	wield_image = "roti_seed.png",
	drawtype = "signlike",
	groups = {seed = 1, snappy = 3, attached_node = 1},
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	sunlight_propagates = true,
	selection_box = farming.select,
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "farming:roti_1")
	end
})

-- harvested roti
minetest.register_craftitem("farming:roti", {
	description = S("Roti"),
	inventory_image = "roti.png",
	groups = {food_barley = 1, flammable = 2}
})

-- flour
minetest.register_craft({
	type = "shapeless",
	output = "farming:flour",
	recipe = {
		"farming:roti", "farming:roti", "farming:roti",
		"farming:roti", "farming:mortar_pestle"
	},
	replacements = {{"group:food_mortar_pestle", "farming:mortar_pestle"}}
})

-- roti definition
local def = {
	drawtype = "plantlike",
	tiles = {"roti_1.png"},
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 3,
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
minetest.register_node("farming:roti_1", table.copy(def))

-- stage 2
def.tiles = {"roti_2.png"}
minetest.register_node("farming:roti_2", table.copy(def))

-- stage 3
def.tiles = {"roti_3.png"}
minetest.register_node("farming:roti_3", table.copy(def))

-- stage 4
def.tiles = {"roti_4.png"}
minetest.register_node("farming:roti_4", table.copy(def))

-- stage 5
def.tiles = {"roti_5.png"}
def.drop = {
	items = {
		{items = {"farming:roti"}, rarity = 2},
		{items = {"farming:seed_roti"}, rarity = 2}
	}
}
minetest.register_node("farming:roti_5", table.copy(def))

-- stage 6
def.tiles = {"roti_6.png"}
def.drop = {
	items = {
		{items = {"farming:roti"}, rarity = 2},
		{items = {"farming:seed_roti"}, rarity = 1}
	}
}
minetest.register_node("farming:roti_6", table.copy(def))

-- stage 7 (final)
def.tiles = {"roti_7.png"}
def.groups.growing = nil
def.drop = {
	items = {
		{items = {"farming:roti"}, rarity = 1},
		{items = {"farming:roti"}, rarity = 3},
		{items = {"farming:seed_roti"}, rarity = 1},
		{items = {"farming:seed_roti"}, rarity = 3}
	}
}
minetest.register_node("farming:roti_7", table.copy(def))

-- add to registered_plants
farming.registered_plants["farming:roti"] = {
	crop = "farming:roti",
	seed = "farming:seed_roti",
	minlight = 13,
	maxlight = 15,
	steps = 7
}

-- Fuel
minetest.register_craft({
	type = "fuel",
	recipe = "farming:roti",
	burntime = 1
})