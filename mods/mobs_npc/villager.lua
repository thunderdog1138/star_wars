
local S = mobs.intllib

-- Npc by TenPlus1

mobs.npc_drops = {
	"default:pick_durasteel", "mobs:bantha_meat", "default:durasword_steel",
	"default:shovel_durasteel", "bucket:durabucket_water"
}

normal = {
   skins = {}
}

--Human skin gen
local human_skin = {'human_skin-1.png', 'human_skin-2.png', 'human_skin-3.png', 'human_skin-4.png', 'human_skin-5.png', 'human_skin-6.png'}

--Human male
local human_male_hair = {'hair_short-brown.png', 'hair_short-grey.png'}
local human_male_eyes = {'human_eyes_male-1.png', 'human_eyes_male-2.png', 'human_eyes_male-3.png'}
local normal_male_shirt = {'shirt_normal-blue.png', 'shirt_normal-red.png'}
local normal_male_shoes = {'shoes_normal-black.png', 'shoes_normal-yellow.png'}
local normal_male_pants = {'pants_normal-green.png', 'pants_normal-purple.png'}

--Human female
local human_female_hair = {'hair_short-brown.png', 'hair_short-grey.png'}
local human_female_eyes = {'human_eyes_female-1.png', 'human_eyes_female-2.png', 'human_eyes_female-3.png'}
local normal_female_shirt = {'shirt_normal-blue.png', 'shirt_normal-red.png'}
local normal_female_shoes = {'shoes_normal-black.png', 'shoes_normal-yellow.png'}
local normal_female_pants = {'pants_normal-green.png', 'pants_normal-purple.png'}

for i = 1, 16 do
   table.insert(human_male.skins, {normal_skin[math.random(5)]..'^'..normal_face[math.random(2)]..'^'..normal_shirt[math.random(2)]..'^'..normal_shoes[math.random(2)]..'^'..normal_pants[math.random(2)]..'^'..normal_hair[math.random(2)]})
end

for i = 1, 16 do
   table.insert(human_female.skins, {normal_skin[math.random(5)]..'^'..normal_face[math.random(2)]..'^'..normal_shirt[math.random(2)]..'^'..normal_shoes[math.random(2)]..'^'..normal_pants[math.random(2)]..'^'..normal_hair[math.random(2)]})
end


mobs:register_mob("mobs_npc:villager", {
	type = "npc",
	passive = false,
	damage = 3,
	attack_type = "dogfight",
	attacks_monsters = true,
	attack_npcs = false,
	owner_loyal = true,
	pathfinding = true,
	hp_min = 10,
	hp_max = 20,
	armor = 100,
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "mobs_character.b3d",
	drawtype = "front",
	textures = {
		{"mobs_npc.png"},
		{"mobs_npc2.png"}, -- female by nuttmeg20
	},
	child_texture = {
		{"mobs_npc_baby.png"}, -- derpy baby by AmirDerAssassine
	},
	makes_footstep_sound = true,
	sounds = {},
	walk_velocity = 2,
	run_velocity = 3,
	jump = true,
	drops = {
		{name = "default:wood", chance = 1, min = 1, max = 3},
		{name = "default:apple", chance = 2, min = 1, max = 2},
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

	on_rightclick = function(self, clicker)

		-- feed to heal npc
		if mobs:feed_tame(self, clicker, 8, true, true) then return end

		-- capture npc with net or lasso
		if mobs:capture_mob(self, clicker, nil, 5, 80, false, nil) then return end

		-- protect npc with mobs:protector
		if mobs:protect(self, clicker) then return end

		local item = clicker:get_wielded_item()
		local name = clicker:get_player_name()

		-- right clicking with gold lump drops random item from mobs.npc_drops
		if item:get_name() == "default:gold_lump" then

			if not mobs.is_creative(name) then
				item:take_item()
				clicker:set_wielded_item(item)
			end

			local pos = self.object:get_pos()

			pos.y = pos.y + 0.5

			local drops = self.npc_drops or mobs.npc_drops

			minetest.add_item(pos, {
				name = drops[math.random(1, #drops)]
			})

			minetest.chat_send_player(name, S("NPC dropped you an item for gold!"))

			return
		end

		-- by right-clicking owner can switch npc between follow and stand
		if self.owner and self.owner == name then

			if self.order == "follow" then

				self.attack = nil
				self.order = "stand"
				self.state = "stand"
				self:set_animation("stand")
				self:set_velocity(0)

				minetest.chat_send_player(name, S("NPC stands still."))
			else
				self.order = "follow"

				minetest.chat_send_player(name, S("NPC will follow you."))
			end
		end
	end,
})

if not mobs.custom_spawn_npc then
mobs:spawn({
	name = "mobs_npc:npc",
	nodes = {"default:brick"},
	neighbors = {"default:grass_3"},
	min_light = 10,
	chance = 10000,
	active_object_count = 1,
	min_height = 0,
	day_toggle = true,
})
end

mobs:register_egg("mobs_npc:npc", S("Npc"), "default_brick.png", 1)

-- compatibility
mobs:alias_mob("mobs:npc", "mobs_npc:npc")