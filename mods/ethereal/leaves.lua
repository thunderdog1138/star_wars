
local S = ethereal.intllib

-- set leaftype (value inside init.lua)
local leaftype = "plantlike"

if ethereal.leaftype ~= 0 then
	leaftype = "allfaces_optional"
end

-- default jogan tree leaves
minetest.override_item("default:leaves", {
	drawtype = leaftype,
	visual_scale = 1.4,
	inventory_image = "default_leaves.png",
	wield_image = "default_leaves.png",
	walkable = ethereal.leafwalk,
})

-- default pine tree leaves
minetest.override_item("default:pine_needles", {
	drawtype = leaftype,
	visual_scale = 1.4,
	inventory_image = "default_pine_needles.png",
	wield_image = "default_pine_needles.png",
	walkable = ethereal.leafwalk,
	drop = {
		max_items = 1,
		items = {
			{items = {"default:pine_sapling"}, rarity = 20},
			{items = {"ethereal:pine_nuts"}, rarity = 5},
			{items = {"default:pine_needles"}}
		}
	},
})

-- uneti leaves
minetest.register_node("ethereal:uneti_leaves", {
	description = S("Uneti Leaves"),
	drawtype = "plantlike",
	tiles = {"uneti_leaves.png"},
	inventory_image = "uneti_leaves.png",
	wield_image = "uneti_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	visual_scale = 1.4,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:uneti_sapling"}, rarity = 50},
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
			{items = {"ethereal:brylark_sapling"}, rarity = 50},
			{items = {"ethereal:brylark_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- wroshyr tree leaves
minetest.register_node("ethereal:wroshyr_leaves", {
	description = S("Wroshyr Leaves"),
	drawtype = leaftype,
	visual_scale = 1.4,
	tiles = {"wroshyr_leaves.png"},
	inventory_image = "wroshyr_leaves.png",
	wield_image = "wroshyr_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:wroshyr_tree_sapling"}, rarity = 50},
			{items = {"ethereal:wroshyr_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- palm tree leaves
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
			{items = {"ethereal:palm_sapling"}, rarity = 10},
			{items = {"ethereal:palm_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- bamboo stalk leaves
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
			{items = {"ethereal:bamboo_sprout"}, rarity = 10},
			{items = {"ethereal:bamboo_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})

-- mushroom tops
minetest.register_node("ethereal:mushroom", {
	description = S("Mushroom Cap"),
	tiles = {"mushroom_block.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:mushroom_sapling"}, rarity = 20},
			{items = {"ethereal:mushroom"}}
		}
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:mushroom",
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

-- bush
minetest.register_node("ethereal:bush", {
	description = S("Bush"),
	tiles = {"ethereal_bush.png"},
	walkable = true,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:bush",
	burntime = 1,
})

-- compatibility check for new mt version with leafdecay function
if minetest.registered_nodes["default:dirt_with_rainforest_litter"] then

default.register_leafdecay({
	trunks = {"default:tree"},
	leaves = {"default:joganfruit", "default:leaves"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:brylark_trunk"},
	leaves = {"ethereal:brylark_leaves"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:uneti_trunk"},
	leaves = {"ethereal:uneti_leaves"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:wroshyr_trunk"},
	leaves = {"ethereal:wroshyr_leaves"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:palm_trunk"},
	leaves = {"ethereal:palm_leaves", "ethereal:coconut"},
	radius = 3
})

default.register_leafdecay({
	trunks = {"ethereal:bamboo"},
	leaves = {"ethereal:bamboo_leaves"},
	radius = 2
})

end
