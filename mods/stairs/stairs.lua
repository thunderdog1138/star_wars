
local grp = {} -- Helper

-- Wood types

stairs.register_all("jogan_wood", "ethereal:jogan_wood",
	{choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	{"jogan_wood.png"},
	"Jogan Wood",
	stairs.wood, false)

stairs.register_all("pine_wood", "ethereal:pine_wood",
	{choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	{"pine_wood.png"},
	"Pine Wood",
	stairs.wood, false)

stairs.register_all("palm_wood", "ethereal:palm_wood",
	{choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	{"palm_wood.png"},
	"Palm Wood",
	stairs.wood, false)

stairs.register_all("wroshyr_wood", "ethereal:wroshyr_wood",
	{choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	{"wroshyr_wood.png"},
	"Wroshyr Wood",
	stairs.wood, false)

stairs.register_all("brylark_wood", "ethereal:brylark_wood",
	{cracky = 1, level = 2},
	{"brylark_wood.png"},
	"Brylark Wood",
	stairs.wood, false)

stairs.register_all("uneti_wood", "ethereal:uneti_wood",
	{choppy = 2, oddly_breakable_by_hand = 1, put_out_fire = 1},
	{"uneti_wood.png"},
	"Uneti Wood",
	stairs.wood, false)

stairs.register_all("gnarltree_wood", "ethereal:gnarltree_wood",
	{choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	{"gnarltree_wood.png"},
	"Gnarltree Wood",
	stairs.wood, false)

-- Stone types

stairs.register_all("stone", "default:stone",
	{cracky = 3},
	{"stone.png"},
	"Stone",
	stairs.stone, true)

stairs.register_all("stone_brick", "default:stone_brick",
	{cracky = 2},
	{"stone_brick.png"},
	"Stone Brick",
	stairs.stone, false)

stairs.register_all("stone_block", "default:stone_block",
	{cracky = 2},
	{"stone_block.png"},
	"Stone Block",
	stairs.stone, true)

stairs.register_all("cobble", "default:cobble",
	{cracky = 3},
	{"cobble.png"},
	"Cobble",
	stairs.stone, true)

stairs.register_all("cobble_mossy", "default:cobble_mossy",
	{cracky = 3},
	{"cobble_mossy.png"},
	"Mossy Cobble",
	stairs.stone, true)

stairs.register_all("desert_stone", "default:desert_stone",
	{cracky = 3},
	{"desert_stone.png"},
	"Desert Stone",
	stairs.stone, true)

stairs.register_all("desert_stone_brick", "default:desert_stone_brick",
	{cracky = 2},
	{"desert_stone_brick.png"},
	"Desert Stone Brick",
	stairs.stone, false)

stairs.register_all("desert_stone_block", "default:desert_stone_block",
	{cracky = 2},
	{"desert_stone_block.png"},
	"Desert Stone Block",
	stairs.stone, true)

stairs.register_all("desert_cobble", "default:desert_cobble",
	{cracky = 3},
	{"desert_cobble.png"},
	"Desert Cobble",
	stairs.stone, true)

-- Sandstone types

stairs.register_all("sandstone", "default:sandstone",
	{crumbly = 1, cracky = 3},
	{"sandstone.png"},
	"Sandstone",
	stairs.stone, true)

stairs.register_all("sandstone_brick", "default:sandstone_brick",
	{cracky = 2},
	{"sandstone_brick.png"},
	"Sandstone Brick",
	stairs.stone, false)

stairs.register_all("sandstone_block", "default:sandstone_block",
	{cracky = 2},
	{"sandstone_block.png"},
	"Sandstone Block",
	stairs.stone, true)

stairs.register_all("desert_sandstone", "default:desert_sandstone",
	{crumbly = 1, cracky = 3},
	{"desert_sandstone.png"},
	"Desert Sandstone",
	stairs.stone, true)

stairs.register_all("desert_sandstone_brick", "default:desert_sandstone_brick",
	{cracky = 2},
	{"desert_sandstone_brick.png"},
	"Desert Sandstone Brick",
	stairs.stone, false)

stairs.register_all("desert_sandstone_block", "default:desert_sandstone_block",
	{cracky = 2},
	{"desert_sandstone_block.png"},
	"Desert Sandstone Block",
	stairs.stone, true)

stairs.register_all("silver_sandstone", "default:silver_sandstone",
	{crumbly = 1, cracky = 3},
	{"default_silver_sandstone.png"},
	"Silver Sandstone",
	stairs.stone, true)

stairs.register_all("silver_sandstone_brick", "default:silver_sandstone_brick",
	{cracky = 2},
	{"silver_sandstone_brick.png"},
	"Silver Sandstone Brick",
	stairs.stone, false)

stairs.register_all("silver_sandstone_block", "default:silver_sandstone_block",
	{cracky = 2},
	{"silver_sandstone_block.png"},
	"Silver Sandstone Block",
	stairs.stone, true)

-- Obsidian

stairs.register_all("obsidian", "default:obsidian",
	{cracky = 1, level = 2},
	{"obsidian.png"},
	"Obsidian",
	stairs.stone, true)

stairs.register_all("obsidian_brick", "default:obsidian_brick",
	{cracky = 1, level = 2},
	{"obsidian_brick.png"},
	"Obsidian Brick",
	stairs.stone, false)

stairs.register_all("obsidian_block", "default:obsidian_block",
	{cracky = 1, level = 2},
	{"obsidian_block.png"},
	"Obsidian block",
	stairs.stone, true)

-- Cloud (with overrides)

stairs.register_stair("cloud", "default:cloud",
	{unbreakable = 1, not_in_creative_inventory = 1},
	{"default_cloud.png"},
	"Cloud Stair",
	stairs.wool)

minetest.override_item("stairs:stair_cloud", {
	on_blast = function() end,
	on_drop = function(itemstack, dropper, pos) end,
	drop = {},
})

stairs.register_slab("cloud", "default:cloud",
	{unbreakable = 1, not_in_creative_inventory = 1},
	{"default_cloud.png"},
	"Cloud Slab",
	stairs.wool)

minetest.override_item("stairs:slab_cloud", {
	on_blast = function() end,
	on_drop = function(itemstack, dropper, pos) end,
	drop = {},
})

-- Ores

stairs.register_all("coal_block", "default:coal_block",
	{cracky = 3},
	{"coal_block.png"},
	"Coal",
	stairs.stone, true)

stairs.register_all("durasteel_block", "default:durasteel_block",
	{cracky = 1, level = 2},
	{"durasteel_block.png"},
	"Durasteel",
	stairs.metal, true)

stairs.register_all("copper_block", "default:copper_block",
	{cracky = 1, level = 2},
	{"copper_block.png"},
	"Copper",
	stairs.metal, true)

stairs.register_all("bronze_block", "default:bronze_block",
	{cracky = 1, level = 2},
	{"bronze_block.png"},
	"Bronze",
	stairs.metal, true)

stairs.register_all("tin_block", "default:tin_block",
	{cracky = 1, level = 2},
	{"tin_block.png"},
	"Tin",
	stairs.metal, true)

stairs.register_all("gold_block", "default:gold_block",
	{cracky = 1},
	{"gold_block.png"},
	"Gold",
	stairs.metal)

stairs.register_all("beskar_block", "default:beskar_block",
	{cracky = 1, level = 3},
	{"beskar_block.png"},
	"Beskar",
	stairs.stone)

-- Glass types

stairs.register_all("glass", "default:glass",
	{cracky = 3, oddly_breakable_by_hand = 3},
	{"glass.png"},
	"Glass",
	stairs.glass)

stairs.register_all("obsidian_glass", "default:obsidian_glass",
	{cracky = 2},
	{"obsidian_glass.png"},
	"Obsidian Glass",
	stairs.glass)

-- Brick, Snow and Ice

stairs.register_all("brick", "default:brick",
	{cracky = 3},
	{"brick.png"},
	"Brick",
	stairs.stone, false)

stairs.register_all("snow_block", "default:snow_block",
	{crumbly = 3, cools_lava = 1, snowy = 1},
	{"snow.png"},
	"Snow",
	default.node_sound_snow_defaults(), true)

stairs.register_all("ice", "default:ice",
	{cracky = 3, cools_lava = 1},
	{"ice.png"},
	"Ice",
	default.node_sound_glass_defaults(), true)

--= Wool Mod

if minetest.get_modpath("wool") then

local colours = {
	{"black",      "Black",      "#000000b0"},
	{"blue",       "Blue",       "#015dbb70"},
	{"brown",      "Brown",      "#a78c4570"},
	{"cyan",       "Cyan",       "#01ffd870"},
	{"dark_green", "Dark Green", "#005b0770"},
	{"dark_grey",  "Dark Grey",  "#303030b0"},
	{"green",      "Green",      "#61ff0170"},
	{"grey",       "Grey",       "#5b5b5bb0"},
	{"magenta",    "Magenta",    "#ff05bb70"},
	{"orange",     "Orange",     "#ff840170"},
	{"pink",       "Pink",       "#ff65b570"},
	{"red",        "Red",        "#ff000070"},
	{"violet",     "Violet",     "#2000c970"},
	{"white",      "White",      "#abababc0"},
	{"yellow",     "Yellow",     "#e3ff0070"},
}

for i = 1, #colours, 1 do

stairs.register_all("wool_" .. colours[i][1], "wool:" .. colours[i][1],
	{snappy = 2, choppy = 2, oddly_breakable_by_hand = 3, flammable = 3},
	{"wool_" .. colours[i][1] .. ".png"},
	colours[i][2] .. " Wool",
	stairs.wool)

end -- END for

end
