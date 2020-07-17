
local S = farming.intllib

--= Helpers

local eth = minetest.get_modpath("ethereal")
local alias = function(orig, new)
	minetest.register_alias(orig, new)
end

--= Overrides (add food_* group to apple and brown mushroom)

if minetest.registered_nodes["flowers:mushroom_brown"] then
minetest.override_item("flowers:mushroom_brown", {
	light_source = 1,
	groups = {food_mushroom = 1, snappy = 3, attached_node = 1, flammable = 2}
})
end

--= Aliases