/datum/shuttle/autodock/ferry/escape_pod/castelnaupod
	category = /datum/shuttle/autodock/ferry/escape_pod/castelnaupod
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'

/obj/effect/shuttle_landmark/escape_pod/start
	name = "Docked"
	base_turf = /turf/simulated/floor/reinforced/airless

/obj/effect/shuttle_landmark/escape_pod/transit
	name = "In transit"

/obj/effect/shuttle_landmark/escape_pod/out
	name = "Escaped"

//Pods
#define CASTELNAU_ESCAPE_POD(NUMBER) \
/datum/shuttle/autodock/ferry/escape_pod/castelnaupod/escape_pod##NUMBER { \
	shuttle_area = /area/shuttle/escape_pod##NUMBER/station; \
	name = "Escape Pod " + #NUMBER; \
	dock_target = "escape_pod_" + #NUMBER; \
	arming_controller = "escape_pod_"+ #NUMBER +"_berth"; \
	waypoint_station = "escape_pod_"+ #NUMBER +"_start"; \
	landmark_transition = "escape_pod_"+ #NUMBER +"_internim"; \
	waypoint_offsite = "escape_pod_"+ #NUMBER +"_out"; \
} \
/obj/effect/shuttle_landmark/escape_pod/start/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_start"; \
	docking_controller = "escape_pod_"+ #NUMBER +"_berth"; \
} \
/obj/effect/shuttle_landmark/escape_pod/out/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_internim"; \
} \
/obj/effect/shuttle_landmark/escape_pod/transit/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_out"; \
}

CASTELNAU_ESCAPE_POD(1)
CASTELNAU_ESCAPE_POD(2)
CASTELNAU_ESCAPE_POD(3)
CASTELNAU_ESCAPE_POD(4)

//Cheapskate

/datum/shuttle/autodock/overmap/cheapskate
	name = "Cheapskate"
	move_time = 90
	shuttle_area = list(
	/area/shuttle/castelnau/cheapskate,
	/area/shuttle/castelnau/cheapskate/cockpit,
	/area/shuttle/castelnau/cheapskate/conference,
	/area/shuttle/castelnau/cheapskate/eva,
	/area/shuttle/castelnau/cheapskate/med,
	/area/shuttle/castelnau/cheapskate/maint,
	/area/shuttle/castelnau/cheapskate/maint/storage,
	/area/shuttle/castelnau/cheapskate/maint/dock,
	/area/shuttle/castelnau/cheapskate/maint/airlock,
	/area/shuttle/castelnau/cheapskate/maint/supairlock,
	/area/shuttle/castelnau/cheapskate/sec,
	/area/shuttle/castelnau/cheapskate/cm,
	/area/shuttle/castelnau/cheapskate/server,
	/area/shuttle/castelnau/cheapskate/cryo,
	/area/shuttle/castelnau/cheapskate/merch,
	/area/shuttle/castelnau/cheapskate/cargo,
	/area/shuttle/castelnau/cheapskate/cargo/war,
	/area/shuttle/castelnau/cheapskate/cargo/smoking,
	/area/shuttle/castelnau/cheapskate/cargo/extwar
	)
	dock_target = "cheapskate_shuttle_airlock"
	current_location = "nav_cheapskate_dock"
	landmark_transition = "nav_cheapskate_transit"
	range = 1
	fuel_consumption = 4
	logging_home_tag = "nav_cheapskate_dock"
	logging_access = access_castelnau_cheapskate_helm
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/castelnau/hangar/cheapskate
	name = "Cheapskate Hangar"
	landmark_tag = "nav_cheapskate_dock"
	docking_controller = "cheapskate_shuttle_dock"
	base_area = /area/space
	base_turf = /turf/space


/obj/effect/shuttle_landmark/castelnau/transit/cheapskate
	name = "Transit"
	landmark_tag = "nav_cheapskate_transit"

//bixie
/datum/shuttle/autodock/overmap/bixie
	name = "Bixie"
	move_time = 60
	shuttle_area = list(
		/area/shuttle/castelnau/bixie/cockpit,
		/area/shuttle/castelnau/bixie/power,
		/area/shuttle/castelnau/bixie/cargo
	)
	dock_target = "bixie_shuttle"
	current_location = "nav_bixie_dock"
	landmark_transition = "nav_bixie_transit"
	range = 1
	fuel_consumption = 1.5
	logging_home_tag = "nav_bixie_dock"
	logging_access = access_castelnau_bixie_helm
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/castelnau/hangar/bixie
	name = "Bixie Hangar"
	landmark_tag = "nav_bixie_dock"
	docking_controller = "bixie_shuttle_dock"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/castelnau/transit/bixie
	name = "Transit"
	landmark_tag = "nav_bixie_transit"

//Perseus

