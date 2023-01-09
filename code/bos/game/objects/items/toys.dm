//Figurines

/obj/item/toy/figure/booker
	name = "Boris Militarist action figure"
	desc = "A brand new limited Boris Booker action figure! Now in military uniform."
	var/cooldown = 0
	icon = 'icons/bos/obj/toy.dmi'
	icon_state = "booker"

/obj/item/toy/figure/booker/attack_self(mob/user as mob)
	if(cooldown < world.time - 8)
		to_chat(user, "<span class='notice'>You play with [src].</span>")
		playsound(user, 'sound/voice/bos/boris_slacker.ogg', 20, 1)
		cooldown = world.time


/obj/item/toy/figure/booker/flag
	name = "Boris Loyalist action figure"
	desc = "A brand new limited Boris Booker action figure! Now in poncho with Lordanian flag."
	icon_state = "booker_flag"

/obj/item/toy/figure/booker/armor
	name = "Boris Hero action figure"
	desc = "A brand new limited Boris Booker action figure! Now in his legendary battle armor."
	icon_state = "booker_armor"

/obj/item/toy/figure/booker/armor/attack_self(mob/user as mob)
	if(cooldown < world.time - 8)
		to_chat(user, "<span class='notice'>You play with [src].</span>")
		playsound(user, 'sound/voice/bos/boris_balls.ogg', 20, 1)
		cooldown = world.time

//Plushies

/obj/item/toy/plushie/masyunya
	name = "Magenta Demon of Lust plushie"
	desc = "An odd pink plush doll of a cat. It's soft, but you feel nervous just looking at it."
	icon = 'icons/bos/obj/toy.dmi'
	icon_state = "masyunya"
	var/phrase = "<span class='warning'>Obey my charms!</span>"

/obj/item/toy/plushie/masyunya/attack_self(mob/living/user)
	var/action_word = "action"
	if (user.a_intent == I_HELP)
		action_word = "hug"
	else if (user.a_intent == I_DISARM)
		action_word = "poke"
	else if (user.a_intent == I_GRAB)
		action_word = "strangle"
	else if (user.a_intent == I_HURT)
		action_word = "bop"
	user.visible_message(
		SPAN_ITALIC("\The [user] [action_word]s \the [src]."),
		SPAN_ITALIC("You [action_word] \the [src].")
	)
	if (phrase)
		audible_message(phrase, hearing_distance = 3)
	playsound(src, 'sound/effects/rustle1.ogg', 100, 1)

/obj/item/toy/plushie/masyunya/sima
	name = "Azure Devil of Terror plushie"
	desc = "An odd blue plush doll of a cat. It's soft, but you feel nervous just looking at it."
	icon_state = "sima"
	phrase = "<span class='warning'>Tell me, are you afraid of death?</span>"

/obj/item/toy/plushie/masyunya/necoarc
	name = "Amber Prince of Darkness plushie"
	desc = "An odd yellow plush doll of a cat. It's soft, but you feel nervous just looking at it."
	icon_state = "necoarc"
	phrase = "<span class='warning'>Reject humanity - make us whole.</span>"
