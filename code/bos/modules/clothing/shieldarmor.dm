/datum/extension/armor/shieldlike

/datum/extension/armor/shieldlike/get_blocked(damage_type, damage_flags, armor_pen, damage)
	if(!istype(holder, /obj/item/clothing/suit/armor/shieldarmor))
		return 0

	var/damtoreg = round(damage/3)

	var/obj/item/clothing/suit/armor/shieldarmor/arm = holder
	if(arm.charge >= damtoreg)
		arm.charge -= damtoreg
		arm.update_hud(arm.loc)
		return 1
	else if(arm.charge > 0)
		arm.charge = 0
		arm.update_hud(arm.loc)
		playsound(arm, arm.brokensound, 100)
		return 0.5
	return 0

/obj/item/armorchargebattery
	name = "Small shields battery"
	icon = 'icons/bos/obj/armor_battery.dmi'
	icon_state = "smol"
	var/active = TRUE
	var/chargelevel = 25
	var/delay = 5 SECONDS
	var/chargesoundend = 'sound/items/shieldbatteryend.ogg'

/obj/item/armorchargebattery/examine(mob/user, distance)
	. = ..()
	to_chat(user, SPAN_INFO(active ? "Looks like battery is fully charged" : "Looks like battery is empty"))

/obj/item/armorchargebattery/on_update_icon()
	. = ..()
	icon_state = initial(icon_state)
	if(!active)
		icon_state += "_empty"

/obj/item/armorchargebattery/max
	name = "Huge shields battery"
	icon_state = "huge"
	chargelevel = 125
	delay = 10 SECONDS

/obj/item/clothing/suit/armor/shieldarmor
	name = "Energy shielded armor"
	icon = 'icons/bos/obj/armorshield.dmi'
	icon_state = "50"
	armor_type = /datum/extension/armor/shieldlike
	armor = list(
		melee = ARMOR_MELEE_SHIELDED,
		bullet = ARMOR_BALLISTIC_HEAVY,
		laser = ARMOR_LASER_HEAVY,
		energy = ARMOR_ENERGY_SHIELDED,
		bomb = ARMOR_BOMB_MINOR,
		bio = ARMOR_BIO_MINOR,
		rad = ARMOR_RAD_MINOR
	)
	var/brokensound = 'sound/items/shieldbroken.ogg'
	var/maxcharge = 50
	var/charge = 50

/obj/item/clothing/suit/armor/shieldarmor/proc/update_hud(mob/user)
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/H = user
	if(equip_slot == slot_wear_suit && H.client && H.armorhud)
		var/times = charge ? round(charge/25) : 0

		var/icon/hud = icon('icons/bos/mob/shieldgui.dmi', "[icon_state]-c")
		var/icon/hudonmob = icon('icons/bos/mob/shieldgui.dmi', icon_state)
		if(times)
			for(var/i in 0 to max(times-1, 1))
				hudonmob.Blend(hud, ICON_OVERLAY, y=i*9)
		H.armorhud.icon = hudonmob
		if(H.armorhud in H?.client.screen)
			return
		H?.client.screen += H.armorhud

/obj/item/clothing/suit/armor/shieldarmor/equipped(mob/user)
	. = ..()
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/H = user
	if(equip_slot == slot_wear_suit)
		update_hud(user)
	else
		H.client.screen -= H.armorhud

/obj/item/clothing/suit/armor/shieldarmor/examine(mob/user)
	. = ..()
	to_chat(user, SPAN_INFO("Charge-meter shown [charge]/[maxcharge]"))

/obj/item/clothing/suit/armor/shieldarmor/attackby(obj/item/I, mob/user)
	if(!istype(I, /obj/item/armorchargebattery))
		return ..()

	var/obj/item/armorchargebattery/bat = I
	if(!bat.active)
		to_chat(user, SPAN_WARNING("Battery was already used..."))
		return
	if(charge>=maxcharge)
		to_chat(user, SPAN_WARNING("[src] already charged!"))
		return

	visible_message(SPAN_INFO("[user] started to charge their shield..."))
	if(do_after(user, bat.delay, src))
		visible_message(SPAN_INFO("[user] charged their shield!"))
		playsound(src, bat.chargesoundend, 100, 1)
		charge = clamp((charge+bat.chargelevel), 0, maxcharge)
		bat.active = FALSE
		bat.update_icon()
		update_hud(loc)

/obj/item/clothing/suit/armor/shieldarmor/blue
	icon_state = "75"
	maxcharge = 75
	charge = 75

/obj/item/clothing/suit/armor/shieldarmor/purple
	icon_state = "100"
	maxcharge = 100
	charge = 100

/obj/item/clothing/suit/armor/shieldarmor/red
	icon_state = "125"
	maxcharge = 125
	charge = 125
