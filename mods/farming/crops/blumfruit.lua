
local S = farming.intllib

-- blumfruit
minetest.register_craftitem("farming:blumfruit", {
	description = S("Blumfruit"),
	inventory_image = "blumfruit.png",
	groups = {seed = 2, food_blumfruit = 1, food_blueberry = 1,
			food_berry = 1, flammable = 2},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "farming:blumfruit_1")
	end,
	on_use = minetest.item_eat(1)
})

-- blumfruit muffin (thanks to sosogirl123 @ deviantart.com for muffin image)
minetest.register_craftitem("farming:muffin_blumfruit", {
	description = S("Blumfruit Muffin"),
	inventory_image = "blumfruit_muffin.png",
	on_use = minetest.item_eat(2)
})

minetest.register_craft({
	output = "farming:muffin_blumfruit 2",
	recipe = {
		{"farming:blumfruit", "group:food_bread", "farming:blumfruit"}
	}
})

-- Blumfruit Pie
minetest.register_craftitem("farming:blumfruit_pie", {
	description = S("Blumfruit Pie"),
	inventory_image = "blumfruit_pie.png",
	on_use = minetest.item_eat(6)
})

minetest.register_craft({
	output = "farming:blumfruit_pie",
	type = "shapeless",
	recipe = {
		"group:food_flour", "group:food_sugar",
		"farming:blumfruit", "group:food_baking_tray"
	},
	replacements = {{"group:food_baking_tray", "farming:baking_tray"}}
})

-- blumfruit definition
local def = {
	drawtype = "plantlike",
	tiles = {"blumfruit_1.png"},
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
minetest.register_node("farming:blumfruit_1", table.copy(def))

-- stage 2
def.tiles = {"blumfruit_2.png"}
minetest.register_node("farming:blumfruit_2", table.copy(def))

-- stage 3
def.tiles = {"blumfruit_3.png"}
minetest.register_node("farming:blumfruit_3", table.copy(def))

-- stage 4 (final)
def.tiles = {"blumfruit_4.png"}
def.groups.growing = nil
def.drop = {
	items = {
		{items = {"farming:blumfruit 2"}, rarity = 1},
		{items = {"farming:blumfruit"}, rarity = 2},
		{items = {"farming:blumfruit"}, rarity = 3},
	}
}
minetest.register_node("farming:blumfruit_4", table.copy(def))

-- add to registered_plants
farming.registered_plants["farming:blumfruit"] = {
	crop = "farming:blumfruit",
	seed = "farming:blumfruit",
	minlight = 13,
	maxlight = 15,
	steps = 4
}
