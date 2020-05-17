
local S = farming.intllib

--= Sugar

minetest.register_craftitem("farming:sugar", {
	description = S("Sugar"),
	inventory_image = "sugar.png",
	groups = {food_sugar = 1, flammable = 3},
})

minetest.register_craft({
	type = "cooking",
	cooktime = 3,
	output = "farming:sugar 2",
	recipe = "default:reeds",
})


--= Salt

minetest.register_node("farming:salt", {
	description = S("Salt"),
	inventory_image = "salt.png",
	wield_image = "salt.png",
	drawtype = "plantlike",
	visual_scale = 0.8,
	paramtype = "light",
	tiles = {"salt.png"},
	groups = {food_salt = 1, vessel = 1, dig_immediate = 3,
			attached_node = 1},
	sounds = default.node_sound_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "farming:salt",
	recipe = "bucket:bucket_water",
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}}
})
