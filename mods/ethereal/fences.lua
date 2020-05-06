
local S = ethereal.intllib

default.register_fence("ethereal:fence_scorched", {
	description = S("Scorched Fence"),
	texture = "scorched_tree.png",
	material = "ethereal:scorched_tree",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence("ethereal:fence_uneti_wood", {
	description = S("Uneti Fence"),
	texture = "uneti_wood.png",
	material = "ethereal:uneti_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence("ethereal:fence_brylar_wood", {
	description = S("Brylar Fence"),
	texture = "brylar_wood.png",
	material = "ethereal:brylar_wood",
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence("ethereal:fence_wroshyr_wood", {
	description = S("Wroshyr Wood Fence"),
	texture = "wroshyr_wood.png",
	material = "ethereal:wroshyr_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence("ethereal:fence_palm", {
	description = S("Palm Fence"),
	texture = "moretrees_palm_wood.png",
	material = "ethereal:palm_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence("ethereal:fence_mushroom", {
	description = S("Mushroom Fence"),
	texture = "mushroom_trunk.png",
	material = "ethereal:mushroom_trunk",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence("ethereal:fence_sakura", {
	description = S("Sakura Fence"),
	texture = "ethereal_sakura_wood.png",
	material = "ethereal:sakura_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})
