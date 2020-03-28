-- support for i18n
local S = armor_i18n.gettext

armor:register_armor("3d_armor:helmet_admin", {
	description = S("Admin Helmet"),
	inventory_image = "3d_armor_inv_helmet_admin.png",
	armor_groups = {fleshy=100},
	groups = {armor_head=1, armor_heal=100, armor_use=0, armor_water=1,
			not_in_creative_inventory=1},
	on_drop = function(itemstack, dropper, pos)
		return
	end,
})

armor:register_armor("3d_armor:chestplate_admin", {
	description = S("Admin Chestplate"),
	inventory_image = "3d_armor_inv_chestplate_admin.png",
	armor_groups = {fleshy=100},
	groups = {armor_torso=1, armor_heal=100, armor_use=0,
			not_in_creative_inventory=1},
	on_drop = function(itemstack, dropper, pos)
		return
	end,
})

armor:register_armor("3d_armor:leggings_admin", {
	description = S("Admin Leggings"),
	inventory_image = "3d_armor_inv_leggings_admin.png",
	armor_groups = {fleshy=100},
	groups = {armor_legs=1, armor_heal=100, armor_use=0,
			not_in_creative_inventory=1},
	on_drop = function(itemstack, dropper, pos)
		return
	end,
})

armor:register_armor("3d_armor:boots_admin", {
	description = S("Admin Boots"),
	inventory_image = "3d_armor_inv_boots_admin.png",
	armor_groups = {fleshy=100},
	groups = {armor_feet=1, armor_heal=100, armor_use=0,
			not_in_creative_inventory=1},
	on_drop = function(itemstack, dropper, pos)
		return
	end,
})

minetest.register_alias("adminboots", "3d_armor:boots_admin")
minetest.register_alias("adminhelmet", "3d_armor:helmet_admin")
minetest.register_alias("adminchestplate", "3d_armor:chestplate_admin")
minetest.register_alias("adminleggings", "3d_armor:leggings_admin")

