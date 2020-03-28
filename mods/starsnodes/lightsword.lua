cores={"green","blue","red","yellow","purple"}
function on_off(cor)
	for _,player in ipairs(minetest.get_connected_players()) do
		if player:get_player_control().RMB == true then
			if player:get_wielded_item():get_name() == "starsnodes:lightsaberon"..cor then
				player:set_wielded_item("starsnodes:lightsaberoff"..cor)
				minetest.sound_play("starsnodes_lightsaberoff", {object = minetest.get_player_by_name(player:get_player_name()), gain = 1.0, max_hear_distance = 32, loop = false })
			elseif player:get_wielded_item():get_name() == "starsnodes:lightsaberoff"..cor then
				player:set_wielded_item("starsnodes:lightsaberon"..cor)
				minetest.sound_play("starsnodes_lightsaberon", {object = minetest.get_player_by_name(player:get_player_name()), gain = 1.0, max_hear_distance = 32, loop = false })
			end
		end
	end
end
function atk(cor)
	for _,player in ipairs(minetest.get_connected_players()) do
		if player:get_player_control().LMB == true and  player:get_wielded_item():get_name() == "starsnodes:lightsaberon"..cor then
			minetest.sound_play("starsnodes_lightsaberatk", {object = minetest.get_player_by_name(player:get_player_name()), gain = 1.0, max_hear_distance = 32, loop = false })
		end
	end
end
for n,cor in ipairs(cores) do
	minetest.register_tool("starsnodes:lightsaberoffgreen", {
		description = "Lightsaber",
		inventory_image = "starsnodes_lightsaberongreen.png",
		wield_image = "starsnodes_lightsaberoff.png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=0,
		},
	})
  	minetest.register_tool("starsnodes:lightsaberoffblue", {
		description = "Lightsaber",
		inventory_image = "starsnodes_lightsaberonblue.png",
		wield_image = "starsnodes_lightsaberoff.png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=0,
		},
	})
  	minetest.register_tool("starsnodes:lightsaberoffyellow", {
		description = "Lightsaber",
		inventory_image = "starsnodes_lightsaberonyellow.png",
		wield_image = "starsnodes_lightsaberoff.png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=0,
		},
	})
  	minetest.register_tool("starsnodes:lightsaberoffpurple", {
		description = "Lightsaber",
		inventory_image = "starsnodes_lightsaberonpurple.png",
		wield_image = "starsnodes_lightsaberoff.png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=0,
		},
	})
  	minetest.register_tool("starsnodes:lightsaberoffred", {
		description = "Sith Lightsaber",
		inventory_image = "starsnodes_lightsaberonred.png",
		wield_image = "starsnodes_lightsaberoff.png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=0,
		},
	})
	minetest.register_tool("starsnodes:lightsaberongreen", {
		description = "Lightsaber",
		inventory_image = "starsnodes_lightsaberongreen.png",
		wield_image = "starsnodes_lightsaberongreen.png",
		groups = {
        	lightsaber= 3,
			not_in_creative_inventory=1,
		},
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=10,
			groupcaps={
				cracky={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				crumbly={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				snappy={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				choppy={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
			},
			damage_groups = {fleshy=8}
		},
	})
  	minetest.register_tool("starsnodes:lightsaberonblue", {
		description = "Lightsaber",
		inventory_image = "starsnodes_lightsaberonblue.png",
		wield_image = "starsnodes_lightsaberonblue.png",
		groups = {
        	lightsaber= 3,
			not_in_creative_inventory=1,
		},
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=10,
			groupcaps={
				cracky={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				crumbly={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				snappy={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				choppy={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
			},
			damage_groups = {fleshy=15}
		},
	})
  	minetest.register_tool("starsnodes:lightsaberonyellow", {
		description = "Lightsaber",
		inventory_image = "starsnodes_lightsaberonyellow.png",
		wield_image = "starsnodes_lightsaberonyellow.png",
		groups = {
        	lightsaber= 3,
			not_in_creative_inventory=1,
		},
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=10,
			groupcaps={
				cracky={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				crumbly={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				snappy={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				choppy={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
			},
			damage_groups = {fleshy=8}
		},
	})
  	minetest.register_tool("starsnodes:lightsaberonpurple", {
		description = "Lightsaber",
		inventory_image = "starsnodes_lightsaberonpurple.png",
		wield_image = "starsnodes_lightsaberonpurple.png",
		groups = {
        	lightsaber= 3,
			not_in_creative_inventory=1,
		},
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=10,
			groupcaps={
				cracky={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				crumbly={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				snappy={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				choppy={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
			},
			damage_groups = {fleshy=8}
		},
	})
  	minetest.register_tool("starsnodes:lightsaberonred", {
		description = "Sith Lightsaber",
		inventory_image = "starsnodes_lightsaberonred.png",
		wield_image = "starsnodes_lightsaberonred.png",
		groups = {
        	lightsaber= 3,
			not_in_creative_inventory=1,
		},
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=10,
			groupcaps={
				cracky={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				crumbly={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				snappy={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
				choppy={times={[1]=1.0, [2]=0.5, [3]=0.5}, uses=30, maxlevel=10},
			},
			damage_groups = {fleshy=8}
		},
	})
	minetest.register_craft({
		output = "starsnodes:lightsaberoff"..cor,
		recipe = {
			{"default:durasteel_ingot"},
			{"starsnodes:kyber"..cor},
			{"default:durasteel_ingot"},
		}
	})
end
local t=0
for n,cor in ipairs(cores) do
	minetest.register_globalstep(function(dtime)
		t=t+dtime
		if t>0.3 then
			on_off(cor)
			atk(cor)
			t=0
		end
	end)
end
