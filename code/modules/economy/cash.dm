//How the fuck this is a food no-- oh. Right.
/obj/item/reagent_containers/food/snacks/spacecash
	name = "0 thalers"
	desc = "It's worth 0 thalers."
	gender = PLURAL
	icon = 'icons/obj/items.dmi'
	icon_state = "spacecash1"
	opacity = 0
	density = FALSE
	anchored = FALSE
	force = 1.0
	throwforce = 1.0
	throw_speed = 1
	throw_range = 2
	w_class = ITEM_SIZE_TINY
	var/access = list()
	access = access_crate_cash
	var/worth = 0
	var/static/denominations = list(1000,500,200,100,50,20,10,1)

	bitesize = 3
	volume = 1000
	nutriment_amt = 1
	nutriment_desc = list(
		"dirty dollar" = 2,
		"liquified money" = 2,
		"1% of life" = 2,
		"Trasen's balls" = 1,
		"communists' anger" = 1
	)

/obj/item/reagent_containers/food/snacks/spacecash/Initialize()
	.=..()
	reagents.add_reagent(/datum/reagent/tricordrazine/jew, worth)

/obj/item/reagent_containers/food/snacks/spacecash/attack(mob/M as mob, mob/user as mob, def_zone)
	.=..()
	worth = round(worth - bitesize)
	reagents.del_reagent(/datum/reagent/tricordrazine/jew)
	reagents.add_reagent(/datum/reagent/tricordrazine/jew, worth)
	update_icon()

/obj/item/reagent_containers/food/snacks/spacecash/standard_feed_mob(var/mob/user, var/mob/target)
	if(user.a_intent == I_HELP)
		return
	worth -= amount_per_transfer_from_this
	..()

/obj/item/reagent_containers/food/snacks/spacecash/attackby(obj/item/W as obj, mob/user as mob)
	if(istype(W, /obj/item/reagent_containers/food/snacks/spacecash))
		if(istype(W, /obj/item/reagent_containers/food/snacks/spacecash/ewallet)) return 0

		var/obj/item/reagent_containers/food/snacks/spacecash/bundle/bundle
		if(!istype(W, /obj/item/reagent_containers/food/snacks/spacecash/bundle))
			var/obj/item/reagent_containers/food/snacks/spacecash/cash = W
			bundle = new (src.loc)
			bundle.worth += cash.worth
			bundle.nutriment_amt = cash.worth
			bundle.reagents.del_reagent(/datum/reagent/tricordrazine/jew)
			bundle.reagents.add_reagent(/datum/reagent/tricordrazine/jew, bundle.worth)
			qdel(cash)
		else //is bundle
			bundle = W
		bundle.worth += src.worth
		bundle.nutriment_amt = bundle.worth
		bundle.reagents.del_reagent(/datum/reagent/tricordrazine/jew)
		bundle.reagents.add_reagent(/datum/reagent/tricordrazine/jew, bundle.worth)
		bundle.update_icon()
		if(istype(user, /mob/living/carbon/human))
			var/mob/living/carbon/human/h_user = user
			h_user.drop_from_inventory(bundle)
			h_user.put_in_hands(bundle)
		to_chat(user, "<span class='notice'>You add [src.worth] [GLOB.using_map.local_currency_name] worth of money to the bundles.<br>It holds [bundle.worth] [GLOB.using_map.local_currency_name] now.</span>")
		qdel(src)

	else if(istype(W, /obj/item/gun/launcher/money))
		var/obj/item/gun/launcher/money/L = W
		L.absorb_cash(src, user)

/obj/item/reagent_containers/food/snacks/spacecash/proc/getMoneyImages()
	if(icon_state)
		return list(icon_state)

/obj/item/reagent_containers/food/snacks/spacecash/bundle
	name = "pile of thalers"
	icon_state = "spacecash1"
	desc = "They are worth 0 Thalers."
	worth = 0

/obj/item/reagent_containers/food/snacks/spacecash/bundle/Initialize()
	. = ..()
	update_icon()

/obj/item/reagent_containers/food/snacks/spacecash/bundle/getMoneyImages()
	if(icon_state)
		return list(icon_state)
	. = list()
	var/sum = src.worth
	var/num = 0
	for(var/i in denominations)
		while(sum >= i && num < 50)
			sum -= i
			num++
			. += "spacecash[i]"
	if(num == 0) // Less than one thaler, let's just make it look like 1 for ease
		. += "spacecash1"

