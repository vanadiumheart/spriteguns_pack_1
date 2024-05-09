spriteguns.register_gun("spriteguns_pack_1:zastavam85",{
	description = "Zastava M85 Rifle",
	inventory_image = "zm85_inv.png",
	zoomfov = 45,
	scale = 7.5,
	range = 350,
	fire_sound = "cz527_fire",
	fire_gain = 10,
	fire_sound_distant = "distant_hical",
	size = 3,
	space = 4,
	loadtype = "manual",--"auto", "semi", and "manual"
	ammo = "spriteguns:bullet_762",
	firetime = .4,
	offsetrecoil = 140,
	targetrecoil = 60,
	damage = 10,
	maxdev = .12,
	maxzoomdev = .04,
	magazine = false,
	unload_amount = 1,
	concealed = false,
	spread = 0,
	textures = {
		prefix = "zm85_",
		hipidle = "hipidle.png",
		hipidlenomag = "hipidlenomag.png",
		hipfire = "hipfire.png",
		hippostfire = "hippostfire.png",
		aimidle = "aimidle.png",
		aimidlenomag = "aimidlenomag.png",
		aimfire = "aimfire.png",
		aimpostfire = "aimidle.png",
		load = {
			length = 1.5,
			sounds = {"cz527_openbolt", nil, "cz527_closebolt"},
			frames = {"load1.png", "load2.png", "load3.png", "load2.png", "load1.png"},
			zoomframes = {"loadzoom1.png", "loadzoom2.png", "loadzoom3.png", "loadzoom2.png", "loadzoom1.png"},
		},
		reload = {
			length = 9*.40,
			speed = .50,
			loopstart = 5,
			loopend = 6,
			sounds = {nil, "cz527_openbolt", nil, nil, nil, "gunslinger_charge", nil, "cz527_closebolt", "nil"},
			frames = {"load1.png", "load2.png", "load3.png", "reload1.png", "reload2.png", "reload3.png", "reload1.png", "load3.png", "load2.png", "load1.png"}
		},
		unload = {
			length = 8*.40,
			speed = .50,
			loopstart = 5,
			loopend = 6,
			sounds = {"cz527_openbolt", nil, nil, nil, "gunslinger_charge", nil, "cz527_closebolt"},
			frames = {"load1.png", "load2.png", "load3.png", "reload1.png", "reload4.png", "reload1.png", "load3.png", "load2.png"},
		},
	},
})
if fancycrafts then
	minetest.register_craft({
		output = "spriteguns_pack_1:zastavam85 1 65534",
		recipe = {
			{"gun_lathe:gun_barrel_stainless_steel", "default:diamond", "", "", ""},
			{"", "gun_lathe:gun_barrel_stainless_steel", "default:obsidian_shard", "", ""},
			{"", "group:tree", "gun_lathe:gun_barrel_stainless_steel", "default:diamond", ""},
			{"", "", "group:tree", "moreores:mithril_block", ""},
			{"", "", "", "group:tree", "group:tree"},
		}
	})
else
	minetest.register_craft({
		output = "spriteguns_pack_1:zastavam85 1 65534",
		recipe = {
			{"gun_lathe:gun_barrel_stainless_steel", "default:diamond", "", "", ""},
			{"", "gun_lathe:gun_barrel_stainless_steel", "default:obsidian_shard", "", ""},
			{"", "group:tree", "gun_lathe:gun_barrel_stainless_steel", "default:diamond", ""},
			{"", "", "group:tree", "moreores:mithril_block", ""},
			{"", "", "", "group:tree", "group:tree"},
		}
	})
end

spriteguns.register_gun("spriteguns_pack_1:supershorty",{
	description = "Serbu Super Shorty Shotgun",
	inventory_image = "supershorty_inv.png",
	zoomfov = 60,
	scale = 7.5,
	range = 70,
	fire_sound = "rem870_fire",
	fire_gain = 10,
	fire_sound_distant = "distant_hical",
	size = 3,
	loadtype = "manual",--"auto", "semi", and "manual"
	ammo = "spriteguns:bullet_12",
	firetime = .2,
	offsetrecoil = 140,
	targetrecoil = 90,
	damage = 3,
	maxdev = .18,
	maxzoomdev = .08,
	pellets = 12,
	space = 3,
	unload_amount = 1,
	concealed = true,
	spread = 45,
	textures = {
		prefix = "serbuss_",
		hipidle = "hipidle.png",
		hipidlenomag = "hipidle.png",
		hipfire = "hipfireflash.png",
		hippostfire = "hipfire.png",
		aimidle = "aimidle.png",
		aimidlenomag = "aimidle.png",
		aimfire = "aimfireflash.png",
		aimpostfire = "aimfire.png",
		load = {
			length = .75,
			sounds = {nil, "rem870_rackslide"},
			frames = {"hipidle.png", "load.png"},
			zoomframes = {"aimidle.png", "loadzoom.png"}
		},
		reload = {
			length = 1.15,
			speed = .75,
			loopstart = 2,
			loopend = 5,
			sounds = {nil, nil, "rem870_loadshell"},
			frames = {"reload1.png", "reload2.png", "reload2.png", "reload3.png", "reload3.png", "reload4.png"}
		},
		unload = {
			length = .5,
			sounds = {nil, "rem870_rackslide"},
			frames = {"hipidle.png", "load.png"},
		},
	},
})
if fancycrafts then
	minetest.register_craft({
		output = "spriteguns_pack_1:supershorty 1 65534",
		recipe = {
			{"gun_lathe:gun_barrel_carbon_steel", "", "", ""},
			{"gun_lathe:gun_barrel_carbon_steel", "gun_lathe:gun_barrel_carbon_steel", "technic:carbon_steel_ingot", ""},
			{"technic:carbon_steel_ingot", "basic_materials:plastic_sheet", "moreores:mithril_ingot", "basic_materials:plastic_strip"},
			{"", "dye:black", "basic_materials:plastic_sheet", "dye:black"},
		}
	})
