
local S = ethereal.intllib

-- register Ethereal wood type gates

doors.register_fencegate("ethereal:fencegate_scorched", {
	description = S("Scorched Wood Fence Gate"),
	texture = "scorched_tree.png",
	material = "ethereal:scorched_tree",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})