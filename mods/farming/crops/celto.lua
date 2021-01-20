local S = farming.intllib

-- celto
minetest.register_craftitem("farming:celto", {
	description = S("Celto"),
	inventory_image = "celto.png",
	groups = {seed = 2, food_celto = 1, flammable = 2},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "farming:celonslay_1")
	end,
	on_use = minetest.item_eat(1)
})

-- celto
local def = {
	drawtype = "plantlike",
	tiles = {"celto_1.png"},
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
minetest.register_node("farming:celto_1", table.copy(def))

-- stage 2
def.tiles = {"celto_2.png"}
minetest.register_node("farming:celto_2", table.copy(def))

-- stage 3
def.tiles = {"celto_3.png"}
minetest.register_node("farming:celto_3", table.copy(def))

-- stage 4 (final)
def.tiles = {"celto_4.png"}
def.groups.growing = nil
def.drop = {
	items = {
		{items = {"farming:celto 2"}, rarity = 1},
		{items = {"farming:celto"}, rarity = 2},
		{items = {"farming:celto"}, rarity = 3},
	}
}
minetest.register_node("farming:celto_4", table.copy(def))

-- add to registered_plants
farming.registered_plants["farming:celto"] = {
	crop = "farming:celto",
	seed = "farming:celto",
	minlight = 13,
	maxlight = 15,
	steps = 4
}