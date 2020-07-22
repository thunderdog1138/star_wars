
local S = ethereal.intllib

-- dry dirt
minetest.register_node("ethereal:dry_dirt", {
	description = S("Dried Dirt"),
	tiles = {"dry_dirt.png"},
	is_ground_content = ethereal.cavedirt,
	groups = {crumbly = 3, soil = 1},
	soil = {
		base = "ethereal:dry_dirt",
		dry = "farming:dry_soil",
		wet = "farming:dry_soil_wet"
	},
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_craft({
	type = "cooking",
	output = "ethereal:dry_dirt",
	recipe = "default:dirt",
	cooktime = 3,
})

-- charred dirt
minetest.register_node("ethereal:charred_dirt", {
	description = S("Charred Dirt"),
	tiles = {"charred_dirt.png"},
	is_ground_content = ethereal.cavedirt,
	groups = {crumbly = 3},
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_craft({
	type = "cooking",
	output = "ethereal:charred_dirt",
	recipe = "ethereal:dry_dirt",
	cooktime = 3,
})

local dirts = {
	"Bamboo", "Jungle", "Grass", "Prairie", "Cold",
	"Swamp", "Fungus", "Savanna"
}

for n = 1, #dirts do

	local desc = dirts[n]
	local name = desc:lower()

	minetest.register_node("ethereal:"..name.."_dirt", {
		description = S(desc.." Dirt"),
		tiles = {
			"dirt_"..name.."_top.png",
			"dirt.png",
			{
				name = "dirt.png^dirt_"
				.. name .."_side.png",
				tileable_vertical = false
			}
		},
		is_ground_content = ethereal.cavedirt,
		groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
		soil = {
			base = "ethereal:"..name.."_dirt",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "default:dirt",
		sounds = default.node_sound_dirt_defaults({
			footstep = {name = "default_grass_footstep", gain = 0.25},
		}),
	})

end

-- grow reeds up to 4 high and bamboo up to 8 high
local grow_reeds = function(pos, node)

	local oripos = pos.y
	local high = 4

	pos.y = pos.y - 1

	local nod = minetest.get_node_or_nil(pos)

	if not nod
	or minetest.get_item_group(nod.name, "soil") < 1
	or minetest.find_node_near(pos, 3, {"group:water"}) == nil then
		return
	end

	if node.name == "ethereal:bamboo" then
		high = 8
	end

	pos.y = pos.y + 1

	local height = 0

	while height < high
	and minetest.get_node(pos).name == node.name do
		height = height + 1
		pos.y = pos.y + 1
	end

	nod = minetest.get_node_or_nil(pos)

	if nod
	and nod.name == "air"
	and height < high then

		if node.name == "ethereal:bamboo"
		and height == (high - 1) then

			ethereal.grow_bamboo_tree({x = pos.x, y = oripos, z = pos.z})
		else
			minetest.swap_node(pos, {name = node.name})
		end
	end

end

-- loop through active abm's
for _, ab in pairs(minetest.registered_abms) do

	local label = ab.label or ""
	local node1 = ab.nodenames and ab.nodenames[1] or ""
	local node2 = ab.nodenames and ab.nodenames[2] or ""
	local neigh = ab.neighbors and ab.neighbors[1] or ""

	-- find grow reeds abm and change to grow_papyrus function
	if label == "Grow reeds"
	or node1 == "default:reeds" then

		--ab.interval = 2
		--ab.chance = 1
		ab.nodenames = {"default:reeds", "ethereal:bamboo"}
		ab.neighbors = {"group:soil"}
		ab.action = grow_reeds
	end
end

-- If Baked Clay mod not active, make Red, Orange and Grey nodes
if not minetest.get_modpath("bakedclay") then

	minetest.register_node(":bakedclay:red", {
		description = S("Red Baked Clay"),
		tiles = {"baked_clay_red.png"},
		groups = {cracky = 3},
		is_ground_content = ethereal.cavedirt,
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(":bakedclay:orange", {
		description = S("Orange Baked Clay"),
		tiles = {"baked_clay_orange.png"},
		groups = {cracky = 3},
		is_ground_content = ethereal.cavedirt,
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(":bakedclay:grey", {
		description = S("Grey Baked Clay"),
		tiles = {"baked_clay_grey.png"},
		groups = {cracky = 3},
		is_ground_content = ethereal.cavedirt,
		sounds = default.node_sound_stone_defaults(),
	})

end

-- Quicksand
minetest.register_node("ethereal:quicksand", {
	description = S("Quicksand"),
	tiles = {"sand.png"},
	drawtype = "glasslike",
	paramtype = "light",
	drop = "default:sand",
	liquid_viscosity = 15,
	liquidtype = "source",
	liquid_alternative_flowing = "ethereal:quicksand",
	liquid_alternative_source = "ethereal:quicksand",
	liquid_renewable = false,
	liquid_range = 0,
	drowning = 1,
	walkable = false,
	climbable = false,
	post_effect_color = {r = 230, g = 210, b = 160, a = 245},
	groups = {crumbly = 3, sand = 1, liquid = 3, disable_jump = 1},
	sounds = default.node_sound_sand_defaults(),
})

-- craft quicksand
minetest.register_craft({
	output = "ethereal:quicksand",
	recipe = {
		{"group:sand", "group:sand", "group:sand"},
		{"group:sand", "bucket:bucket_water", "group:sand"},
		{"group:sand", "group:sand", "group:sand"},
	},
	replacements = {
		{"bucket:bucket_water", "bucket:bucket_empty"}
	}
})