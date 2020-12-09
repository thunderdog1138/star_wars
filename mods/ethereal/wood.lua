
local S = ethereal.intllib

-- jogan trunk
minetest.register_node("ethereal:jogan_trunk", {
	description = S("Jogan Trunk"),
	tiles = {
		"jogan_trunk_top.png",
		"jogan_trunk_top.png",
		"jogan_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- jogan wood
minetest.register_node("ethereal:jogan_wood", {
	description = S("Jogan Wood"),
	tiles = {"jogan_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "ethereal:jogan_wood 4",
	recipe = {{"ethereal:jogan_trunk"}}
})

-- pine trunk
minetest.register_node("ethereal:pine_trunk", {
	description = S("pine Trunk"),
	tiles = {
		"pine_trunk_top.png",
		"pine_trunk_top.png",
		"pine_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- pine wood
minetest.register_node("ethereal:pine_wood", {
	description = S("Pine Wood"),
	tiles = {"pine_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "ethereal:pine_wood 4",
	recipe = {{"ethereal:pine_trunk"}}
})

-- palm trunk
minetest.register_node("ethereal:palm_trunk", {
	description = S("Palm Trunk"),
	tiles = {
		"palm_trunk_top.png",
		"palm_trunk_top.png",
		"palm_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- palm wood
minetest.register_node("ethereal:palm_wood", {
	description = S("Palm Wood"),
	tiles = {"palm_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "ethereal:palm_wood 4",
	recipe = {{"ethereal:palm_trunk"}}
})

-- wroshyr trunk
minetest.register_node("ethereal:wroshyr_trunk", {
	description = S("Wroshyr Trunk"),
	tiles = {
		"wroshyr_trunk_top.png",
		"wroshyr_trunk_top.png",
		"wroshyr_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- wroshyr wood
minetest.register_node("ethereal:wroshyr_wood", {
	description = S("Wroshyr Wood"),
	tiles = {"wroshyr_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "ethereal:wroshyr_wood 4",
	recipe = {{"ethereal:wroshyr_trunk"}},
})

-- brylark trunk
minetest.register_node("ethereal:brylark_trunk", {
	description = S("Brylark Trunk"),
	tiles = {
		"brylark_trunk_top.png",
		"brylark_trunk_top.png",
		"brylark_trunk.png"
	},
	groups = {cracky = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- brylark wood
minetest.register_node("ethereal:brylark_wood", {
	description = S("Brylark Wood"),
	tiles = {"brylark_wood.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "ethereal:brylark_wood 4",
	recipe = {{"ethereal:brylark_trunk"}}
})

-- uneti trunk
minetest.register_node("ethereal:uneti_trunk", {
	description = S("Uneti Trunk"),
	tiles = {
		"uneti_trunk_top.png",
		"uneti_trunk_top.png",
		"uneti_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, put_out_fire = 1},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- uneti wood
minetest.register_node("ethereal:uneti_wood", {
	description = S("Uneti Wood"),
	tiles = {"uneti_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, put_out_fire = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "ethereal:uneti_wood 4",
	recipe = {{"ethereal:uneti_trunk"}}
})

-- gnarltree trunk
minetest.register_node("ethereal:gnarltree_trunk", {
	description = S("Gnarltree Trunk"),
	tiles = {
		"gnarltree_trunk_top.png",
		"gnarltree_trunk_top.png",
		"gnarltree_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- gnarltree wood
minetest.register_node("ethereal:gnarltree_wood", {
	description = S("Gnarltree Wood"),
	tiles = {"gnarltree_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "ethereal:gnarltree_wood 4",
	recipe = {{"ethereal:gnarltree_trunk"}}
})

-- scorched trunk
minetest.register_node("ethereal:scorched_tree", {
	description = S("Scorched Tree"),
	tiles = {
		"scorched_tree_top.png",
		"scorched_tree_top.png",
		"scorched_tree.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 1},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

minetest.register_craft({
	output = "ethereal:scorched_tree 8",
	recipe = {
		{"group:tree", "group:tree", "group:tree"},
		{"group:tree", "default:torch", "group:tree"},
		{"group:tree", "group:tree", "group:tree"},
	}
})

-- mushroom trunk
minetest.register_node("ethereal:mushroom_trunk", {
	description = S("Giant Mushroom Trunk"),
	tiles = {
		"mushroom_trunk_top.png",
		"mushroom_trunk_top.png",
		"mushroom_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})

-- Bamboo (thanks to Nelo-slay on DeviantArt for the free Bamboo base image)
minetest.register_node("ethereal:bamboo", {
	description = S("Bamboo"),
	drawtype = "plantlike",
	tiles = {"bamboo.png"},
	inventory_image = "bamboo.png",
	wield_image = "bamboo.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {stick = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},--tree = 1
	sounds = default.node_sound_leaves_defaults(),
	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:bamboo",
	burntime = 1,
})

-- bush stem
minetest.register_node("ethereal:bush_stem", {
	description = S("Bush Stem"),
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"bush_stem.png"},
	inventory_image = "bush_stem.png",
	wield_image = "bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	},
})

minetest.register_craft({
	output = "default:stick 4",
	recipe = {
		{"ethereal:bush_stem"},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:bush_stem",
	burntime = 7,
})