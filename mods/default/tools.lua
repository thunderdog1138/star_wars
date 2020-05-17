-- mods/default/tools.lua

-- support for MT game translation.
local S = default.get_translator

-- The hand
minetest.register_item(":", {
	type = "none",
	wield_image = "wieldhand.png",
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[2]=3.00, [3]=0.70}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.40}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0}
		},
		damage_groups = {fleshy=1},
	}
})

--
-- Picks
--

minetest.register_tool("default:pick_wood", {
	description = S("Wooden Pickaxe"),
	inventory_image = "pick_wood.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[3]=1.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1, flammable = 2}
})

minetest.register_tool("default:pick_stone", {
	description = S("Stone Pickaxe"),
	inventory_image = "pick_stone.png",
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=2.0, [3]=1.00}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("default:pick_bronze", {
	description = S("Bronze Pickaxe"),
	inventory_image = "pick_bronze.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.50, [2]=1.80, [3]=0.90}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("default:pick_durasteel", {
	description = S("Durasteel Pickaxe"),
	inventory_image = "pick_durasteel.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("default:pick_beskar", {
	description = S("Beskar Pickaxe"),
	inventory_image = "pick_beskar.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

--
-- Shovels
--

minetest.register_tool("default:shovel_wood", {
	description = S("Wooden Shovel"),
	inventory_image = "shovel_wood.png",
	wield_image = "shovel_wood.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=3.00, [2]=1.60, [3]=0.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1, flammable = 2}
})

minetest.register_tool("default:shovel_stone", {
	description = S("Stone Shovel"),
	inventory_image = "shovel_stone.png",
	wield_image = "shovel_stone.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=1.80, [2]=1.20, [3]=0.50}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("default:shovel_bronze", {
	description = S("Bronze Shovel"),
	inventory_image = "shovel_bronze.png",
	wield_image = "shovel_bronze.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.65, [2]=1.05, [3]=0.45}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("default:shovel_durasteel", {
	description = S("Durateel Shovel"),
	inventory_image = "shovel_durasteel.png",
	wield_image = "shovel_durasteel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("default:shovel_beskar", {
	description = S("Beskar Shovel"),
	inventory_image = "shovel_beskar.png",
	wield_image = "shovel_beskar.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

--
-- Axes
--

minetest.register_tool("default:axe_wood", {
	description = S("Wooden Axe"),
	inventory_image = "axe_wood.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			choppy = {times={[2]=3.00, [3]=1.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1, flammable = 2}
})

minetest.register_tool("default:axe_stone", {
	description = S("Stone Axe"),
	inventory_image = "axe_stone.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=3.00, [2]=2.00, [3]=1.30}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("default:axe_bronze", {
	description = S("Bronze Axe"),
	inventory_image = "axe_bronze.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.75, [2]=1.70, [3]=1.15}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("default:axe_durasteel", {
	description = S("Durasteel Axe"),
	inventory_image = "axe_durasteel.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("default:axe_beskar", {
	description = S("Beskar Axe"),
	inventory_image = "axe_beskar.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

--
-- Swords
--

minetest.register_tool("default:sword_wood", {
	description = S("Wooden Sword"),
	inventory_image = "sword_wood.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.6, [3]=0.40}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1, flammable = 2}
})

minetest.register_tool("default:sword_stone", {
	description = S("Stone Sword"),
	inventory_image = "sword_stone.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("default:sword_bronze", {
	description = S("Bronze Sword"),
	inventory_image = "sword_bronze.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.75, [2]=1.30, [3]=0.375}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("default:sword_durasteel", {
	description = S("Durasteel Sword"),
	inventory_image = "sword_durasteel.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("default:sword_beskar", {
	description = S("Beskar Sword"),
	inventory_image = "sword_beskar.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("default:keycard", {
	description = S("Keycard"),
	inventory_image = "keycard.png",
	groups = {key = 1, not_in_creative_inventory = 1},
	stack_max = 1,
	on_place = function(itemstack, placer, pointed_thing)
		local under = pointed_thing.under
		local node = minetest.get_node(under)
		local def = minetest.registered_nodes[node.name]
		if def and def.on_rightclick and
				not (placer and placer:is_player() and
				placer:get_player_control().sneak) then
			return def.on_rightclick(under, node, placer, itemstack,
				pointed_thing) or itemstack
		end
		if pointed_thing.type ~= "node" then
			return itemstack
		end

		local pos = pointed_thing.under
		node = minetest.get_node(pos)

		if not node or node.name == "ignore" then
			return itemstack
		end

		local ndef = minetest.registered_nodes[node.name]
		if not ndef then
			return itemstack
		end

		local on_key_use = ndef.on_key_use
		if on_key_use then
			on_key_use(pos, placer)
		end

		return nil
	end
})
