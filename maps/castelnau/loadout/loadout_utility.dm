/datum/gear/utility/holopad
	display_name = "Holopad"
	path = /obj/item/device/holopad
	cost = 5

/datum/gear/utility/pda
	display_name = "PDA selection"
	path = /obj/item/modular_computer/pda
	cost = 2

/datum/gear/utility/pda/New()
	..()
	var/pdas = list()
	slot = slot_wear_id
	pdas["grey"]                    = /obj/item/modular_computer/pda
	pdas["grey-red (sec)"]          = /obj/item/modular_computer/pda/security
	pdas["lightgrey-brown (sup)"]   = /obj/item/modular_computer/pda/cargo
	pdas["lightgrey-yellow (eng)"]  = /obj/item/modular_computer/pda/engineering
	pdas["navy (heads)"]            = /obj/item/modular_computer/pda/heads
	pdas["navy-red (hos)"]          = /obj/item/modular_computer/pda/heads/hos
	pdas["navy-gold (capt)"]        = /obj/item/modular_computer/pda/captain
	pdas["navy-blue (cmo)"]         = /obj/item/modular_computer/pda/heads/cmo
	pdas["navy-white (hop)"]        = /obj/item/modular_computer/pda/heads/hop
	pdas["navy-yellow (ce)"]        = /obj/item/modular_computer/pda/heads/ce
	pdas["navy-darkgreen (rd)"]     = /obj/item/modular_computer/pda/heads/rd
	pdas["white-blue (med)"]        = /obj/item/modular_computer/pda/medical
	pdas["white-purple (exp)"]      = /obj/item/modular_computer/pda/explorer
	pdas["white-darkgreen (sci)"]   = /obj/item/modular_computer/pda/science
	pdas["white-yellowblue (robot)"]= /obj/item/modular_computer/pda/roboticist
	pdas["black (mercs)"]           = /obj/item/modular_computer/pda/syndicate
	gear_tweaks += new/datum/gear_tweak/path(pdas)

/datum/gear/utility/pda/spawn_on_mob(var/mob/living/carbon/human/H, var/metadata)
	var/obj/item/modular_computer/pda/item = spawn_item(H, metadata)
	var/obj/item/card/id = H.GetIdCard()
	if(id)
		item.attackby(id, H)
	if(item.tesla_link && !istype(H, /mob/living/carbon/human/dummy))	//PDA in loadout shouldn't work
		item.turn_on()
	if(H.equip_to_slot_if_possible(item, slot, TRYEQUIP_DESTROY))
		. = item
