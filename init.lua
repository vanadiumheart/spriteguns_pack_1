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
