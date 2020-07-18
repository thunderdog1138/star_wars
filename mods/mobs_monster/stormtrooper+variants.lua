--Stormtrooper
mobs:register_mob("mobs_monster:stormtrooper", {
	type = "npc",
	passive = false,
    group_attack = false,
	attack_type = "dogfight",
	pathfinding = true,
	--specific_attack = {"player", "mobs_npc:npc"},
	reach = 2,
	damage = 1,
	hp_min = 4,
	hp_max = 20,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "mobs_character.b3d",
	textures = {
		{"mobs_stormtrooper.png"},
	},
	blood_texture = "default_desert_sand.png",
	makes_footstep_sound = true,
	sounds = {
		war_cry = "mobs_blast_em",
	},
	walk_velocity = 1.5,
	run_velocity = 4,
	view_range = 8,
	jump = true,
	floats = 0,
	drops = {
		{name = "default:desert_sand", chance = 1, min = 3, max = 5},
	},
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 4,
	animation = {
		speed_normal = 30,
		speed_run = 30,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 200,
		punch_end = 219,
	},
--[[
	custom_attack = function(self, p)
		local pos = self.object:get_pos()
		minetest.add_item(pos, "default:sand")
	end,
]]
--[[
	on_rightclick = function(self, clicker)

		local tool = clicker:get_wielded_item()
		local name = clicker:get_player_name()

		if tool:get_name() == "default:sand" then

			self.owner = name
			self.type = "npc"

			mobs:force_capture(self, clicker)
		end
	end,
]]
})

mobs:spawn({
	name = "mobs_monster:stormtrooper",
	nodes = {"default:desert_sand"},
	chance = 7000,
	active_object_count = 2,
	min_height = 0,
})

mobs:register_egg("mobs_monster:stormtrooper", "Stormtrooper", "default_desert_sand.png", 1)

mobs:alias_mob("mobs:stormtrooper", "mobs_monster:stormtrooper") -- compatibility