/obj/item/reagent_containers/food/snacks/spacecash/bundle/on_update_icon()
	overlays.Cut()
	var/list/images = src.getMoneyImages()

	for(var/A in images)
		var/image/banknote = image('icons/obj/items.dmi', A)
		banknote.SetTransform(
			rotation = pick(-45, -27.5, 0, 0, 0, 0, 0, 0, 0, 27.5, 45),
			offset_x = rand(-6, 6),
			offset_y = rand(-4, 8)
		)
		src.overlays += banknote

	src.desc = "They are worth [worth] [GLOB.using_map.local_currency_name]."
	if(worth in denominations)
		src.SetName("[worth] [GLOB.using_map.local_currency_name]")
	else
		src.SetName("pile of [worth] [GLOB.using_map.local_currency_name]")

	if(overlays.len <= 2)
		w_class = ITEM_SIZE_TINY
	else
		w_class = ITEM_SIZE_SMALL

/obj/item/reagent_containers/food/snacks/spacecash/bundle/attack_hand(mob/user as mob)
	if (user.get_inactive_hand() == src)
		var/amount = input(usr, "How many [GLOB.using_map.local_currency_name] do you want to take? (0 to [src.worth])", "Take Money", 20) as num
		amount = round(clamp(amount, 0, src.worth))
		if (amount==0) return 0

		if(!locate(src) in view(1, usr)) //BoS. Added this to fix money dupes
			to_chat(usr, SPAN_WARNING("You must hold money in your hands to divide them!"))
			return 0

		src.worth -= amount
		src.update_icon()
		if (amount in list(1000,500,200,100,50,20,1))
			var/cashtype = text2path("/obj/item/reagent_containers/food/snacks/spacecash/bundle/c[amount]")
			var/obj/cash = new cashtype (usr.loc)
			usr.put_in_hands(cash)
		else
			var/obj/item/reagent_containers/food/snacks/spacecash/bundle/bundle = new (usr.loc)
			bundle.worth = amount
			bundle.update_icon()
			usr.put_in_hands(bundle)
		if (!worth)
			qdel(src)
	else
		..()

/obj/item/reagent_containers/food/snacks/spacecash/bundle/c1
	name = "1 Thaler"
	icon_state = "spacecash1"
	desc = "It's worth 1 credit."
	worth = 1

/obj/item/reagent_containers/food/snacks/spacecash/bundle/c10
	name = "10 Thaler"
	icon_state = "spacecash10"
	desc = "It's worth 10 Thalers."
	worth = 10

/obj/item/reagent_containers/food/snacks/spacecash/bundle/c20
	name = "20 Thaler"
	icon_state = "spacecash20"
	desc = "It's worth 20 Thalers."
	worth = 20

/obj/item/reagent_containers/food/snacks/spacecash/bundle/c50
	name = "50 Thaler"
	icon_state = "spacecash50"
	desc = "It's worth 50 Thalers."
	worth = 50

/obj/item/reagent_containers/food/snacks/spacecash/bundle/c100
	name = "100 Thaler"
	icon_state = "spacecash100"
	desc = "It's worth 100 Thalers."
	worth = 100

/obj/item/reagent_containers/food/snacks/spacecash/bundle/c200
	name = "200 Thaler"
	icon_state = "spacecash200"
	desc = "It's worth 200 Thalers."
	worth = 200

/obj/item/reagent_containers/food/snacks/spacecash/bundle/c500
	name = "500 Thaler"
	icon_state = "spacecash500"
	desc = "It's worth 500 Thalers."
	worth = 500

/obj/item/reagent_containers/food/snacks/spacecash/bundle/c1000
	name = "1000 Thaler"
	icon_state = "spacecash1000"
	desc = "It's worth 1000 Thalers."
	worth = 1000

/obj/item/reagent_containers/food/snacks/spacecash/bundle/c2000 //BoS
	name = "2000 Thaler"
	icon_state = "spacecash1000"
	desc = "It's worth 2000 Thalers."
	worth = 2000

/proc/spawn_money(var/sum, spawnloc, mob/living/carbon/human/human_user as mob)
	if(sum in list(1000,500,200,100,50,20,10,1))
		var/cash_type = text2path("/obj/item/reagent_containers/food/snacks/spacecash/bundle/c[sum]")
		var/obj/cash = new cash_type (spawnloc)
		if(ishuman(human_user) && !human_user.get_active_hand())
			human_user.put_in_hands(cash)
	else
		var/obj/item/reagent_containers/food/snacks/spacecash/bundle/bundle = new (spawnloc)
		bundle.worth = sum
		bundle.update_icon()
		if (ishuman(human_user) && !human_user.get_active_hand())
			human_user.put_in_hands(bundle)
	return

/obj/item/reagent_containers/food/snacks/spacecash/ewallet
	name = "Charge card"
	icon_state = "efundcard"
	desc = "A card that holds an amount of money."
	var/owner_name = "" //So the ATM can set it so the EFTPOS can put a valid name on transactions.

/obj/item/reagent_containers/food/snacks/spacecash/ewallet/examine(mob/user, distance)
	. = ..(user)
	if (distance > 2 && user != loc) return
	to_chat(user, "<span class='notice'>Charge card's owner: [src.owner_name]. [GLOB.using_map.local_currency_name] remaining: [src.worth].</span>")