/datum/shuttle/autodock/overmap/perseus
	name = "Perseus"
	move_time = 60
	shuttle_area = list(
		/area/shuttle/castelnau/perseus/cockpit,
		/area/shuttle/castelnau/perseus/power,
		/area/shuttle/castelnau/perseus/cargo
	)
	dock_target = "perseus_shuttle"
	current_location = "nav_perseus_dock"
	landmark_transition = "nav_perseus_transit"
	range = 1
	fuel_consumption = 1.5
	logging_home_tag = "nav_perseus_dock"
	logging_access = access_castelnau_perseus_helm
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/castelnau/hangar/perseus
	name = "Perseus Hangar"
	landmark_tag = "nav_perseus_dock"
	docking_controller = "perseus_shuttle_dock"
	base_area = /area/space
	base_turf = /turf/space

/obj/effect/shuttle_landmark/castelnau/transit/perseus
	name = "Transit"
	landmark_tag = "nav_perseus_transit"

/obj/effect/shuttle_landmark/castelnau/simple_mark
	name = "Simple mark"
	landmark_tag = "nav_space_near_third_deck"

/obj/effect/shuttle_landmark/castelnau/first_deck/one
	name = "Simple mark - first deck north"
	landmark_tag = "nav_space_first_0"

/obj/effect/shuttle_landmark/castelnau/first_deck/two
	name = "Simple mark - first deck south"
	landmark_tag = "nav_space_first_1"

/obj/effect/shuttle_landmark/castelnau/second_deck/one
	name = "Simple mark - second deck north"
	landmark_tag = "nav_space_second_0"

/obj/effect/shuttle_landmark/castelnau/second_deck/two
	name = "Simple mark - second deck south"
	landmark_tag = "nav_space_second_1"

/obj/effect/shuttle_landmark/castelnau/third_deck/one
	name = "Simple mark - third deck north"
	landmark_tag = "nav_space_third_0"

/obj/effect/shuttle_landmark/castelnau/third_deck/two
	name = "Simple mark - third deck south"
	landmark_tag = "nav_space_third_1"

//Ninja Shuttle.
/datum/shuttle/autodock/multi/antag/ninja
	destination_tags = list(
		"nav_ninja_deck1",
		"nav_ninja_deck2",
		"nav_ninja_deck3",
		"nav_ninja_deck4",
		"nav_ninja_deck5",
		"nav_ninja_hanger",
		"nav_away_6",
		"nav_derelict_5",
		"nav_cluster_6",
		"nav_ninja_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag"
		)

/obj/effect/shuttle_landmark/ninja/hanger
	name = "West of Hanger Deck"
	landmark_tag = "nav_ninja_hanger"

/obj/effect/shuttle_landmark/ninja/deck1
	name = "South of First Deck"
	landmark_tag = "nav_ninja_deck1"

/obj/effect/shuttle_landmark/ninja/deck2
	name = "Northeast of Second Deck"
	landmark_tag = "nav_ninja_deck2"

/obj/effect/shuttle_landmark/ninja/deck3
	name = "East of Third Deck"
	landmark_tag = "nav_ninja_deck3"

/obj/effect/shuttle_landmark/ninja/deck4
	name = "West of Fourth Deck"
	landmark_tag = "nav_ninja_deck4"

/obj/effect/shuttle_landmark/ninja/deck5
	name = "Southeast of Bridge"
	landmark_tag = "nav_ninja_deck5"

//Merchant

/datum/shuttle/autodock/ferry/merchant
	name = "Merchant"
	warmup_time = 10
	shuttle_area = /area/shuttle/merchant/home
	waypoint_station = "nav_merchant_start"
	waypoint_offsite = "nav_merchant_out"
	dock_target = "merchant_ship_dock"

/obj/effect/shuttle_landmark/merchant/start
	name = "Merchant Base"
	landmark_tag = "nav_merchant_start"
	docking_controller = "merchant_station_dock"

/obj/effect/shuttle_landmark/merchant/out
	name = "Docking Bay"
	landmark_tag = "nav_merchant_out"
	docking_controller = "merchant_shuttle_station_dock"

//Admin

/datum/shuttle/autodock/ferry/administration
	name = "Administration"
	warmup_time = 10	//want some warmup time so people can cancel.
	shuttle_area = /area/shuttle/administration/centcom
	dock_target = "admin_shuttle"
	waypoint_station = "nav_admin_start"
	waypoint_offsite = "nav_admin_out"

/obj/effect/shuttle_landmark/admin/start
	name = "Centcom"
	landmark_tag = "nav_admin_start"
	docking_controller = "admin_shuttle"
	base_area = /area/centcom
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/admin/out
	name = "Docking Bay"
	landmark_tag = "nav_admin_out"
	docking_controller = "admin_shuttle_dock_airlock"

//Transport

/datum/shuttle/autodock/ferry/centcom
	name = "Centcom"
	location = 1
	warmup_time = 10
	shuttle_area = /area/shuttle/transport1/centcom
	dock_target = "centcom_shuttle"
	waypoint_offsite = "nav_ferry_start"
	waypoint_station = "nav_ferry_out"

/obj/effect/shuttle_landmark/ferry/start
	name = "Centcom"
	landmark_tag = "nav_ferry_start"
	docking_controller = "centcom_shuttle_bay"

