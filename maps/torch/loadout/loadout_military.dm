/datum/gear/military/marform
	display_name = "marine utility uniform selection"
	description = "A selection of marine uniforms."
	path = /obj/item/clothing/under
	slot = slot_w_uniform
	cost = 0
	allowed_branches = list(/datum/mil_branch/larmarine)

/datum/gear/military/marform/New()
	..()
	var/uniform = list()
	uniform += /obj/item/clothing/under/lordan/utility/green
	uniform += /obj/item/clothing/under/lordan/utility
	uniform += /obj/item/clothing/under/lordan/utility/tan
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(uniform)

/datum/gear/military/fleetcombat
	display_name = "fleet combat uniform"
	path = /obj/item/clothing/under/lordan/utility/fleet/combat
	slot = slot_w_uniform
	cost = 0
	allowed_branches = list(/datum/mil_branch/larfleet)

/datum/gear/military/marinehat
	display_name = "marine utility cover selection"
	description = "A selection of marine covers."
	path = /obj/item/clothing/head
	slot = slot_head
	cost = 0
	allowed_branches = list(/datum/mil_branch/larmarine)

/datum/gear/military/marinehat/New()
	..()
	var/cover = list()
	cover += /obj/item/clothing/head/soft/lordan
	cover += /obj/item/clothing/head/soft/lordan/grey
	cover += /obj/item/clothing/head/soft/lordan/tan
	cover += /obj/item/clothing/head/lordan/utility
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(cover)

/datum/gear/military/orbitalberet
	display_name = "orbital assault beret"
	path = /obj/item/clothing/head/beret/lordan/orbital
	slot = slot_head
	cost = 0
	allowed_branches = list(/datum/mil_branch/larmarine)

/datum/gear/military/fleetcap
	display_name = "fleet cover selection"
	path = /obj/item/clothing/head
	slot = slot_head
	cost = 0
	allowed_branches = list(/datum/mil_branch/larfleet)

/datum/gear/military/fleetcap/New()
	..()
	var/cover = list()
	cover += /obj/item/clothing/head/beret/lordan/fleet
	cover += /obj/item/clothing/head/lordan/fleet
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(cover)

/datum/gear/military/gloves
	display_name = "gloves selection"
	path = /obj/item/clothing/gloves
	slot = slot_gloves
	cost = 2
	allowed_branches = list(/datum/mil_branch/larmarine, /datum/mil_branch/larfleet)

/datum/gear/military/gloves/New()
	..()
	var/milgloves = list()
	milgloves["Combat gloves"] = /obj/item/clothing/gloves/thick/duty/lordan
	milgloves["Duty gloves"] = /obj/item/clothing/gloves/thick/duty/lordan/utility
	milgloves["White gloves"] = /obj/item/clothing/gloves/marinewhite
	gear_tweaks += new/datum/gear_tweak/path(milgloves)

/datum/gear/military/shoes
	display_name = "shoes selection"
	path = /obj/item/clothing/shoes
	cost = 0
	allowed_branches = list(/datum/mil_branch/larmarine, /datum/mil_branch/larfleet)

/datum/gear/military/shoes/New()
	..()
	var/milshoes = list()
	milshoes += /obj/item/clothing/shoes/lordan
	milshoes += /obj/item/clothing/shoes/lordan/service
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(milshoes)