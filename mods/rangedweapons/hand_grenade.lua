minetest.register_craft({
	output = "rangedweapons:hand_grenade",
	recipe = {
		{"", "", "default:mese_crystal_fragment"},
		{"default:steel_ingot", "tnt:gunpowder", ""},
		{"tnt:gunpowder", "tnt:gunpowder", ""},
	}
})

minetest.register_craftitem("rangedweapons:pin", {
	wield_scale = {x=2.5,y=2.5,z=1.0},
	inventory_image = "blank.png",
})
local rangedweapons_grenade_pin = {
	physical = false,
	timer = 0,
	visual = "wielditem",
	visual_size = {x=0.15, y=0.15},
	textures = {"rangedweapons:pin"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
rangedweapons_grenade_pin.on_step = function(self, dtime, pos)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	if self.lastpos.x ~= nil then
		if minetest.registered_nodes[node.name].walkable then
		self.object:remove()
			minetest.sound_play("rangedweapons_bulletdrop", {pos = self.lastpos, gain = 0.8})
			end
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}
end



minetest.register_entity("rangedweapons:grenade_pin", rangedweapons_grenade_pin)

local grenade_boom = {
	name = "rangedweapons:grenade_explosion",
	--description = "DuN mInD mEh...",
	radius = 3,
	tiles = {
		side = "blank.png",
		top = "blank.png",
		bottom = "blank.png",
		burning = "blank.png"
	},
}

minetest.register_craftitem("rangedweapons:hand_grenade", {
	stack_max= 1,
	wield_scale = {x=1.1,y=1.1,z=1.05},
		description = "" ..core.colorize("#35cdff","Thermal Detonator\n") ..core.colorize("#FFFFFF", "Explosion radius: 3\n")..core.colorize("#FFFFFF", "Throw force: 12\n")  ..core.colorize("#FFFFFF", "Gravitational pull: 6\n") ..core.colorize("#ffc000", "Right-click to arm, Left click to throw after arming\n") ..core.colorize("#ffc000", "Thrown or not, it will explode after 3 seconds from arming, be careful!"),
	range = 0,
	inventory_image = "thermal_detonator.png",
	on_secondary_use = function(itemstack, player, pointed_thing)
	   minetest.sound_play("rangedweapons_reload_a", {player})
	   minetest.after(3.0,
					  function(player)
						 local inv = player:get_inventory()
						 if inv:contains_item("main", "rangedweapons:hand_grenade_nopin") then
							inv:remove_item("main", "rangedweapons:hand_grenade_nopin")
							tnt.boom(player:getpos(), grenade_boom)
						 end
					  end,
					  player
	   )
	   return ItemStack("rangedweapons:hand_grenade_nopin")
	end
})
minetest.register_craftitem("rangedweapons:hand_grenade_nopin", {
	stack_max= 1,
	wield_scale = {x=1.1,y=1.1,z=1.05},
	description = "***HURRY UP AND THROW IT!!!***",
	range = 0,
	inventory_image = "thermal_detonator_armed.png",
	groups = {not_in_creative_inventory = 1},
	on_use = function(itemstack, user, pointed_thing)
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "rangedweapons:grenade")
			if obj then
				obj:setvelocity({x=dir.x * 12, y=dir.y * 12, z=dir.z * 12})
				obj:setacceleration({x=dir.x * -1, y=-6, z=dir.z * -1})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
			itemstack = ""
				end
			end
		end
		return itemstack
	end,
})

tnt.register_tnt(grenade_boom)

local rangedweapons_grenade = {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=0.5, y=0.5},
	textures = {"thermal_detonator_armed.png"},
	lastpos= {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
rangedweapons_grenade.on_step = function(self, dtime, pos)
	self.timer = self.timer + dtime
	local pos = self.object:getpos()
	local node = minetest.get_node(pos)
	if self.lastpos.x ~= nil then
	if minetest.registered_nodes[node.name].walkable then
	local vel = self.object:getvelocity()
	local acc = self.object:getacceleration()
	self.object:setvelocity({x=vel.x*-0.3, y=vel.y*-1, z=vel.z*-0.3})
	self.object:setacceleration({x=acc.x, y=acc.y, z=acc.z})
			end
	end
	if self.timer > 3.0 then
	tnt.boom(pos, grenade_boom)
	self.object:remove()
	end
	self.lastpos= {x = pos.x, y = pos.y, z = pos.z}

end



minetest.register_entity("rangedweapons:grenade", rangedweapons_grenade)


