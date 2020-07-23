
local S = farming.intllib

-- Toz

farming.register_plant("farming:toz", {
	description = S("Toz seed"),
	paramtype2 = "meshoptions",
	inventory_image = "toz_seed.png",
	steps = 8,
	place_param2 = 3
})

minetest.override_item("farming:toz", {
	description = S("toz"),
	groups = {food_rye = 1, flammable = 4}
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:flour",
	recipe = {
		"farming:toz", "farming:toz", "farming:toz", "farming:toz",
		"farming:mortar_pestle"
	},
	replacements = {{"group:food_mortar_pestle", "farming:mortar_pestle"}}
})

-- Oats

farming.register_plant("farming:shorn", {
	description = S("Shorn seed"),
	paramtype2 = "meshoptions",
	inventory_image = "shorn_seed.png",
	steps = 8,
	place_param2 = 3
})

minetest.override_item("farming:shorn", {
	description = S("Shorn"),
	groups = {food_oats = 1, flammable = 4}
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:flour",
	recipe = {
		"farming:shorn", "farming:shorn", "farming:shorn", "farming:shorn",
		"farming:mortar_pestle"
	},
	replacements = {{"group:food_mortar_pestle", "farming:mortar_pestle"}}
})

-- Ghoba Rice

farming.register_plant("farming:ghoba_rice", {
	description = S("Ghoba Rice grains"),
	paramtype2 = "meshoptions",
	inventory_image = "ghoba_rice_seed.png",
	steps = 8,
	place_param2 = 3
})

minetest.override_item("farming:ghoba_rice", {
	description = S("Ghoba Rice"),
	groups = {food_rice = 1, flammable = 4}
})

minetest.register_craftitem("farming:ghoba_rice_bread", {
	description = S("Ghoba Rice Bread"),
	inventory_image = "ghoba_rice_bread.png",
	on_use = minetest.item_eat(5),
	groups = {food_rice_bread = 1, flammable = 2}
})

minetest.register_craftitem("farming:ghoba_rice_flour", {
	description = S("Ghoba Rice Flour"),
	inventory_image = "ghoba_rice_flour.png",
	groups = {food_rice_flour = 1, flammable = 1}
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:ghoba_rice_flour",
	recipe = {
		"farming:ghoba_rice", "farming:ghoba_rice", "farming:ghoba_rice", "farming:ghoba_rice",
		"farming:mortar_pestle"
	},
	replacements = {{"group:food_mortar_pestle", "farming:mortar_pestle"}}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "farming:ghoba_rice_bread",
	recipe = "farming:ghoba_rice_flour"
})

-- Multigrain flour

minetest.register_craftitem("farming:flour_multigrain", {
	description = S("Multigrain Flour"),
	inventory_image = "flour_multigrain.png",
	groups = {food_flour = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:flour_multigrain",
	recipe = {
		"farming:lothal_wheat", "farming:roti", "farming:shorn",
		"farming:toz", "farming:mortar_pestle"
	},
	replacements = {{"group:food_mortar_pestle", "farming:mortar_pestle"}}
})

-- Multigrain bread

minetest.register_craftitem("farming:bread_multigrain", {
	description = S("Multigrain Bread"),
	inventory_image = "bread_multigrain.png",
	on_use = minetest.item_eat(7),
	groups = {food_bread = 1, flammable = 2}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "farming:bread_multigrain",
	recipe = "farming:flour_multigrain"
})

-- Fuels

minetest.register_craft({
	type = "fuel",
	recipe = "farming:ghoba_rice_bread",
	burntime = 1
})

minetest.register_craft({
	type = "fuel",
	recipe = "farming:bread_multigrain",
	burntime = 1
})

minetest.register_craft({
	type = "fuel",
	recipe = "farming:toz",
	burntime = 1
})

minetest.register_craft({
	type = "fuel",
	recipe = "farming:shorn",
	burntime = 1
})

minetest.register_craft({
	type = "fuel",
	recipe = "farming:ghoba_rice",
	burntime = 1
})
