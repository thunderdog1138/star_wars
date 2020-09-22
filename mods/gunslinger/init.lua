local modpath = minetest.get_modpath("gunslinger") .. "/"

-- Import API
dofile(modpath .. "api.lua")

-- Register default ammo
gunslinger.register_ammo("gunslinger:blaster_cartrage", {
	itemdef = {
		description = "Blaster Cartrage",
		inventory_image = "blaster_cartrage.png",
		stack_max = 500
	}
})

minetest.register_alias("ammo", "gunslinger:blaster_cartrage")

-- If builtin guns not disabled, import builtin guns from guns.lua
if not minetest.settings:get_bool("gunslinger.disable_builtin", false) then
	dofile(modpath .. "guns.lua")
end
