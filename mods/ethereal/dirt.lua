
local S = ethereal.intllib

-- flower spread
local flower_spread = function(pos, node)

	if (minetest.get_node_light(pos) or 0) < 13 then
		return
	end

	local pos0 = {x = pos.x - 4, y = pos.y - 2, z = pos.z - 4}
	local pos1 = {x = pos.x + 4, y = pos.y + 2, z = pos.z + 4}

	local num = #minetest.find_nodes_in_area(pos0, pos1, "group:flora")

	-- stop flowers spreading too much just below top of map block
	if minetest.find_node_near(pos, 2, "ignore") then
		return
	end

	local seedling = minetest.find_nodes_in_area_under_air(
		pos0, pos1, {"group:soil"})

	if #seedling > 0 then

		pos = seedling[math.random(#seedling)]

		-- default farming has desert sand as soil, so dont spread on this
		if minetest.get_node(pos).name == "default:desert_sand" then
			return
		end

		pos.y = pos.y + 1

		if (minetest.get_node_light(pos) or 0) < 13 then
			return
		end

		minetest.swap_node(pos, {name = node.name})
	end
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

	if node.name == "default:bamboo" then
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

		if node.name == "default:bamboo"
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

	if label == "Flower spread"
	or node1 == "group:flora" then

		--ab.interval = 1
		--ab.chance = 1
		ab.nodenames = {"group:flora"}
		ab.neighbors = {"group:soil"}
		ab.action = flower_spread

	-- find grow papyrus abm and change to grow_papyrus function
	elseif label == "Grow reeds"
	or node1 == "default:reeds" then

		--ab.interval = 2
		--ab.chance = 1
		ab.nodenames = {"default:reeds", "default:bamboo"}
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