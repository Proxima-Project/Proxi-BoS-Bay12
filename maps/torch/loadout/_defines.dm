//The following is a list of defs to be used for the Torch loadout.
//john_bigless here, trying to use multiple defines on one loadout items apparently breaks things. Just thought i'd leave a warning here.

//For jobs that allow for decorative or ceremonial clothing
#define FORMAL_ROLES list(/datum/job/terrep, /datum/job/terguard, /datum/job/rd, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/psychiatrist, /datum/job/assistant, /datum/job/canworker, /datum/job/merchant, /datum/job/detective, /datum/job/chaplain, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/unishi_crew, /datum/job/submap/unishi_researcher, /datum/job/submap/armsfactory_loyalengi, /datum/job/submap/armsfactory_loyalguard, /datum/job/submap/pod, /datum/job/stowaway)

//For civilian jobs that may have a uniform, but not a strict one
#define SEMIFORMAL_ROLES list(/datum/job/assistant, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/psychiatrist, /datum/job/canworker, /datum/job/merchant, /datum/job/nt_pilot, /datum/job/scientist, /datum/job/detective, /datum/job/chaplain, /datum/job/roboticist, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/unishi_crew, /datum/job/submap/unishi_researcher, /datum/job/submap/armsfactory_loyalengi, /datum/job/submap/armsfactory_loyalguard, /datum/job/submap/pod, /datum/job/stowaway)

//For civilian jobs that may have a strict uniform.
#define SEMIANDFORMAL_ROLES list(/datum/job/assistant, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/psychiatrist, /datum/job/canworker, /datum/job/merchant, /datum/job/nt_pilot, /datum/job/terrep, /datum/job/terguard, /datum/job/rd, /datum/job/scientist, /datum/job/detective, /datum/job/chaplain, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/unishi_crew, /datum/job/submap/unishi_researcher, /datum/job/submap/armsfactory_loyalengi, /datum/job/submap/armsfactory_loyalguard, /datum/job/submap/pod, /datum/job/stowaway)

//For civilian jobs with no uniform or formal clothing requirements.
#define CASUAL_ROLES list(/datum/job/assistant, /datum/job/janitor, /datum/job/chef, /datum/job/canworker, /datum/job/cargo_tech, /datum/job/roboticist, /datum/job/mining, /datum/job/chaplain, /datum/job/merchant, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/unishi_crew, /datum/job/submap/unishi_researcher, /datum/job/submap/armsfactory_loyalengi, /datum/job/submap/armsfactory_loyalguard, /datum/job/submap/pod, /datum/job/stowaway)

//For roles that would have a higher level of education, typically doctors and other scientists
#define DOCTOR_ROLES list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor/virologist, /datum/job/chemist, /datum/job/psychiatrist, /datum/job/roboticist, /datum/job/rd, /datum/job/scientist)

//For members of the medical department
#define MEDICAL_ROLES list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/doctor/virologist, /datum/job/psychiatrist, /datum/job/chemist, /datum/job/medical_trainee)

//For members of the medical department, roboticists, and some Research
#define STERILE_ROLES list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/doctor/virologist, /datum/job/chemist, /datum/job/psychiatrist, /datum/job/roboticist, /datum/job/rd, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/medical_trainee)

//For members of the engineering department
#define ENGINEERING_ROLES list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/engineer_trainee)

//For members of Engineering, Cargo, and Research
#define TECHNICAL_ROLES list(/datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/qm, /datum/job/cargo_tech, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/merchant, /datum/job/rd, /datum/job/scientist, /datum/job/chief_engineer, /datum/job/janitor, /datum/job/engineer_trainee)

//For members of the security department
#define SECURITY_ROLES list(/datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer)

//For members of the supply department
#define SUPPLY_ROLES list(/datum/job/qm, /datum/job/cargo_tech)

//For members of the service department
#define SERVICE_ROLES list(/datum/job/janitor, /datum/job/chef, /datum/job/crew, /datum/job/canworker, /datum/job/chaplain)

//For members of the exploration department
#define EXPLORATION_ROLES list(/datum/job/pathfinder, /datum/job/nt_pilot, /datum/job/explorer, /datum/job/grunt, /datum/job/combat_tech, /datum/job/combat_medic, /datum/job/squad_lead)

//For members of the research department and jobs that are scientific
#define RESEARCH_ROLES list(/datum/job/rd, /datum/job/scientist, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/assistant, /datum/job/nt_pilot, /datum/job/roboticist)

//For jobs that spawn with weapons in their lockers
#define ARMED_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/sea, /datum/job/sea/marine, /datum/job/officer, /datum/job/warden, /datum/job/detective, /datum/job/merchant, /datum/job/terrep, /datum/job/terguard, /datum/job/grunt, /datum/job/combat_tech, /datum/job/combat_medic, /datum/job/squad_lead, /datum/job/submap/armsfactory_loyalguard, /datum/job/qm, /datum/job/bridgeofficer)

//For jobs that spawn with armor in their lockers
#define ARMORED_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/qm, /datum/job/sea, /datum/job/sea/marine, /datum/job/bridgeofficer, /datum/job/officer, /datum/job/warden, /datum/job/detective, /datum/job/merchant, /datum/job/terguard, /datum/job/submap/skrellscoutship_crew, /datum/job/submap/skrellscoutship_crew/leader, /datum/job/grunt, /datum/job/combat_tech, /datum/job/combat_medic, /datum/job/squad_lead, /datum/job/submap/armsfactory_loyalguard)

//For members of the command and command support department. Why wasn't this here before?
#define COMMAND_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/sea, /datum/job/sea/marine, /datum/job/bridgeofficer, /datum/job/terrep, /datum/job/terguard)

//For jobs that have at least O-1 in either SGF or SMC, but aren't considered Command or Command Support.
#define OFFICER_ROLES list(/datum/job/scientist, /datum/job/qm, /datum/job/chaplain, /datum/job/psychiatrist, /datum/job/senior_doctor, /datum/job/doctor/virologist, /datum/job/pathfinder)

//For members of Command, Command Support and all other officer roles. Basically COMMAND_ROLES and OFFICER_ROLES merged together as a last resort.
#define COMMANDANDOFFICER_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/sea, /datum/job/sea/marine, /datum/job/bridgeofficer, /datum/job/scientist, /datum/job/qm, /datum/job/chaplain, /datum/job/psychiatrist, /datum/job/senior_doctor, /datum/job/doctor/virologist, /datum/job/pathfinder, /datum/job/terrep, /datum/job/terguard)

#define UNIFORMED_BRANCHES list(/datum/mil_branch/larfleet, /datum/mil_branch/larmarine, /datum/mil_branch/terran)

#define CASUAL_BRANCHES list(/datum/mil_branch/civilian, /datum/mil_branch/lord)

#define CIVILIAN_BRANCHES list(/datum/mil_branch/civilian, /datum/mil_branch/lord)

#define LORDANIA_BRANCHES list(/datum/mil_branch/larfleet, /datum/mil_branch/larmarine)

#define TACTICOOL_BRANCHES list(/datum/mil_branch/larfleet, /datum/mil_branch/larmarine, /datum/mil_branch/terran)

#define MILITARY_BRANCHES list(/datum/mil_branch/larfleet, /datum/mil_branch/larmarine, /datum/mil_branch/terran)
