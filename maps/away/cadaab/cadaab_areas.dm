///CADAAB///

/area/cadaab
	name = "Cadaab"
	icon = 'maps/away/cadaab/icons/areas.dmi'
	icon_state = "where"
	base_turf = /turf/space
//	planetary_surface = TRUE
	var/outside = FALSE //Mostly for sandstorm proper work
	var/datum/sandstorm/sandstorm_container //Container for sandstorm datum

/area/cadaab/noise
	name = "Noise"
	forced_ambience = list('sound/ambience/bos/noise.ogg', 'sound/ambience/bos/noise2.ogg','sound/ambience/bos/noise3.ogg')
	outside = TRUE

/area/cadaab/desert
	name = "Cadaab Desert"
	icon_state = "desert"
	always_unpowered = TRUE
	forced_ambience = list('sound/effects/wind/desert0.ogg','sound/effects/wind/desert1.ogg','sound/effects/wind/desert2.ogg','sound/effects/wind/desert3.ogg','sound/effects/wind/desert4.ogg','sound/effects/wind/desert5.ogg', 'sound/ambience/bos/desert_music1.ogg', 'sound/ambience/bos/desert_music2.ogg')
	outside = TRUE

/area/cadaab/ladder // shitcoded hell. use if base_turf is broken and you have no idea why 				UPD: found the reason, I'll delete this later
	base_turf = /turf/space

/area/cadaab/ladder/roof
	name = "Shahtinsk - Rooftops"
	icon_state = "desert"
	forced_ambience = list('sound/effects/wind/desert0.ogg','sound/effects/wind/desert1.ogg','sound/effects/wind/desert2.ogg','sound/effects/wind/desert3.ogg','sound/effects/wind/desert4.ogg','sound/effects/wind/desert5.ogg')
	outside = TRUE

/area/cadaab/outpost/syndivault
	name = "Syndipass Vault"
	icon_state = "syndipass"
	req_access = list(access_castelnau_syndipass)

/area/cadaab/oasis
	name = "Oasis"
	icon_state = "desert"
	forced_ambience = list(
		'sound/ambience/jungle.ogg'
	)
	outside = TRUE

/area/cadaab/oasis_farm
	name = "Lone Home"
	forced_ambience = list(
		'sound/ambience/jungle.ogg'
	)
/area/cadaab/city_streets
	name = "Cadaab - Shahtinsk - City-like Streets"
	icon_state = "desert"
	forced_ambience = list('sound/ambience/bos/clot1.ogg', 'sound/ambience/bos/clot2.ogg')
	outside = TRUE

/area/cadaab/lab
	name = "Cadaab - Underground Lab"

///OUTPOST///

/area/cadaab/outpost
	name = "Regulators Outpost"
	base_turf = /turf/space

/area/cadaab/outpost/teleport
	name = "Outpost - Teleport"
	icon_state = "command"
	req_access = list(access_castelnau_teleporter)

/area/cadaab/outpost/storage
	name = "Outpost - Storage"
	icon_state = "command"
	req_access = list(access_castelnau_teleporter)

/area/cadaab/outpost/trading
	name = "Outpost - Trading Post"
	icon_state = "engineering"
	req_access = list(access_castelnau_cheapskate_shop)

/area/cadaab/outpost/med
	name = "Outpost - Medical Bay"
	icon_state = "medbay"
	req_access = list(access_castelnau_medical)

/area/cadaab/outpost/med/surgery
	name = "Outpost - Surgery"

/area/cadaab/outpost/eng
	name = "Outpost - Engineering"
	icon_state = "engineering"
	req_access = list(access_castelnau_engineering)

/area/cadaab/outpost/eng/energy_storage
	name = "Outpost - Energy Storage"
	icon_state = "engineering"
	req_access = list(access_castelnau_engineering)

/area/cadaab/outpost/sec
	name = "Outpost - Security"
	icon_state = "security"
	req_access = list(access_castelnau_brig)

/area/cadaab/outpost/sec/armory
	name = "Outpost - Armory"

/area/cadaab/outpost/living
	name = "Outpost - Living Area"
	icon_state = "living"

/area/cadaab/outpost/leader
	name = "Outpost - Leader Quarters"
	icon_state = "command"
	req_access = list(access_castelnau_bridge)

/area/cadaab/outpost/landing
	name = "Outpost - Landing Zone"
	icon_state = "landing"
	outside = TRUE

/area/cadaab/outpost/syndishuttle
	name = "SSS PrettyBoy"
	icon_state = "syndipass"
	req_access = list(access_castelnau_syndipass)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//CAVES - NEAR THE OUTPOST//

/area/cadaab/caves
	name = "Cadaab - Caves"
	icon_state = "desert"
	base_turf = /turf/simulated/floor/exoplanet/cadaab
	sound_env = LARGE_ENCLOSED
	ambience = list('sound/ambience/bos/cave1.ogg', 'sound/ambience/bos/cave2.ogg', 'sound/ambience/bos/cave3.ogg', 'sound/ambience/bos/cave4.ogg', 'sound/ambience/bos/cave5.ogg', 'sound/ambience/bos/cave6.ogg', 'sound/ambience/bos/cave7.ogg', 'sound/ambience/bos/cave8.ogg')
//	dynamic_lighting = 1

/area/cadaab/caves/basement
	name = "Caves - Basement"

/area/cadaab/caves/bunker
	name = "Vault - Security Checkpoint"
	icon_state = "security"

/area/cadaab/caves/bunker/living
	name = "Vault - Living Area"
	icon_state = "living"

/area/cadaab/caves/bunker/living/can
	name = "Vault - Canteen"

/area/cadaab/caves/bunker/living/bunk
	name = "Vault - Bunks"

/area/cadaab/caves/bunker/medsci
	name = "Vault - MedScience"
	icon_state = "medbay"

/area/cadaab/caves/bunker/engi
	name = "Vault - Engineering"
	icon_state = "engineering"

//SHAHTINSK//

/area/cadaab/shahtinsk
	name = "Cadaab - Shahtinsk - Near Outpost"
	icon_state = "desert"
	base_turf = /turf/space

/area/cadaab/shahtinsk/second
	name = "Cadaab - Shahtinsk - Near Tribe"

/area/cadaab/shahtinsk/city_like
	name = "Cadaab - Shahtinsk - City-like"

//SHAHTINSK - TRIBE//

/area/cadaab/shahtinsk/tribe
	name = "Shahtinsk - Unknown Territory"

/area/cadaab/shahtinsk/tribe/cave
	name = "Shahtinsk - Unknown Cave"

//SHAHTINSK - BOOKERISTI//
/area/cadaab/shahtinsk/booker
	name = "Shahtinsk - Occupied Complex"

/area/cadaab/shahtinsk/booker/start
	name = "Shahtinsk - Occupied Complex Dorms"

//POLICE
/area/cadaab/police
	name = "Police"
	icon_state = "command"
	req_access = list(access_cadaab_prison)
	base_turf = /turf/space

/area/cadaab/sputnik
	name = "Sputnik - Telecommunications"
	icon_state = "command"
	req_access = list(access_castelnau_tcoms)
