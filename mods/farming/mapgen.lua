
-- decoration function
local function register_plant(name, min, max, spawnon, spawnby, num, rarety)

	-- do not place on mapgen if no value given (or not true)
	if not rarety then
		return
	end

	-- set rarety value or default to farming.rarety if not a number
	rarety = tonumber(rarety) or farming.rarety

	minetest.register_decoration({
		deco_type = "simple",
		place_on = spawnon or {"ethereal:grass_dirt"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = rarety,
			spread = {x = 100, y = 100, z = 100},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		y_min = min,
		y_max = max,
		decoration = "farming:" .. name,
		spawn_by = spawnby,
		num_spawn_by = num
	})
end


-- add crops to mapgen
register_plant("calarantrum_4", 15, 40, nil, "", -1, farming.calarantrum)
register_plant("celonslay_4", 5, 20, nil, "", -1, farming.celonslay)
register_plant("rishi_corn_8", 12, 22, nil, "", -1, farming.rishi_corn)
register_plant("groundapple_6", 3, 10, nil, "", -1, farming.groundapple)
register_plant("doll_gourd_5", 3, 15, nil, "", -1, farming.doll_gourd)
register_plant("blumfruit_4", 3, 10, nil, "", -1, farming.blumfruit)
register_plant("emerald_grape_bush", 25, 45, nil, "", -1, farming.grapes)
register_plant("taba_4", 5, 22, nil, "", -1, farming.taba)
register_plant("celto_4", 1, 15, nil, "", -1, farming.celto)