if armor.materials.wood then
	armor:register_armor("3d_armor:helmet_wood", {
		description = S("Wood Helmet"),
		inventory_image = "3d_armor_inv_helmet_wood.png",
		groups = {armor_head=1, armor_heal=0, armor_use=2000, flammable=1},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
	})
	armor:register_armor("3d_armor:chestplate_wood", {
		description = S("Wood Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_wood.png",
		groups = {armor_torso=1, armor_heal=0, armor_use=2000, flammable=1},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
	})
	armor:register_armor("3d_armor:leggings_wood", {
		description = S("Wood Leggings"),
		inventory_image = "3d_armor_inv_leggings_wood.png",
		groups = {armor_legs=1, armor_heal=0, armor_use=2000, flammable=1},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
	})
	armor:register_armor("3d_armor:boots_wood", {
		description = S("Wood Boots"),
		inventory_image = "3d_armor_inv_boots_wood.png",
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
		groups = {armor_feet=1, armor_heal=0, armor_use=2000, flammable=1},
	})
end

if armor.materials.durasteel then
	armor:register_armor("3d_armor:helmet_durasteel", {
		description = S("Durasteel Helmet"),
		inventory_image = "3d_armor_inv_helmet_durasteel.png",
		groups = {armor_head=1, armor_heal=0, armor_use=800,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
	armor:register_armor("3d_armor:chestplate_durasteel", {
		description = S("Durasteel Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_durasteel.png",
		groups = {armor_torso=1, armor_heal=0, armor_use=800,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
	armor:register_armor("3d_armor:leggings_durasteel", {
		description = S("Durasteel Leggings"),
		inventory_image = "3d_armor_inv_leggings_durasteel.png",
		groups = {armor_legs=1, armor_heal=0, armor_use=800,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
	armor:register_armor("3d_armor:boots_durasteel", {
		description = S("Durasteel Boots"),
		inventory_image = "3d_armor_inv_boots_durasteel.png",
		groups = {armor_feet=1, armor_heal=0, armor_use=800,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
end

if armor.materials.bronze then
	armor:register_armor("3d_armor:helmet_bronze", {
		description = S("Bronze Helmet"),
		inventory_image = "3d_armor_inv_helmet_bronze.png",
		groups = {armor_head=1, armor_heal=6, armor_use=400,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
	})
	armor:register_armor("3d_armor:chestplate_bronze", {
		description = S("Bronze Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_bronze.png",
		groups = {armor_torso=1, armor_heal=6, armor_use=400,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
	})
	armor:register_armor("3d_armor:leggings_bronze", {
		description = S("Bronze Leggings"),
		inventory_image = "3d_armor_inv_leggings_bronze.png",
		groups = {armor_legs=1, armor_heal=6, armor_use=400,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
	})
	armor:register_armor("3d_armor:boots_bronze", {
		description = S("Bronze Boots"),
		inventory_image = "3d_armor_inv_boots_bronze.png",
		groups = {armor_feet=1, armor_heal=6, armor_use=400,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
	})
end

if armor.materials.beskar then
	armor:register_armor("3d_armor:helmet_mandalorian", {
		description = S("Mandalorian Helmet"),
		inventory_image = "3d_armor_inv_helmet_mandalorian.png",
		groups = {armor_head=1, armor_heal=12, armor_use=200},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
	})
	armor:register_armor("3d_armor:chestplate_mandalorian", {
		description = S("Mandalorian Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_mandalorian.png",
		groups = {armor_torso=1, armor_heal=12, armor_use=200},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
	})
	armor:register_armor("3d_armor:leggings_mandalorian", {
		description = S("Mandalorian Leggings"),
		inventory_image = "3d_armor_inv_leggings_mandalorian.png",
		groups = {armor_legs=1, armor_heal=12, armor_use=200},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
	})
	armor:register_armor("3d_armor:boots_mandalorian", {
		description = S("Mandalorian Boots"),
		inventory_image = "3d_armor_inv_boots_mandalorian.png",
		groups = {armor_feet=1, armor_heal=12, armor_use=200},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
	})
end

if armor.materials.gold then
	armor:register_armor("3d_armor:helmet_gold", {
		description = S("Gold Helmet"),
		inventory_image = "3d_armor_inv_helmet_gold.png",
		groups = {armor_head=1, armor_heal=6, armor_use=300,
			physics_speed=-0.02, physics_gravity=0.02},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
	})
	armor:register_armor("3d_armor:chestplate_gold", {
		description = S("Gold Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_gold.png",
		groups = {armor_torso=1, armor_heal=6, armor_use=300,
			physics_speed=-0.05, physics_gravity=0.05},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
	})
	armor:register_armor("3d_armor:leggings_gold", {
		description = S("Gold Leggings"),
		inventory_image = "3d_armor_inv_leggings_gold.png",
		groups = {armor_legs=1, armor_heal=6, armor_use=300,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
	})
	armor:register_armor("3d_armor:boots_gold", {
		description = S("Gold Boots"),
		inventory_image = "3d_armor_inv_boots_gold.png",
		groups = {armor_feet=1, armor_heal=6, armor_use=300,
			physics_speed=-0.02, physics_gravity=0.02},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
	})
end

for k, v in pairs(armor.materials) do
	minetest.register_craft({
		output = "3d_armor:helmet_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "3d_armor:chestplate_"..k,
		recipe = {
			{v, "", v},
			{v, v, v},
			{v, v, v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:leggings_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:boots_"..k,
		recipe = {
			{v, "", v},
			{v, "", v},
		},
	})
end

armor:register_armor("3d_armor:helmet_stormtrooper", {
	description = S("Stormtrooper Helmet"),
	inventory_image = "3d_armor_inv_helmet_stormtrooper.png",
	groups = {armor_head=1, armor_heal=0, armor_use=800,
		physics_speed=-0.01, physics_gravity=0.01},
	armor_groups = {fleshy=10},
	damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})
armor:register_armor("3d_armor:chestplate_stormtrooper", {
	description = S("Stormtrooper Chestplate"),
	inventory_image = "3d_armor_inv_chestplate_stormtrooper.png",
	groups = {armor_torso=1, armor_heal=0, armor_use=800,
		physics_speed=-0.04, physics_gravity=0.04},
	armor_groups = {fleshy=15},
	damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})
armor:register_armor("3d_armor:leggings_stormtrooper", {
	description = S("Stormtrooper Leggings"),
	inventory_image = "3d_armor_inv_leggings_stormtrooper.png",
	groups = {armor_legs=1, armor_heal=0, armor_use=800,
		physics_speed=-0.03, physics_gravity=0.03},
	armor_groups = {fleshy=15},
	damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})
armor:register_armor("3d_armor:boots_stormtrooper", {
	description = S("Stormtrooper Boots"),
	inventory_image = "3d_armor_inv_boots_stormtrooper.png",
	groups = {armor_feet=1, armor_heal=0, armor_use=800,
		physics_speed=-0.01, physics_gravity=0.01},
	armor_groups = {fleshy=10},
	damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})