else
	minetest.register_craft({
		output = "spriteguns_pack_1:supershorty 1 65534",
		recipe = {
			{"gun_lathe:gun_barrel_carbon_steel", "", "", ""},
			{"gun_lathe:gun_barrel_carbon_steel", "gun_lathe:gun_barrel_carbon_steel", "technic:carbon_steel_ingot", ""},
			{"technic:carbon_steel_ingot", "basic_materials:plastic_sheet", "moreores:mithril_ingot", "basic_materials:plastic_strip"},
			{"", "dye:black", "basic_materials:plastic_sheet", "dye:black"},
		}
	})
end

spriteguns.register_gun("spriteguns_pack_1:glock21",{
	description = "Glock 21 Pistol",
	inventory_image = "glock21_inv.png",
	zoomfov = 60,
	scale = 7.5,
	range = 180,
	fire_sound = "pardini_fire",
	fire_gain = 10,
	fire_sound_distant = "distant_local",
	size = 13,
	loadtype = "semi",--"auto", "semi", and "manual"
	ammo = "spriteguns_pack_1:mag_glock21",
	firetime = .125,
	offsetrecoil = 70,
	targetrecoil = 30,
	damage = 4,
	maxdev = .12,
	maxzoomdev = .04,
	magazine = true,
	concealed = true,
	spread = 4,
	textures = {
		prefix = "glock21_",
		hipidle = "hipidle.png",
		hipidlenomag = "hipidlenomag.png",
		hipfire = "hipfire.png",
		hippostfire = "hipidle.png",
		aimidle = "aimidle.png",
		aimidlenomag = "aimidlenomag.png",
		aimfire = "aimfire.png",
		aimpostfire = "aimidle.png",
		load = {
			length = 4*.25,
			sounds = {nil, "thompson_charge"},
			frames = {"load1.png", "load2.png", "load3.png", "load4.png"},
		},
		reload = {
			length = 4*.33,
			speed = .75,
			sounds = {"thompson_load", nil, nil, "thompson_charge"},
			frames = {"reload2.png", "reload1.png", "load3.png", "load1.png"}
		},
		unload = {
			length = 5*.33,
			speed = .75,
			sounds = {nil, "thompson_charge", nil, "thompson_unload"},
			frames = {"load1.png", "load2.png", "load3.png", "reload1.png", "reload2.png"},
		},
	},
})

minetest.register_tool("spriteguns_pack_1:mag_glock21", {
	description = "Glock 21 Magazine",
	inventory_image = "glock21_mag.png",
})
if fancycrafts then
	minetest.register_craft({
		output = "spriteguns_pack_1:glock21 1 65534",
		recipe = {
			{"gun_lathe:gun_barrel_carbon_steel", "default:mese_crystal_fragment", "", ""},
			{"basic_materials:plastic_sheet", "gun_lathe:gun_barrel_carbon_steel", "", ""},
			{"dye:black", "technic:carbon_steel_ingot", "technic:carbon_steel_ingot", "default:mese_crystal_fragment"},
			{"technic:carbon_steel_ingot", "technic:carbon_steel_ingot", "basic_materials:plastic_sheet", "dye:black"},
		}
	})
else
	minetest.register_craft({
		output = "spriteguns_pack_1:glock21 1 65534",
		recipe = {
			{"gun_lathe:gun_barrel_carbon_steel", "default:mese_crystal_fragment", "", ""},
			{"basic_materials:plastic_sheet", "gun_lathe:gun_barrel_carbon_steel", "", ""},
			{"dye:black", "technic:carbon_steel_ingot", "technic:carbon_steel_ingot", "default:mese_crystal_fragment"},
			{"technic:carbon_steel_ingot", "technic:carbon_steel_ingot", "basic_materials:plastic_sheet", "dye:black"},
		}
	})
end
spriteguns.register_magazine("spriteguns_pack_1:mag_glock21", "spriteguns:bullet_45", 13)
	minetest.register_craft({
		output = "spriteguns_pack_1:mag_glock21 1 65534",
		recipe = {
			{"", "", ""},
			{"", "technic:carbon_steel_ingot", ""},
			{"", "basic_materials:steel_wire", ""},
	}
})



