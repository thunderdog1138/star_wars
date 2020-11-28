
local S = mobs.intllib

-- name tag
minetest.register_craftitem("mobs:nametag", {
	description = S("Name Tag"),
	inventory_image = "nametag.png",
	groups = {flammable = 2}
})

if minetest.get_modpath("dye") and minetest.get_modpath("farming") then
	minetest.register_craft({
		type = "shapeless",
		output = "mobs:nametag",
		recipe = {"default:paper", "dye:black", "farming:string"}
	})
end

-- leather
minetest.register_craftitem("mobs:leather", {
	description = S("Leather"),
	inventory_image = "leather.png",
	groups = {flammable = 2}
})

-- raw meat
minetest.register_craftitem("mobs:bantha_meat_raw", {
	description = S("Raw Bantha Meat"),
	inventory_image = "bantha_meat_raw.png",
	on_use = minetest.item_eat(3),
	groups = {food_meat_raw = 1, flammable = 2}
})

-- cooked meat
minetest.register_craftitem("mobs:bantha_meat", {
	description = S("Bantha Meat"),
	inventory_image = "bantha_meat.png",
	on_use = minetest.item_eat(8),
	groups = {food_meat = 1, flammable = 2}
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:bantha_meat",
	recipe = "mobs:bantha_meat_raw",
	cooktime = 5
})

-- ration pack
minetest.register_craftitem("mobs:ration_pack", {
	description = S("Ration Pack"),
	inventory_image = "ration_pack.png"
})

minetest.register_craft({
	type = "shapeless",
	output = "mobs:polystarch",
	recipe = {
		"mobs:ration_pack"
	},
	replacements = {
		{"mobs:ration_pack", "mobs:veg_meat"}
	}
})

-- polystarch and polystarch bread
minetest.register_craftitem("mobs:polystarch", {
	description = S("Polystarch"),
	inventory_image = "polystarch.png"
})

minetest.register_craftitem("mobs:polystarch_bread", {
	description = S("Polystarch Bread"),
	inventory_image = "polystarch_bread.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craft({
	type = "shapeless",
	output = "mobs:polystarch_bread 3",
	recipe = {
		"mobs:polystarch", "bucket:bucket_water"
	},
	replacements = {
		{"bucket:bucket_water", "bucket:bucket_empty"}
	}
})

-- veg-meat
minetest.register_craftitem("mobs:veg_meat", {
	description = S("Veg-meat"),
	inventory_image = "veg-meat.png",
	on_use = minetest.item_eat(3),
})

-- lasso
minetest.register_tool("mobs:lasso", {
	description = S("Lasso (right-click animal to put in inventory)"),
	inventory_image = "lasso.png",
	groups = {flammable = 2}
})

if minetest.get_modpath("farming") then
	minetest.register_craft({
		output = "mobs:lasso",
		recipe = {
			{"farming:string", "farming:string", "farming:string"},
			{"farming:string", "", "farming:string"},
			{"farming:string", "farming:string", "farming:string"}
		}
	})
end

minetest.register_alias("mobs:magic_lasso", "mobs:lasso")

-- net
minetest.register_tool("mobs:net", {
	description = S("Net (right-click animal to put in inventory)"),
	inventory_image = "net.png",
	groups = {flammable = 2}
})

if minetest.get_modpath("farming") then
	minetest.register_craft({
		output = "mobs:net",
		recipe = {
			{"group:stick", "", "group:stick"},
			{"group:stick", "", "group:stick"},
			{"farming:string", "group:stick", "farming:string"}
		}
	})
end

-- shears (right click to shear animal)
minetest.register_tool("mobs:shears", {
	description = S("Shears (right-click to shear)"),
	inventory_image = "shears.png",
	groups = {flammable = 2}
})

minetest.register_craft({
	output = "mobs:shears",
	recipe = {
		{"", "default:durasteel_ingot", ""},
		{"", "group:stick", "default:steel_ingot"}
	}
})

-- protection rune
minetest.register_craftitem("mobs:protector", {
	description = S("Mob Protection Rune"),
	inventory_image = "mob_protector.png",
	groups = {flammable = 2}
})

minetest.register_craft({
	output = "mobs:protector",
	recipe = {
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "default:goldblock", "default:stone"},
		{"default:stone", "default:stone", "default:stone"}
	}
})

