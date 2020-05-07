
local S = ethereal.intllib

-- vines
minetest.register_node("ethereal:vine", {
	description = S("Vine"),
	drawtype = "signlike",
	tiles = {"vine.png"},
	inventory_image = "vine.png",
	wield_image = "vine.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
	},
	groups = {choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},
	legacy_wallmounted = true,
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output = "ethereal:vine 2",
	recipe = {
		{"group:leaves", "", "group:leaves"},
		{"", "group:leaves", ""},
		{"group:leaves", "", "group:leaves"},
	}
})

-- light strings (glowing vine)
minetest.register_node("ethereal:lightstring", {
	description = S("Light String Vine"),
	drawtype = "signlike",
	tiles = {"lightstring.png"},
	inventory_image = "lightstring.png",
	wield_image = "lightstring.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	light_source = 10,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
	},
	groups = {choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},
	legacy_wallmounted = true,
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output = "ethereal:lightstring 8",
	recipe = {
		{"ethereal:vine", "ethereal:vine", "ethereal:vine"},
		{"ethereal:vine", "default:torch", "ethereal:vine"},
		{"ethereal:vine", "ethereal:vine", "ethereal:vine"},
	},
})

-- Fern (boston)
minetest.register_node("ethereal:fern", {
	description = S("Fern"),
	drawtype = "plantlike",
	visual_scale = 1.4,
	tiles = {"fern.png"},
	inventory_image = "fern.png",
	wield_image = "fern.png",
	paramtype = "light",
	sunlight_propagates = true,
	waving = 1,
	walkable = false,
	buildable_to = true,
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:fern"}}
		}
	},
	groups = {snappy = 3, flora = 1, attached_node = 1, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-5 / 16, -0.5, -5 / 16, 5 / 16, 0.67, 5 / 16},
	},
})

-- Illuminated Cave Shrooms (Red, Green and Blue)
minetest.register_node("ethereal:illumishroom", {
	description = S("Red Illumishroom"),
	drawtype = "plantlike",
	tiles = { "illumishroom.png" },
	inventory_image = "illumishroom.png",
	wield_image = "illumishroom.png",
	paramtype = "light",
	light_source = 5,
	sunlight_propagates = true,
	walkable = false,
	groups = {dig_immediate = 3, attached_node = 1, flammable = 3},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.47, 6 / 16},
	},
})

minetest.register_node("ethereal:illumishroom2", {
	description = S("Green Illumishroom"),
	drawtype = "plantlike",
	tiles = { "illumishroom2.png" },
	inventory_image = "illumishroom2.png",
	wield_image = "illumishroom2.png",
	paramtype = "light",
	light_source = 5,
	sunlight_propagates = true,
	walkable = false,
	groups = {dig_immediate = 3, attached_node = 1, flammable = 3},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.47, 6 / 16},
	},
})

minetest.register_node("ethereal:illumishroom3", {
	description = S("Cyan Illumishroom"),
	drawtype = "plantlike",
	tiles = { "illumishroom3.png" },
	inventory_image = "illumishroom3.png",
	wield_image = "illumishroom3.png",
	paramtype = "light",
	light_source = 5,
	sunlight_propagates = true,
	walkable = false,
	groups = {dig_immediate = 3, attached_node = 1, flammable = 3},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.47, 6 / 16},
	},
})
