--Stormtrooper
mobs:register_mob("mobs_monster:stormtrooper", {
	type = "npc",
	passive = false,
    group_attack = true,
	attack_type = "shoot",
	pathfinding = true,
	--specific_attack = {"player", "mobs_npc:npc"},
	arrow = "mobs_monster:blaster_red",
	shoot_interval = 1.5,
	hp_min = 4,
	hp_max = 20,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "mobs_character.b3d",
	textures = {
		{"stormtrooper.png"},
	},
	blood_texture = "blood.png",
	makes_footstep_sound = true,
	sounds = {
		war_cry = "mobs_blast_em",
	},
	walk_velocity = 1.5,
	run_velocity = 4,
	view_range = 16,
	jump = true,
	floats = 0,
	drops = {
		{name = "3d_armor:helmet_tk421", chance = 1, min = 0, max = 1},
		{name = "3d_armor:chestplate_tk421", chance = 1, min = 0, max = 1},
		{name = "3d_armor:leggings_tk421", chance = 1, min = 0, max = 1},
		{name = "3d_armor:boots_tk421", chance = 1, min = 0, max = 1},
		{name = "rangedweapons:e11", chance = 1, min = 0, max = 1},
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

mobs:register_egg("mobs_monster:stormtrooper", "Stormtrooper", "desert_sand.png", 1)

mobs:alias_mob("mobs:stormtrooper", "mobs_monster:stormtrooper") -- compatibility

mobs:register_arrow("mobs_monster:blaster_red", {
	visual = "sprite",
	visual_size = {x = 1, y = 1},
	textures = {"blaster_red.png"},
	velocity = 50,

	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 6},
		}, nil)
		mobs:boom(self, self.object:get_pos(), 1, true)
	end,

	hit_mob = function(self, mob)
		mob:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 6},
		}, nil)
		mobs:boom(self, self.object:get_pos(), 1, true)
	end,

	hit_node = function(self, pos, node)
		mobs:boom(self, pos, 1, true)
	end,

	tail = 1,
	tail_texture = {"blaster_red.png"},
	tail_size = 7
})
