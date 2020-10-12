minetest.register_craft({
	output = 'rangedweapons:m79_uld',
	recipe = {
		{'default:steel_ingot', '', 'default:mese_crystal'},
		{'default:steelblock', 'default:steelblock', 'default:tree'},
		{'default:tree', 'default:tree', 'default:tree'},
	}
})

minetest.register_craftitem("rangedweapons:m79_uld", {
	stack_max= 1,
	wield_scale = {x=2.0,y=2.0,z=2.5},
	range = 0,
		description = "" ..core.colorize("#35cdff","M79\n") ..core.colorize("#FFFFFF", "Explosion radius: 2\n") ..core.colorize("#FFFFFF", "Bullet gravitational pull: 5\n") ..core.colorize("#FFFFFF", "Ammunition: 40mm grenades\n") ..core.colorize("#FFFFFF", "Reload time: 1.25\n") ..core.colorize("#be0d00", "The gun is NOT loaded! (Right-click to load)\n")..core.colorize("#FFFFFF", "Gun type:Grenade launcher\n") ..core.colorize("#FFFFFF", "Bullet velocity: 15"),
	inventory_image = "rangedweapons_m79.png",
	on_use = function(user)
		minetest.sound_play("rangedweapons_empty", {user})
	end,
	on_secondary_use = function(itemstack, player, pointed_thing)
	   local inv = player:get_inventory()
	   if inv:contains_item("main", "rangedweapons:40mm") then
		  inv:remove_item("main", "rangedweapons:40mm")
		  local pos = player:getpos()
		  local dir = player:get_look_dir()
		  local yaw = player:get_look_yaw()
		  local wield_index = player:get_wield_index()
		  if pos and dir and yaw then
			 pos.y = pos.y + 1.6
			 local obj = minetest.add_entity(pos, "rangedweapons:empty_shell_grenade")
			 minetest.sound_play("", {object=obj})
			 obj:setvelocity({x=dir.x * -10, y=dir.y * -10, z=dir.z * -10})
			 obj:setacceleration({x=dir.x * -5, y= -10, z=dir.z * -5})
			 obj:setyaw(yaw + math.pi)
			 local ent = obj:get_luaentity()
			 if ent then
				ent.player = ent.player or player
			 end
		  end
		  minetest.sound_play("rangedweapons_reload_a", {player})
		  
		  minetest.after(1.25,
						 function(player, wield_index)
							player:get_inventory():set_stack("main", wield_index, "rangedweapons:m79")
							minetest.sound_play("rangedweapons_reload_b", {player})
						 end,
						 player,wield_index
		  )
		  return ItemStack("rangedweapons:m79_rld")
	   end
	end
})


minetest.register_craftitem("rangedweapons:m79_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=2.0,y=2.0,z=2.5},
	description = "**RELOADING M79**",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m79_rld.png",
})


minetest.register_tool("rangedweapons:m79", {
		description = "" ..core.colorize("#35cdff","M79\n") ..core.colorize("#FFFFFF", "Explosion radius: 2\n") ..core.colorize("#FFFFFF", "Bullet gravitational pull: 5\n") ..core.colorize("#FFFFFF", "Ammunition: 40mm grenades\n") ..core.colorize("#FFFFFF", "Reload time: 1.25\n") ..core.colorize("#27a600", "The gun is loaded!\n")..core.colorize("#FFFFFF", "Gun type:Grenade launcher\n") ..core.colorize("#FFFFFF", "Bullet velocity: 15"),
	range = 0,
	groups = {not_in_creative_inventory = 1},
	wield_scale = {x=2.0,y=2.0,z=2.5},
	inventory_image = "rangedweapons_m79.png",
	on_use = function(itemstack, user, pointed_thing)
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.6
			local obj = minetest.add_entity(pos, "rangedweapons:he_grenade")
			if obj then
				minetest.sound_play("rangedweapons_rocket", {object=obj})
				obj:setvelocity({x=dir.x * 15, y=dir.y * 15, z=dir.z * 15})
				obj:setacceleration({x=dir.x * -1, y=-5, z=dir.z * -1})
				obj:setyaw(yaw + math.pi)
	minetest.add_particle({
		pos = pos,
		velocity = {x=dir.x * 3, y=dir.y * 3, z=dir.z * 3} ,
          	acceleration = {x=dir.x * -4, y=2, z=dir.z * -4},
		expirationtime = 1.5,
		size = 10,
		collisiondetection = false,
		vertical = false,
		texture = "tnt_smoke.png",
		glow = 5,
	})
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
			itemstack = "rangedweapons:m79_uld"
				end
			end
		end
		return itemstack
	end,
})




