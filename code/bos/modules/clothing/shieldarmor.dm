/datum/extension/armor/shieldlike

/datum/extension/armor/shieldlike/get_blocked(damage_type, damage_flags, armor_pen, damage)
	if(!istype(holder, /obj/item/clothing/suit/armor/shieldarmor))
		return 0

	var/damtoreg = round(damage/3)

	var/obj/item/clothing/suit/armor/shieldarmor/arm = holder
	if(arm.charge > damtoreg)
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
	var/delay = 3 SECONDS
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
	delay = 6 SECONDS

/obj/item/clothing/suit/armor/shieldarmor
	name = "Energy shielded armor"
	icon = 'icons/bos/obj/armorshield.dmi'
	icon_state = "50"
	armor_type = /datum/extension/armor/shieldlike
	item_icons = list(
		slot_wear_suit_str = 'icons/bos/obj/armorshield.dmi'
	)
	armor = list(
		melee = ARMOR_MELEE_SHIELDED,
		bullet = ARMOR_BALLISTIC_HEAVY,
		laser = ARMOR_LASER_HEAVY,
		energy = ARMOR_ENERGY_SHIELDED
	)
	var/hit_flick_icon = "shield_armor_hit"
	var/brokensound = 'sound/items/shieldbroken.ogg'
	var/maxcharge = 50
	var/charge = 50
	var/guipath = 'icons/bos/mob/shieldgui.dmi'

/obj/item/clothing/suit/armor/shieldarmor/New()
	. = ..()
	if(!isicon(hit_flick_icon))
		hit_flick_icon = icon(icon, hit_flick_icon)

/obj/item/clothing/suit/armor/shieldarmor/on_update_icon()
	. = ..()
	item_state_slots[slot_wear_suit_str] = "shield_armor_[charge ? 1 : 0]"
	if(ishuman(loc))
		var/mob/living/carbon/human/H = loc
		H.update_inv_wear_suit(TRUE)

/obj/item/clothing/suit/armor/shieldarmor/proc/update_hud(mob/user)
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/H = user
	if(equip_slot == slot_wear_suit && H.client && H.armorhud)
		var/fullpeaces = (charge - (charge % 25)) / 25
		var/partpeaces = round((charge % 25) / 5)

		var/icon/hud_peace = icon(guipath, "[icon_state]-m")
		var/icon/hud = icon(guipath, "[icon_state]-c")
		var/icon/hudonmob = icon(guipath, icon_state)
		for(var/i in 1 to fullpeaces)
			hudonmob.Blend(hud, ICON_OVERLAY, y = (i - 1) * 9)

		var/yoffs = fullpeaces * 9
		for(var/i in 1 to partpeaces)
			hudonmob.Blend(hud_peace, ICON_OVERLAY, y = yoffs+i)

		H.armorhud.icon = hudonmob
		update_icon()
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
