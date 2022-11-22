//SPRITES ARE BROKEN 4 SOME REASON I DON'T KNOW WHAT TO DO

///
//CLOSETS
///

/obj/structure/closet/mjolnir
	icon = 'maps/mjolnir/bos/icons/obj/structures/closets/closet.dmi'
	closet_appearance = null

/obj/structure/closet/mjolnir/wooden
	name = "wooden closet"
	desc = "It's a basic wooden closet."
	icon = 'maps/mjolnir/bos/icons/obj/structures/closets/small.dmi'

/obj/structure/closet/mjolnir/wooden/big
	name = "big wooden closet"
	icon = 'maps/mjolnir/bos/icons/obj/structures/closets/huge.dmi'

/obj/structure/closet/mjolnir/rusty
	name = "old closet"
	desc = "It's an old, rusty closet."
	icon = 'maps/mjolnir/bos/icons/obj/structures/closets/green_closet.dmi'

/obj/structure/closet/mjolnir/cardbox
	name = "cardboard box"
	desc = "A cardboard box. Big enough for a grown man to fit inside."
	icon = 'maps/mjolnir/bos/icons/obj/structures/closets/cardbox.dmi'
	storage_capacity = (MOB_MEDIUM * 2)

/obj/structure/closet/mjolnir/cardbox/love
	name = "love box"
	desc = "A carboard box big enough for several growm men to fit inside. Treat it with love."
	storage_capacity = (MOB_MEDIUM * 3)
	icon = 'maps/mjolnir/bos/icons/obj/structures/closets/cardbox_love.dmi'

/obj/structure/closet/mjolnir/cardbox/patriots
	name = "LPA box"
	desc = "A strange carboard box with eye-cathing design."
	icon = 'maps/mjolnir/bos/icons/obj/structures/closets/cardbox_lpa.dmi'

///
//BEDS
///
/obj/structure/bed/mjolnir
	name = "bunk"
	desc = "This is used to lie in, sleep in or strap on."
	icon = 'maps/mjolnir/bos/icons/obj/structures/furniture/beds.dmi'
	icon_state = "bunk"
	base_icon = "bunk"

/obj/structure/bed/mjolnir/double
	name = "double bunk"
	icon_state = "bunk_double"
	base_icon = "bunk_double"

/obj/structure/bed/mjolnir/wooden
	name = "wooden bunk"
	icon_state = "bunk_wooden"
	base_icon = "bunk_wooden"

///
//DRAWERS
///
/obj/structure/filingcabinet/mjolnir
	name = "steel cabinet"
	desc = "A large cabinet with drawers."
	icon = 'maps/mjolnir/bos/icons/obj/structures/furniture/drawers.dmi'
	icon_state = "steel"

///
//TABLES
///

//FIXED//

/obj/structure/table/rack/mjolnir
	name = "wooden cabinet"
	desc = "A large cabinet with drawers."
	icon = 'maps/mjolnir/bos/icons/obj/structures/furniture/tables.dmi'
	icon_state = "fixed"

/obj/structure/table/rack/mjolnir/table
	name = "wooden table"
	desc = "A wooden table"
	icon_state = "fixed4"

/obj/structure/table/rack/mjolnir/roundtable
	name = "round wooden table"
	desc = "A round wooden table"
	icon_state = "fixed2"

/obj/structure/table/rack/mjolnir/glasstable
	name = "glass table"
	desc = "A glass table"
	icon_state = "fixed3"

//NOT FIXED//

//.............where


///
//CHAIRS
///

/obj/structure/bed/chair/mjolnir
	name = "wooden chair"
	desc = "You sit in this, either by will or force."
	icon = 'maps/mjolnir/bos/icons/obj/structures/furniture/chairs.dmi'
	icon_state = "chair_preview"
	base_icon = "chair"

/obj/structure/bed/chair/mjolnir/beige
	icon_state = "beige_preview"
	base_icon = "beige"

/obj/structure/bed/chair/mjolnir/red
	icon_state = "red_preview"
	base_icon = "red"
