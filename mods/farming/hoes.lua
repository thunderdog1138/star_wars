
local S = farming.intllib
local tr = minetest.get_modpath("toolranks")

-- Hoe registration function

farming.register_hoe = function(name, def)

	-- Check for : prefix (register new hoes in your mod's namespace)
	if name:sub(1,1) ~= ":" then
		name = ":" .. name
	end

	-- Check def table
	if def.description == nil then
		def.description = S("Hoe")
	end

	if def.inventory_image == nil then
		def.inventory_image = "unknown_item.png"
	end

	if def.max_uses == nil then
		def.max_uses = 30
	end

	-- add hoe group
	def.groups = def.groups or {}
	def.groups.hoe = 1

	-- Register the tool
	minetest.register_tool(name, {
		description = def.description,
		inventory_image = def.inventory_image,
		on_use = function(itemstack, user, pointed_thing)
			return farming.hoe_on_use(itemstack, user, pointed_thing, def.max_uses)
		end,
		groups = def.groups,
		sound = {breaks = "default_tool_breaks"}
	})

	-- Register its recipe
	if def.recipe then
		minetest.register_craft({
			output = name:sub(2),
			recipe = def.recipe
		})
	elseif def.material then
		minetest.register_craft({
			output = name:sub(2),
			recipe = {
				{def.material, def.material, ""},
				{"", "group:stick", ""},
				{"", "group:stick", ""}
			}
		})
	end
end

-- Turns dirt with group soil=1 into soil

function farming.hoe_on_use(itemstack, user, pointed_thing, uses)

	local pt = pointed_thing

	-- am I going to hoe the top of a dirt node?
	if not pt or pt.type ~= "node"
	or pt.above.y ~= pt.under.y + 1 then
		return
	end

	local under = minetest.get_node(pt.under)
	local upos = pointed_thing.under

	if minetest.is_protected(upos, user:get_player_name()) then
		minetest.record_protection_violation(upos, user:get_player_name())
		return
	end

	local p = {x = pt.under.x, y = pt.under.y + 1, z = pt.under.z}
	local above = minetest.get_node(p)

	-- return if any of the nodes is not registered
	if not minetest.registered_nodes[under.name]
	or not minetest.registered_nodes[above.name] then
		return
	end

	-- check if the node above the pointed thing is air
	if above.name ~= "air" then
		return
	end

	-- check if pointing at dirt
	if minetest.get_item_group(under.name, "soil") ~= 1 then
		return
	end

	-- check if (wet) soil defined
	local ndef = minetest.registered_nodes[under.name]
	if ndef.soil == nil or ndef.soil.wet == nil or ndef.soil.dry == nil then
		return
	end

	if minetest.is_protected(pt.under, user:get_player_name()) then
		minetest.record_protection_violation(pt.under, user:get_player_name())
		return
	end

	-- turn the node into soil, wear out item and play sound
	minetest.set_node(pt.under, {name = ndef.soil.dry})

	minetest.sound_play("default_dig_crumbly", {pos = pt.under, gain = 0.5})

	local wdef = itemstack:get_definition()
	local wear = 65535 / (uses - 1)

	if farming.is_creative(user:get_player_name()) then
		if tr then
			wear = 1
		else
			wear = 0
		end
	end

	if tr then
		itemstack = toolranks.new_afteruse(itemstack, user, under, {wear = wear})
	else
		itemstack:add_wear(wear)
	end

	if itemstack:get_count() == 0 and wdef.sound and wdef.sound.breaks then
		minetest.sound_play(wdef.sound.breaks, {pos = pt.above,
			gain = 0.5}, true)
	end

	return itemstack
end

-- Define Hoes

farming.register_hoe(":farming:hoe_wood", {
	description = S("Wooden Hoe"),
	inventory_image = "hoe_wood.png",
	max_uses = 30,
	material = "group:wood"
})

minetest.register_craft({
	type = "fuel",
	recipe = "farming:hoe_wood",
	burntime = 5
})

farming.register_hoe(":farming:hoe_stone", {
	description = S("Stone Hoe"),
	inventory_image = "hoe_stone.png",
	max_uses = 90,
	material = "group:stone"
})

farming.register_hoe(":farming:hoe_durasteel", {
	description = S("Durasteel Hoe"),
	inventory_image = "hoe_durasteel.png",
	max_uses = 200,
	material = "default:durasteel_ingot"
})

-- Toolranks support
if tr then

minetest.override_item("farming:hoe_wood", {
	original_description = "Wood Hoe",
	description = toolranks.create_description("Wood Hoe")})

minetest.override_item("farming:hoe_stone", {
	original_description = "Stone Hoe",
	description = toolranks.create_description("Stone Hoe")})

minetest.override_item("farming:hoe_steel", {
	original_description = "Steel Hoe",
	description = toolranks.create_description("Steel Hoe")})
end