-- TODO: Sand Trooper
-- TODO: Scout Trooper
-- TODO: Snow Trooper

-- Stormtrooper
-- TODO: Attack players if they are holding a Jedi Lightsaber
mobs:register_mob("mobs_monster:stormtrooper", {
	type = "npc",
	passive = true,
	attack_type = "shoot",
    arrow = "mobs_monster:blaster_red",
    shoot_interval = 2,
    shoot_offset = 1.5,
    group_attack = true,
	pathfinding = true,
	hp_min = 4,
	hp_max = 20,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "mobs_character.b3d",
	textures = {
		{"mobs_stormtrooper.png"},
	},
	blood_texture = "mobs_blood.png",
	makes_footstep_sound = true,
    -- TODO: Create stormtrooper sounds
	sounds = {
		random = "mobs_sandmonster",
	},
	walk_velocity = 1.5,
	run_velocity = 4,
	view_range = 15
	jump = true,
	floats = 0,
    -- TODO: Drop Stormtrooper Armor and a blaster
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
	on_die = function(self, pos)
		pos.y = pos.y + 0.5
		effect(pos, 30, "mobs_sand_particles.png", 0.1, 2, 3, 5)
		pos.y = pos.y + 0.25
		effect(pos, 30, "mobs_sand_particles.png", 0.1, 2, 3, 5)
	end,
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


-- blaster bolt (projectile)
-- TODO: Deflect with Lightsaber
mobs:register_arrow("mobs_monster:blaster_red", {
	visual = "sprite",
	visual_size = {x = 1, y = 1},
	textures = {"mobs_monster:blaster_red.png"},
	velocity = 15,

	-- direct hit, pain
	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 6},
		}, nil)
		mobs:boom(self, self.object:get_pos(), 3)
	end,

	hit_mob = function(self, mob)
		mob:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 6},
		}, nil)
		mobs:boom(self, self.object:get_pos(), 3)
	end,

	-- node hit, explode
	hit_node = function(self, pos, node)
		mobs:boom(self, pos, 3)
	end
})


-- spawn locations
	-- stormtrooper
	mobs:spawn({
		name = "mobs_monster:stormtrooper",
		nodes = {"default:dirt"},
		chance = 7000,
		active_object_count = 2,
		min_height = 0,
	})

	mobs:spawn({
		name = "mobs_monster:stormtrooper",
		nodes = {"default:dirt_with_grass"},
		chance = 7000,
		active_object_count = 2,
		min_height = 0,
	})

	mobs:spawn({
		name = "mobs_monster:stormtrooper",
		nodes = {"default:dry_dirt"},
		chance = 7000,
		active_object_count = 2,
		min_height = 0,
	})

	mobs:spawn({
		name = "mobs_monster:stormtrooper",
		nodes = {"default:dry_dirt_with_grass"},
		chance = 7000,
		active_object_count = 2,
		min_height = 0,
	})


-- spawn eggs
mobs:register_egg("mobs_monster:stormtrooper", S("Stormtrooper"), "default_durasteel_block.png", 1)


-- aliases
mobs:alias_mob("mobs:stormtrooper", "mobs_monster:stormtrooper")
