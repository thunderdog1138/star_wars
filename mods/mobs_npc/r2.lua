mobs:register_mob("mobs_npc:r2", {
	type = "npc",
	passive = false,
	damage = 3,
	attack_type = "dogfight",
	attacks_monsters = false,
	attack_npcs = false,
	owner_loyal = true,
	pathfinding = true,
	hp_min = 22,
	hp_max = 32,
	armor = 80,
	collisionbox = {-0.4, -0.4, -0.4, 0.4, 1.2, 0.4},
	visual = "mesh",
	visual_size = {x=2, y=2},
	mesh = "r2.b3d",
	drawtype = "front",
	rotate = 180,
	textures = {
		{"r2-blue.png"},
	},
	makes_footstep_sound = false,
	sounds = {},
	walk_velocity = 0.5,
	run_velocity = 1,
	jump = false,
	drops = {
		{name = "default:axe_stone", chance = 5, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	follow = {"farming:bread", "mobs:meat", "default:diamond"},
	view_range = 15,
	owner = "",
	order = "follow",
	fear_height = 3,
	animation = {
		speed_normal = 2,
		speed_run = 3,
		walk_start = 30,
		walk_end = 31,
		stand_start = 1,
		stand_end = 20,
		run_start = 30,
		run_end = 31,

	},

	on_rightclick = function(self, clicker)

		-- feed to heal npc
		if mobs:feed_tame(self, clicker, 8, true, true) then return end

		-- capture npc with net or lasso
		if mobs:capture_mob(self, clicker, nil, 5, 80, false, nil) then return end

		-- protect npc with mobs:protector
		if mobs:protect(self, clicker) then return end

		local name = clicker:get_player_name()

		-- by right-clicking owner can switch npc between follow and stand
		if self.owner and self.owner == name then

			if self.order == "follow" then

				self.attack = nil
				self.order = "stand"
				self.state = "stand"
				self:set_animation("stand")
				self:set_velocity(0)

				minetest.chat_send_player(name, "R2 Unit stands still.")
			else
				self.order = "follow"

				minetest.chat_send_player(name, "R2 Unit will follow you.")
			end
		end
	end,
})

mobs:register_egg("mobs_npc:r2", "R2 Astromech", "default_brick.png", 1)