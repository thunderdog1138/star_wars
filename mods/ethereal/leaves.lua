
local S = ethereal.intllib

-- set leaftype (value inside init.lua)
local leaftype = "plantlike"

if ethereal.leaftype ~= 0 then
	leaftype = "allfaces_optional"
end

-- jogan leaves
minetest.register_node("ethereal:jogan_leaves", {
	description = S("Jogan Leaves"),
	drawtype = "plantlike",
	tiles = {"jogan_leaves.png"},
	inventory_image = "jogan_leaves.png",
	wield_image = "jogan_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	visual_scale = 1.4,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
--			{items = {"ethereal:jogan_sapling"}, rarity = 15},
			{items = {"ethereal:jogan_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- pine needles
minetest.register_node("ethereal:pine_needles", {
	description = S("Pine Needles"),
	drawtype = "plantlike",
	tiles = {"pine_needles.png"},
	inventory_image = "pine_needles.png",
	wield_image = "pine_needles.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	visual_scale = 1.4,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
--			{items = {"ethereal:pine_sapling"}, rarity = 20},
			{items = {"ethereal:pine_needles"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- palm leaves
minetest.register_node("ethereal:palm_leaves", {
	description = S("Palm Leaves"),
	drawtype = leaftype,
	visual_scale = 1.4,
	tiles = {"moretrees_palm_leaves.png"},
	inventory_image = "moretrees_palm_leaves.png",
	wield_image = "moretrees_palm_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
--			{items = {"ethereal:palm_sapling"}, rarity = 10},
			{items = {"ethereal:palm_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- wroshyr leaves
minetest.register_node("ethereal:wroshyr_leaves", {
	description = S("Wroshyr Leaves"),
	drawtype = "plantlike",
	tiles = {"wroshyr_leaves.png"},
	inventory_image = "wroshyr_leaves.png",
	wield_image = "wroshyr_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	visual_scale = 1.4,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
--			{items = {"ethereal:wroshyr_sapling"}, rarity = 50},
			{items = {"ethereal:wroshyr_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- gnarltree leaves
minetest.register_node("ethereal:gnarltree_leaves", {
	description = S("Gnarltree Leaves"),
	drawtype = leaftype,
	visual_scale = 1.4,
	tiles = {"gnarltree_leaves.png"},
	inventory_image = "gnarltree_leaves.png",
	wield_image = "gnarltree_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
--			{items = {"ethereal:gnarltree_sapling"}, rarity = 20},
			{items = {"ethereal:gnarltree_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- uneti leaves
minetest.register_node("ethereal:uneti_leaves", {
	description = S("Uneti Leaves"),
	drawtype = leaftype,
	visual_scale = 1.4,
	tiles = {"uneti_leaves.png"},
	inventory_image = "uneti_leaves.png",
	wield_image = "uneti_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
--			{items = {"ethereal:uneti_sapling"}, rarity = 50},
			{items = {"ethereal:uneti_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- brylark leaves
minetest.register_node("ethereal:brylark_leaves", {
	description = S("Brylark Leaves"),
	drawtype = leaftype,
	visual_scale = 1.4,
	tiles = {"brylark_leaves.png"},
	inventory_image = "brylark_leaves.png",
	wield_image = "brylark_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
--			{items = {"ethereal:brylark_sapling"}, rarity = 50},
			{items = {"ethereal:brylark_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- bamboo leaves
minetest.register_node("ethereal:bamboo_leaves", {
	description = S("Bamboo Leaves"),
	drawtype = leaftype,
	visual_scale = 1.4,
	tiles = {"bamboo_leaves.png"},
	inventory_image = "bamboo_leaves.png",
	wield_image = "bamboo_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
--			{items = {"ethereal:bamboo_sprout"}, rarity = 10},
			{items = {"ethereal:bamboo_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- bush leaves
minetest.register_node("ethereal:bush_leaves", {
	description = S("Bush Leaves"),
	drawtype = leaftype,
	visual_scale = 1.4,
	tiles = {"bush_leaves.png"},
	inventory_image = "bush_leaves.png",
	wield_image = "bush_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
--			{items = {"ethereal:bush_sapling"}, rarity = 10},
			{items = {"ethereal:bush_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- mushroom cap
minetest.register_node("ethereal:mushroom_cap", {
	description = S("Mushroom Cap"),
	tiles = {"mushroom_cap.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
--			{items = {"ethereal:mushroom_sapling"}, rarity = 20},
			{items = {"ethereal:mushroom_cap"}}
		}
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:mushroom_cap",
	burntime = 10,
})

-- mushroom pore (spongelike material found inside giant shrooms)
minetest.register_node("ethereal:mushroom_pore", {
	description = S("Mushroom Pore"),
	tiles = {"mushroom_pore.png"},
	groups = {
		snappy = 3, cracky = 3, choppy = 3, oddly_breakable_by_hand = 3,
		flammable = 2, disable_jump = 1, fall_damage_add_percent = -100
	},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:mushroom_pore",
	burntime = 3,
})

-- hedge block
minetest.register_node("ethereal:bamboo_bush", {
	description = S("Bamboo Bush"),
	tiles = {"bamboo_bush.png"},
	walkable = true,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	output = "ethereal:bamboo_bush",
	recipe = {
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "ethereal:bamboo_leaves", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:bamboo_bush",
	burntime = 1,
})

-- leaf decay
default.register_leafdecay({
	trunks = {"ethereal:jogan_trunk"},
	leaves = {
		"default:joganfruit", "ethereal:jogan_leaves"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:pine_trunk"},
	leaves = {"ethereal:pine_needles"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:palm_trunk"},
	leaves = {"ethereal:palm_leaves", "ethereal:coconut"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:gnarltree_trunk"},
	leaves = {"ethereal:gnarltree_leaves", "ethereal:vine"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:wroshyr_trunk"},
	leaves = {"ethereal:wroshyr_leaves"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:uneti_trunk"},
	leaves = {"ethereal:uneti_leaves"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:brylark_trunk"},
	leaves = {"ethereal:brylark_leaves"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:bamboo"},
	leaves = {"ethereal:bamboo_leaves"},
	radius = 2
})

default.register_leafdecay({
	trunks = {"ethereal:bush_stem"},
	leaves = {"ethereal:bush_leaves"},
	radius = 3
})
