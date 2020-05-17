-- support for MT game translation.
local S = default.get_translator

-- Jogan Fruit
minetest.register_node("default:jogan_fruit", {
	description = S("Jogan Fruit"),
	drawtype = "plantlike",
	tiles = {"jogan_fruit.png"},
	inventory_image = "jogan_fruit.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-3 / 16, -7 / 16, -3 / 16, 3 / 16, 4 / 16, 3 / 16}
	},
	groups = {food_apple = 1, fleshy = 3, dig_immediate = 3, flammable = 2,
		leafdecay = 3, leafdecay_drop = 1},
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
})