/decl/hierarchy/outfit/job/torch/crew/command/sea/marine
	name = OUTFIT_JOB_NAME("Officer - Marine Corps")
	uniform = /obj/item/clothing/under/lordan/service/green/officer
	suit = /obj/item/clothing/suit/storage/toggle/lordan/service/command
	shoes = /obj/item/clothing/shoes/lordan/service
	l_ear = /obj/item/device/radio/headset/marcom
	id_types= list(/obj/item/card/id/torch/crew/sea/marine)
	pda_type = /obj/item/modular_computer/pda/heads

/decl/hierarchy/outfit/job/torch/crew/infantry
	name = OUTFIT_JOB_NAME("Infantry Marine")
	uniform = /obj/item/clothing/under/lordan/utility/green
	shoes = /obj/item/clothing/shoes/lordan
	l_ear = /obj/item/device/radio/headset/infantry
	id_types= list(/obj/item/card/id/torch/crew/infantry)

/decl/hierarchy/outfit/job/torch/crew/infantry/squad_lead
	name = OUTFIT_JOB_NAME("Squad Leader")
	uniform = /obj/item/clothing/under/lordan/utility/green/command
	id_types= list(/obj/item/card/id/torch/crew/infantry/infcom)
	l_ear = /obj/item/device/radio/headset/infcom

/decl/hierarchy/outfit/job/torch/crew/infantry/combat_tech
	name = OUTFIT_JOB_NAME("Combat Technician")
	uniform = /obj/item/clothing/under/lordan/utility/green/engineering
	id_types= list(/obj/item/card/id/torch/crew/infantry/inftech)
	pda_type = /obj/item/modular_computer/pda/engineering
	l_ear = /obj/item/device/radio/headset/inftech

/decl/hierarchy/outfit/job/torch/crew/infantry/combat_medic
	name = OUTFIT_JOB_NAME("Combat Medic")
	uniform = /obj/item/clothing/under/lordan/utility/green/medical
	id_types= list(/obj/item/card/id/torch/crew/infantry/infmed)
	pda_type = /obj/item/modular_computer/pda/medical
	l_ear = /obj/item/device/radio/headset/infantry
