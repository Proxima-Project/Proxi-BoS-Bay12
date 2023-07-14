#if !defined(using_map_DATUM)

	#include "castelnau_bos.dm"
	#include "castelnau_bos_torch.dm"

	#include "castelnau_announcements.dm"
	#include "castelnau_antagonism.dm"
	#include "castelnau_define.dm"
	#include "castelnau_lobby.dm"
	#include "castelnau_lore.dm"
	#include "castelnau_overmap.dm"
	#include "castelnau_overrides.dm"
	#include "castelnau_presets.dm"
	#include "castelnau_holodeck.dm"
	#include "castelnau_procs.dm"
	#include "castelnau_ranks.dm"
	#include "castelnau_renames.dm"
	#include "castelnau_security_state.dm"
	#include "castelnau_unit_testing.dm"

	#include "code/_global_vars/lists/locations.dm"
	#include "code/game/objects/effects/landmarks.dm"
	#include "code/gamemodes/objectives.dm"
	#include "code/modules/aspects/night.dm"
	#include "code/modules/sandstorm.dm"
	#include "code/modules/client/preferences_spawnpoints.dm"
	#include "flooring/flooring_premade.dm"

	#include "datums/hairs.dm"

	#include "items/cards_ids.dm"
	#include "items/headsets.dm"
	#include "items/encryption_keys.dm"
	#include "items/drinks.dm"
	#include "items/items.dm"
	#include "items/lighting.dm"
	#include "items/machinery.dm"
	#include "items/mirror.dm"
	#include "items/random.dm"
	#include "items/mobile_ladders.dm"
	#include "items/nightstand.dm"
	#include "items/papers.dm"

	#include "items/devices/flashlight.dm"

	#include "items/clothing/castelnau_hands.dm"
	#include "items/clothing/castelnau_under.dm"
	#include "items/clothing/castelnau_head.dm"
	#include "items/clothing/castelnau_suit.dm"


	#include "job/access.dm"

	#include "job/jobs.dm"
	#include "job/jobs_cargo.dm"
	#include "job/jobs_command.dm"
	#include "job/jobs_engineering.dm"
	#include "job/jobs_evaguys.dm"
	#include "job/jobs_medical.dm"
	#include "job/jobs_merchants.dm"
	#include "job/jobs_misc.dm"
	#include "job/jobs_security.dm"
	#include "job/jobs_service.dm"

	#include "loadout/_defines.dm"
	#include "loadout/loadout_accessories.dm"
	#include "loadout/loadout_eyes.dm"
	#include "loadout/loadout_gloves.dm"
	#include "loadout/loadout_head.dm"
	#include "loadout/factions/military.dm"
	#include "loadout/factions/paroled.dm"
	#include "loadout/factions/syndi.dm"
	#include "loadout/loadout_misc.dm"
	#include "loadout/loadout_shoes.dm"
	#include "loadout/loadout_suit.dm"
	#include "loadout/loadout_uniform.dm"
	#include "loadout/loadout_utility.dm"
	#include "loadout/loadout_xeno.dm"
	#include "loadout/~defines.dm"

	#include "machinery/lighting.dm"
	#include "machinery/other.dm"

	#include "outfits/cargo/mil.dm"
	#include "outfits/cargo/other.dm"
	#include "outfits/cargo/par.dm"
	#include "outfits/cargo/syndi.dm"

	#include "outfits/command/reg.dm"
	#include "outfits/command/gov.dm"

	#include "outfits/engineer/mil.dm"
	#include "outfits/engineer/par.dm"
	#include "outfits/engineer/reg.dm"
	#include "outfits/engineer/syndi.dm"

	#include "outfits/ftu/cheapskate_crew.dm"

	#include "outfits/med/mil.dm"
	#include "outfits/med/other.dm"
	#include "outfits/med/par.dm"
	#include "outfits/med/reg.dm"
	#include "outfits/med/syndi.dm"

	#include "outfits/misc/misc.dm"
	#include "outfits/misc/evaguys.dm"

	#include "outfits/raiding/mil.dm"
	#include "outfits/raiding/par.dm"
	#include "outfits/raiding/syndi.dm"

	#include "outfits/security/mil.dm"
	#include "outfits/security/other.dm"
	#include "outfits/security/syndi.dm"

	#include "outfits/service/mil.dm"
	#include "outfits/service/other.dm"
	#include "outfits/service/par.dm"

	#include "structures/bedsheet_bin.dm"
	#include "structures/fake_stairs.dm"
	#include "structures/navlights.dm"
	#include "structures/flora.dm"
	#include "structures/sign.dm"
	#include "structures/watercloset.dm"
	#include "structures/wood.dm"

	#include "structures/closets/closet.dm"
	#include "structures/closets/command.dm"
	#include "structures/closets/engineering.dm"
	#include "structures/closets/medical.dm"
	#include "structures/closets/misc.dm"
	#include "structures/closets/security.dm"
	#include "structures/closets/service.dm"
	#include "structures/closets/supply.dm"

	#include "structures/stool_bed_chair_nest/bed.dm"	//FUCK YOU
	#include "structures/stool_bed_chair_nest/chairs.dm"


///DON'T INCLUDE BOTH PLANETSIDE AND SPACE CASTELNAU AT THE SAME TIME OR I WILL EAT YOUR FACE///

//PLANETSIDE CASTELNAU//
	#include "../away/cadaab/cadaab_castelnau.dm"
	#include "cadaab/castelnau-1-cadaab.dmm"
	#include "cadaab/castelnau-2-cadaab.dmm"
	#include "cadaab/castelnau-3-cadaab.dmm"

//SPACE CASTELNAU///
//	#include "castelnau-1.dmm"
//	#include "castelnau-2.dmm"
//	#include "castelnau-3.dmm"
//	#include "castelnau_shuttles.dm"
//	#include "castelnau_areas.dm"

	#include "z1-admin.dmm"
	#include "z2-transit.dmm"


	#include "../away/empty.dmm"
	#include "../away/rawl/rawl.dm"
	#include "../away/solship/solship.dm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
//	#include "../away/venera/venera.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/ascent/ascent.dm"
	#include "../away/voxship/voxship.dm"
	#include "../away/skrellscoutship/skrellscoutship.dm"
	#include "../away/meatstation/meatstation.dm"
	#include "../away/miningstation/miningstation.dm"
	#include "../away/mininghome/mininghome.dm"
	#include "../away/scavver/scavver_gantry.dm"
	#include "../away/raidership/raider_vessel.dm"
	#include "../away/spystation/spy_station.dm"

	#define using_map_DATUM /datum/map/castelnau

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Castelnau

#endif