/obj/effect/shuttle_landmark/ferry/out
	name = "Docking Bay"
	landmark_tag = "nav_ferry_out"
	docking_controller = "centcom_shuttle_dock_airlock"

/obj/effect/shuttle_landmark/merc/hanger
	name = "Northeast of Hanger Deck"
	landmark_tag = "nav_merc_hanger"

/obj/effect/shuttle_landmark/merc/deck1
	name = "Northeast of First Deck"
	landmark_tag = "nav_merc_deck1"

/obj/effect/shuttle_landmark/merc/deck2
	name = "Southeast of the Second deck"
	landmark_tag = "nav_merc_deck2"

/obj/effect/shuttle_landmark/merc/deck3
	name = "South of Third deck"
	landmark_tag = "nav_merc_deck3"

/obj/effect/shuttle_landmark/merc/deck4
	name = "Northwest of Fourth Deck"
	landmark_tag = "nav_merc_deck4"

/obj/effect/shuttle_landmark/merc/deck5
	name = "East of Bridge"
	landmark_tag = "nav_merc_deck5"

//Skipjack
/datum/shuttle/autodock/multi/antag/skipjack
	destination_tags = list(
		"nav_skipjack_deck1",
		"nav_skipjack_deck2",
		"nav_skipjack_deck3",
		"nav_skipjack_deck4",
		"nav_skipjack_deck5",
		"nav_skipjack_hanger",
		"nav_away_7",
		"nav_derelict_7",
		"nav_cluster_7",
		"nav_skipjack_dock",
		"nav_skipjack_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		)

/obj/effect/shuttle_landmark/skipjack/hanger
	name = "North of Hanger Deck"
	landmark_tag = "nav_skipjack_hanger"

/obj/effect/shuttle_landmark/skipjack/deck1
	name = "Northwest of First Deck"
	landmark_tag = "nav_skipjack_deck1"

/obj/effect/shuttle_landmark/skipjack/deck2
	name = "Southwest of the Second deck"
	landmark_tag = "nav_skipjack_deck2"

/obj/effect/shuttle_landmark/skipjack/deck3
	name = "Southeast of Third deck"
	landmark_tag = "nav_skipjack_deck3"

/obj/effect/shuttle_landmark/skipjack/deck4
	name = "Northwest of Fourth Deck"
	landmark_tag = "nav_skipjack_deck4"

/obj/effect/shuttle_landmark/skipjack/deck5
	name = "South of Bridge"
	landmark_tag = "nav_skipjack_deck5"

//NT Rescue Shuttle

/datum/shuttle/autodock/multi/antag/rescue
	destination_tags = list(
		"nav_ert_deck1",
		"nav_ert_deck2",
		"nav_ert_deck3",
		"nav_ert_deck4",
		"nav_ert_deck5",
		"nav_ert_hanger",
		"nav_away_4",
		"nav_derelict_4",
		"nav_cluster_4",
		"nav_ert_dock",
		"nav_ert_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		)

/obj/effect/shuttle_landmark/ert/hanger
	name =  "Southeast of Hanger deck"
	landmark_tag = "nav_ert_hanger"

/obj/effect/shuttle_landmark/ert/deck1
	name =  "Southwest of Fourth deck"
	landmark_tag = "nav_ert_deck1"

/obj/effect/shuttle_landmark/ert/deck2
	name = "Northwest of Third deck"
	landmark_tag = "nav_ert_deck2"

/obj/effect/shuttle_landmark/ert/deck3
	name = "Northwest of Second deck"
	landmark_tag = "nav_ert_deck3"

/obj/effect/shuttle_landmark/ert/deck4
	name = "Southwest of First Deck"
	landmark_tag = "nav_ert_deck4"

/obj/effect/shuttle_landmark/ert/deck5
	name = "West of Bridge"
	landmark_tag = "nav_ert_deck5"

//SCGMC Assault Pod

/datum/shuttle/autodock/ferry/specops/ert
	name = "Special Operations"
	warmup_time = 10
	shuttle_area = /area/shuttle/specops/centcom
	dock_target = "specops_shuttle_fore"
	waypoint_station = "nav_specops_start"
	waypoint_offsite = "nav_specops_out"

/obj/effect/shuttle_landmark/specops/start
	name = "Centcom"
	landmark_tag = "nav_specops_start"
	docking_controller = "specops_shuttle_port"

/obj/effect/shuttle_landmark/specops/out
	name = "Docking Bay"
	landmark_tag = "nav_specops_out"
	docking_controller = "specops_dock_airlock"

//Cargo drone

/datum/shuttle/autodock/ferry/supply/drone
	name = "Supply Drone"
	location = 1
	warmup_time = 10
	shuttle_area = /area/supply/dock
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"

/obj/effect/shuttle_landmark/supply/centcom
	name = "Offsite"
	landmark_tag = "nav_cargo_start"

/obj/effect/shuttle_landmark/supply/station
	name = "Hangar"
	landmark_tag = "nav_cargo_station"
	base_area = /area/shuttle/castelnau/cheapskate/cargo/outer
	base_turf = /turf/space


