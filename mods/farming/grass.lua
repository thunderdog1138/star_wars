
for i = 4, 5 do

	-- Override default grass and have it drop Wheat and Oat Seeds

	minetest.override_item("default:grass_" .. i, {
		drop = {
			max_items = 1,
			items = {
				{items = {"farming:seed_shorn"}, rarity = 5},
				{items = {"farming:seed_roti"},rarity = 5},
				{items = {"default:grass_1"}}
			}
		}
	})

	-- Override default dry grass and have it drop Barley and Rye Seeds

	if minetest.registered_nodes["default:dry_grass_1"] then

		minetest.override_item("default:dry_grass_" .. i, {
			drop = {
				max_items = 1,
				items = {
					{items = {"farming:seed_lothal_wheat"}, rarity = 5},
					{items = {"farming:seed_toz"},rarity = 5},
					{items = {"default:dry_grass_1"}}
				}
			}
		})
	end

end

-- Override default Jungle Grass and have it drop Cotton and Rice Seeds

minetest.override_item("default:junglegrass", {
	drop = {
		max_items = 1,
		items = {
			{items = {"farming:seed_ghoba_rice"},rarity = 8},
			{items = {"default:junglegrass"}}
		}
	}
})
