
local S = ethereal.intllib

default.register_fence("ethereal:fence_scorched", {
	description = S("Scorched Fence"),
	texture = "scorched_tree.png",
	material = "ethereal:scorched_tree",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})