-- saddle
minetest.register_craftitem("mobs:saddle", {
	description = S("Saddle"),
	inventory_image = "saddle.png",
	groups = {flammable = 2}
})

minetest.register_craft({
	output = "mobs:saddle",
	recipe = {
		{"mobs:leather", "mobs:leather", "mobs:leather"},
		{"mobs:leather", "default:durasteel_ingot", "mobs:leather"},
		{"mobs:leather", "default:durasteel_ingot", "mobs:leather"}
	}
})


-- make sure we can register fences
if default.register_fence then

-- mob fence (looks like normal fence but collision is 2 high)
default.register_fence("mobs:fence_wood", {
	description = S("Mob Fence"),
	texture = "jogan_wood.png",
	material = "default:fence_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 1.9, 0.5},
		}
	}
})

-- mob fence top (has enlarged collisionbox to stop mobs getting over)
minetest.register_node("mobs:fence_top", {
	description = S("Mob Fence Top"),
	drawtype = "nodebox",
	tiles = {"jogan_wood.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.4, -1.5, -0.4, 0.4, 0, 0.4}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.4, -1.5, -0.4, 0.4, 0, 0.4}
	}
})

minetest.register_craft({
	output = "mobs:fence_top 12",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"", "default:fence_wood", ""}
	}
})

end


-- items that can be used as fuel
minetest.register_craft({
	type = "fuel",
	recipe = "mobs:nametag",
	burntime = 3
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:lasso",
	burntime = 7
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:net",
	burntime = 8
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:leather",
	burntime = 4
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:saddle",
	burntime = 7
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:fence_wood",
	burntime = 7
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:fence_top",
	burntime = 2
})


-- this tool spawns same mob and adds owner, protected, nametag info
-- then removes original entity, this is used for fixing any issues.

local tex_obj

minetest.register_tool(":mobs:mob_reset_stick", {
	description = S("Mob Reset Stick"),
	inventory_image = "stick.png^[colorize:#ff000050",
	stack_max = 1,
	groups = {not_in_creative_inventory = 1},

	on_use = function(itemstack, user, pointed_thing)

		if pointed_thing.type ~= "object" then
			return
		end

		local obj = pointed_thing.ref

		local control = user:get_player_control()
		local sneak = control and control.sneak

		-- spawn same mob with saved stats, with random texture
		if obj and not sneak then

			local self = obj:get_luaentity()
			local obj2 = minetest.add_entity(obj:get_pos(), self.name)

			if obj2 then

				local ent2 = obj2:get_luaentity()

				ent2.protected = self.protected
				ent2.owner = self.owner
				ent2.nametag = self.nametag
				ent2.gotten = self.gotten
				ent2.tamed = self.tamed
				ent2.health = self.health
				ent2.order = self.order

				if self.child then
					obj2:set_velocity({x = 0, y = self.jump_height, z = 0})
				end

				obj2:set_properties({nametag = self.nametag})

				obj:remove()
			end
		end

		-- display form to enter texture name ending in .png
		if obj and sneak then

			tex_obj = obj

			local name = user:get_player_name()
			local tex = ""

			minetest.show_formspec(name, "mobs_texture", "size[8,4]"
			.. "field[0.5,1;7.5,0;name;"
			.. minetest.formspec_escape(S("Enter texture:")) .. ";" .. tex .. "]"
			.. "button_exit[2.5,3.5;3,1;mob_texture_change;"
			.. minetest.formspec_escape(S("Change")) .. "]")
		end
	end
})

minetest.register_on_player_receive_fields(function(player, formname, fields)

	-- right-clicked with nametag and name entered?
	if formname == "mobs_texture"
	and fields.name
	and fields.name ~= "" then

		-- does mob still exist?
		if not tex_obj
		or not tex_obj:get_luaentity() then
			return
		end

		-- make sure nametag is being used to name mob
		local item = player:get_wielded_item()

		if item:get_name() ~= "mobs:mob_reset_stick" then
			return
		end

		-- limit name entered to 64 characters long
		if fields.name:len() > 64 then
			fields.name = fields.name:sub(1, 64)
		end

		-- update texture
		local self = tex_obj:get_luaentity()

		self.base_texture = {fields.name}

		tex_obj:set_properties({textures = {fields.name}})

		-- reset external variable
		tex_obj = nil
	end
end)
