/decl/hierarchy/outfit/job/torch/crew/command
	name = OUTFIT_JOB_NAME("Antares Command Outfit")
	hierarchy_type = /decl/hierarchy/outfit/job/torch/crew/command
	l_ear = /obj/item/device/radio/headset/headset_com

/decl/hierarchy/outfit/job/torch/crew/command/CO
	name = OUTFIT_JOB_NAME("Commanding Officer")
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/lordan/service/fleet/officer
	suit = /obj/item/clothing/suit/storage/toggle/lordan/service/fleet/captain
	l_ear = /obj/item/device/radio/headset/heads/torchexec
	shoes = /obj/item/clothing/shoes/lordan/service
	head = /obj/item/clothing/head/lordan/fleet
	id_types = list(/obj/item/card/id/torch/gold)
	pda_type = /obj/item/modular_computer/pda/captain

/decl/hierarchy/outfit/job/torch/crew/command/CO/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/storage/backpack/command
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/storage/backpack/satchel/com
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/storage/backpack/messenger/com

/decl/hierarchy/outfit/job/torch/crew/command/XO
	name = OUTFIT_JOB_NAME("Executive Officer")
	uniform = /obj/item/clothing/under/lordan/service/fleet/officer
	suit = /obj/item/clothing/suit/storage/toggle/lordan/service/fleet/officer
	head = /obj/item/clothing/head/lordan/fleet
	l_ear = /obj/item/device/radio/headset/heads/torchexec
	shoes = /obj/item/clothing/shoes/lordan/service
	id_types= list(/obj/item/card/id/torch/silver)
	pda_type = /obj/item/modular_computer/pda/heads/hop

/decl/hierarchy/outfit/job/torch/crew/command/cmo
	name = OUTFIT_JOB_NAME("Chief Medical Officer - Antares")
	l_ear  =/obj/item/device/radio/headset/heads/cmo
	uniform = /obj/item/clothing/under/lordan/utility/fleet/medical
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/blue
	head = /obj/item/clothing/head/beret/lordan/fleet
	shoes = /obj/item/clothing/shoes/lordan
	id_types= list(/obj/item/card/id/torch/silver/medical)
	pda_type = /obj/item/modular_computer/pda/heads/cmo
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/torch/crew/command/cmo/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/torch/crew/command/chief_engineer
	name = OUTFIT_JOB_NAME("Chief Engineer - Antares")
	uniform = /obj/item/clothing/under/lordan/utility/fleet/engineering
	shoes = /obj/item/clothing/shoes/lordan
	head = /obj/item/clothing/head/beret/lordan/fleet
	l_ear = /obj/item/device/radio/headset/heads/ce
	id_types= list(/obj/item/card/id/torch/silver/engineering)
	pda_type = /obj/item/modular_computer/pda/heads/ce
	pda_slot = slot_l_store
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/torch/crew/command/chief_engineer/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/torch/crew/command/cos
	name = OUTFIT_JOB_NAME("Chief of Security")
	l_ear = /obj/item/device/radio/headset/heads/cos
	uniform = /obj/item/clothing/under/lordan/utility/fleet/combat/security
	suit = /obj/item/clothing/suit/armor/pcarrier/medium
	head = /obj/item/clothing/head/beret/lordan/fleet
	shoes = /obj/item/clothing/shoes/lordan
	id_types= list(/obj/item/card/id/torch/silver/security)
	pda_type = /obj/item/modular_computer/pda/heads/hos

/decl/hierarchy/outfit/job/torch/crew/command/cos/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/torch/crew/command/cso
	name = OUTFIT_JOB_NAME("Research Director - Antares")
	uniform = /obj/item/clothing/under/suit_jacket/really_black
	l_ear = /obj/item/device/radio/headset/heads/torchntdirector
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/rd/ec/lordan
	id_types= list(/obj/item/card/id/torch/silver/research)
	pda_type = /obj/item/modular_computer/pda/heads/rd

/decl/hierarchy/outfit/job/torch/crew/command/sea/fleet
	name = OUTFIT_JOB_NAME("Political Officer")
	uniform = /obj/item/clothing/under/lordan/service/fleet/officer
	suit = /obj/item/clothing/suit/storage/toggle/lordan/service/fleet/po
	head = /obj/item/clothing/head/lordan/fleet/po
	shoes = /obj/item/clothing/shoes/lordan/service
	l_ear = /obj/item/device/radio/headset/sea
	id_types= list(/obj/item/card/id/torch/crew/sea)
	pda_type = /obj/item/modular_computer/pda/heads

/decl/hierarchy/outfit/job/torch/crew/command/sea/fleet/kgb //cursed af
	name = OUTFIT_JOB_NAME("Political Officer - KGB")
	uniform = /obj/item/clothing/under/sl_suit
	head = /obj/item/clothing/head/helmet/kgb

/decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer
	name = OUTFIT_JOB_NAME("Second Officer")
	uniform = /obj/item/clothing/under/lordan/service/fleet/officer
	suit = /obj/item/clothing/suit/storage/toggle/lordan/service/fleet/officer
	head = /obj/item/clothing/head/beret/lordan/fleet
	shoes = /obj/item/clothing/shoes/lordan/service
	id_types= list(/obj/item/card/id/torch/crew/bridgeofficer)
	pda_type = /obj/item/modular_computer/pda/heads
	l_ear = /obj/item/device/radio/headset/bridgeofficer

/decl/hierarchy/outfit/job/torch/crew/command/terrep
	name = OUTFIT_JOB_NAME("ICCG Representative")
	uniform = /obj/item/clothing/under/terran/navy/service/command
	suit = /obj/item/clothing/suit/storage/terran/service/navy/command
	shoes = /obj/item/clothing/shoes/terran
	head = /obj/item/clothing/head/terran/navy/service/command
	id_types= list(/obj/item/card/id/torch/crew/representative)
	pda_type = /obj/item/modular_computer/pda/heads
	l_ear = /obj/item/device/radio/headset/terran

/decl/hierarchy/outfit/job/torch/crew/command/ter_bodyguard
	name = OUTFIT_JOB_NAME("ICCG Bodyguard")
	uniform = /obj/item/clothing/under/terran/navy/utility
	shoes = /obj/item/clothing/shoes/terran
	head = /obj/item/clothing/head/terran/navy/utility
	id_types= list(/obj/item/card/id/torch/crew/terguard)
	l_ear = /obj/item/device/radio/headset/terran
