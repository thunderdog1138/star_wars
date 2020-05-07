
local S = mobs.intllib


-- Puffer Pig

mobs:register_mob("mobs_animal:puffer_pig", {
	stepheight = 0.6,
	type = "animal",
	passive = false,
	attack_type = "dogfight",
	group_attack = true,
	owner_loyal = true,
	attack_npcs = false,
	reach = 2,
	damage = 2,
	hp_min = 5,
	hp_max = 15,
	armor = 200,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 0.95, 0.4},
	visual = "mesh",
	mesh = "mobs_pumba.b3d",
	textures = {
		{"mobs_puffer_pig.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_pig",
		attack = "mobs_pig_angry",
	},
	walk_velocity = 2,
	run_velocity = 3,
	jump = true,
	jump_height = 6,
	pushable = true,
	follow = {"default:apple", "farming:potato"},
	view_range = 10,
	drops = {
		{name = "mobs:puffer_pork_raw", chance = 1, min = 1, max = 3},
	},
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	fear_height = 2,
	animation = {
		speed_normal = 15,
		stand_start = 25,
		stand_end = 55,
		walk_start = 70,
		walk_end = 100,
		punch_start = 70,
		punch_end = 100,
	},
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 0, 5, 50, false, nil) then return end
	end,
})

local spawn_on = {"ethereal:grove_dirt"}
local spawn_by = {"group:grass"}

spawn_on = {"ethereal:fungus_dirt"}
spawn_by = {"flowers:mushroom_brown", "flowers:mushroom_brown"}

mobs:spawn({
	name = "mobs_animal:puffer_pig",
	nodes = spawn_on,
	neighbors = spawn_by,
	min_light = 14,
	interval = 60,
	chance = 8000, -- 15000
	min_height = 0,
	max_height = 200,
	day_toggle = true,
})


mobs:register_egg("mobs_animal:puffer_pig", S("Puffer Pig"), "mobs_puffer_pig_inv.png")


mobs:alias_mob("mobs:puffer_pig", "mobs_animal:puffer_pig") -- compatibility


-- raw porkchop
minetest.register_craftitem(":mobs:puffer_pork_raw", {
	description = S("Raw Puffer Pork"),
	inventory_image = "mobs_puffer_pork_raw.png",
	on_use = minetest.item_eat(4),
	groups = {food_meat_raw = 1, food_pork_raw = 1, flammable = 2},
})

-- cooked porkchop
minetest.register_craftitem(":mobs:pork_cooked", {
	description = S("Cooked Puffer Pork"),
	inventory_image = "mobs_puffer_pork_cooked.png",
	on_use = minetest.item_eat(8),
	groups = {food_meat = 1, food_pork = 1, flammable = 2},
})

minetest.register_craft({
	type = "cooking",
	output = "mobs:puffer_pork_cooked",
	recipe = "mobs:puffer_pork_raw",
	cooktime = 5,
})
