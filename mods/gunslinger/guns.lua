gunslinger.register_gun("gunslinger:e11", {
	itemdef = {
		description = "E-11 Trooper Rifle",
		inventory_image = "e11.png",
		wield_image = "e11.png^[transformFXR300",
		textures = {projectile = "blaster_red.png"},
		wield_scale = {x = 3, y = 3, z = 1}
	},

	mode = "semi-automatic",
	ammo = gunslinger:blaster_cartrage,
	dmg_mult = 2,
	recoil_mult = 0,
	fire_rate = 2,
	clip_size = 100,
	range = 50
})
