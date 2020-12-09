
local S = mobs.intllib


-- Bunny by ExeterDad

mobs:register_mob("mobs_animal:rabbit", {
stepheight = 0.6,
	type = "animal",
	passive = true,
	reach = 1,
	hp_min = 1,
	hp_max = 4,
	armor = 200,
	collisionbox = {-0.268, -0.5, -0.268,  0.268, 0.167, 0.268},
	visual = "mesh",
	mesh = "mobs_bunny.b3d",
	drawtype = "front",
	textures = "rabbit.png",
	sounds = {},
	makes_footstep_sound = false,
	walk_velocity = 1,
	run_velocity = 2,
	runaway = true,
	runaway_from = {"mobs_animal:pumba", "player"},
	jump = true,
	jump_height = 6,
	drops = {
		{name = "mobs:rabbit_raw", chance = 1, min = 1, max = 1},
		{name = "mobs:rabbit_hide", chance = 1, min = 0, max = 1},
	},
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 2,
	animation = {
		speed_normal = 15,
		stand_start = 1,
		stand_end = 15,
		walk_start = 16,
		walk_end = 24,
		punch_start = 16,
		punch_end = 24,
	},
	follow = {"farming:calarantrum", "default:grass_1"},
	view_range = 8,
	replace_rate = 10,
	replace_what = {"farming:calarantrum_4", "farming_plus:carrot"},
	replace_with = "air",
	on_rightclick = function(self, clicker)

		-- feed or tame
		if mobs:feed_tame(self, clicker, 4, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 30, 50, 80, false, nil) then return end

		-- Monty Python tribute
		local item = clicker:get_wielded_item()

		if item:get_name() == "mobs:lava_orb" then

			if not mobs.is_creative(clicker:get_player_name()) then
				item:take_item()
				clicker:set_wielded_item(item)
			end

			self.object:set_properties({
				textures = {"rabbit_evil.png"},
			})

			self.type = "monster"
			self.health = 20
			self.passive = false

			return
		end
	end,
	on_spawn = function(self)

		local pos = self.object:get_pos() ; pos.y = pos.y - 1

		return true -- run only once, false/nil runs every activation
	end,
	attack_type = "dogfight",
	damage = 5,
})


local spawn_on = "ethereal:grass_dirt"

if minetest.get_modpath("ethereal") then
	spawn_on = "ethereal:prairie_dirt"
end

if not mobs.custom_spawn_animal then
mobs:spawn({
	name = "mobs_animal:rabbit",
	nodes = {spawn_on},
	neighbors = {"group:grass"},
	min_light = 14,
	interval = 60,
	chance = 8000, -- 15000
	min_height = 5,
	max_height = 200,
	day_toggle = true,
})
end


mobs:register_egg("mobs_animal:rabbit", S("Rabbit"), "rabbit_inv.png", 0)


mobs:alias_mob("mobs:rabbit", "mobs_animal:rabbit") -- compatibility


-- raw rabbit
minetest.register_craftitem(":mobs:rabbit_raw", {
	description = S("Raw Rabbit"),
	inventory_image = "rabbit_raw.png",
	on_use = minetest.item_eat(3),
	groups = {food_meat_raw = 1, food_rabbit_raw = 1, flammable = 2},
})

-- cooked rabbit
minetest.register_craftitem(":mobs:rabbit_cooked", {
	description = S("Cooked Rabbit"),
	inventory_image = "rabbit_cooked.png",
	on_use = minetest.item_eat(5),
	groups = {food_meat = 1, food_rabbit = 1, flammable = 2},
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:rabbit_cooked",
	recipe = "mobs:rabbit_raw",
	cooktime = 5,
})

-- rabbit hide
minetest.register_craftitem(":mobs:rabbit_hide", {
	description = S("Rabbit Hide"),
	inventory_image = "rabbit_hide.png",
	groups = {flammable = 2},
})

minetest.register_craft({
	type = "fuel",
	recipe = "mobs:rabbit_hide",
	burntime = 2,
})

minetest.register_craft({
	output = "mobs:leather",
	type = "shapeless",
	recipe = {
		"mobs:rabbit_hide", "mobs:rabbit_hide",
		"mobs:rabbit_hide", "mobs:rabbit_hide"
	}
})
