/*
    File: custom.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-10-07
    Last Update: 2024-11-16
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Iraqi Army 2006

    Needed Mods:
        - Sa'hatra: Army of Saddam

    Optional Mods:
        - None
*/

// Enemy infantry classes
KPLIB_o_officer = "COS_IRG_Radio_Telephone_Operator";
KPLIB_o_squadLeader = "COS_IRG_Squad_Leader";
KPLIB_o_teamLeader = "COS_IRG_Team_Leader";
KPLIB_o_sentry = "COS_IRG_Rifleman_Light";
KPLIB_o_rifleman = "COS_IRG_Rifleman_Light";
KPLIB_o_riflemanLAT = "COS_IRG_Rifleman_AT";
KPLIB_o_grenadier = "COS_IRG_Grenadier";
KPLIB_o_machinegunner = "COS_IRG_Machine_Gunner";
KPLIB_o_heavyGunner = "COS_IRG_Machine_Gunner";
KPLIB_o_marksman = "COS_IRG_Marksman";
KPLIB_o_sharpshooter = "COS_IRG_Marksman";
KPLIB_o_sniper = "COS_IRG_Marksman";
KPLIB_o_atSpecialist = "COS_IRG_AT_Specialist";
KPLIB_o_aaSpecialist = "COS_IRG_AA_Specialist";
KPLIB_o_medic = "COS_IRG_Medic";
KPLIB_o_engineer = "COS_IRG_Rifleman_Light";
KPLIB_o_paratrooper = "COS_IRG_Rifleman_Light";
KPLIB_o_crewman = "COS_IRG_Crewman";
KPLIB_o_pilot = "COS_IRG_Helicopter_Pilot";

// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "COS_IRG_UAZ_3151_Closed";
KPLIB_o_mrapArmed = "COS_IRG_UAZ_3151_DSHKM";
KPLIB_o_transportHeli = "COS_IRG_MI_8T";
KPLIB_o_transportTruck = "COS_IRG_GAZ_66";
KPLIB_o_transportTruckAmmo = "";
KPLIB_o_fuelTruck = "UK3CB_TKA_O_Ural_Fuel";
KPLIB_o_ammoTruck = "UK3CB_TKA_O_Ural_Ammo";
KPLIB_o_fuelContainer = "B_Slingload_01_Fuel_F";
KPLIB_o_ammoContainer = "B_Slingload_01_Ammo_F";
KPLIB_o_flag = "Flag_TKA";

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "COS_IRG_AA_Specialist",
	"COS_IRG_AT_Specialist",
	"COS_IRG_Grenadier",
	"COS_IRG_Machine_Gunner",
	"COS_IRG_Marksman",
	"COS_IRG_Medic",
	"COS_IRG_Radio_Telephone_Operator",
	"COS_IRG_Rifleman_AT",
	"COS_IRG_Rifleman_Light",
	"COS_IRG_Squad_Leader",
	"COS_IRG_Team_Leader"
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
KPLIB_o_militiaVehicles = [
    "COS_IRG_UAZ_3151_AGS30",
	"COS_IRG_UAZ_3151_Closed",
	"COS_IRG_UAZ_3151_DSHKM",
	"COS_IRG_UAZ_3151_SPG9"
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
KPLIB_o_armyVehicles = [
    "COS_IRG_UAZ_3151_AGS30",
	"COS_IRG_UAZ_3151_Closed",
	"COS_IRG_UAZ_3151_DSHKM",
	"COS_IRG_UAZ_3151_SPG9",
	"COS_IRG_ZSU23_4V",
	"COS_IRG_BTR_70",
	"COS_IRG_BMP_1",
	"COS_IRG_BMP_2",
	"COS_IRG_MTLB_PKT",
	"COS_IRG_BRDM2",
	"COS_IRG_BRDM2_9P148",
	"COS_IRG_FV4201_Chieftain",
	"COS_IRG_M60A1",
	"COS_IRG_T34_85M",
	"COS_IRG_T55A",
	"COS_IRG_T72B"
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
    "COS_IRG_UAZ_3151_AGS30",
	"COS_IRG_UAZ_3151_Closed",
	"COS_IRG_UAZ_3151_DSHKM",
	"COS_IRG_UAZ_3151_SPG9",
	"COS_IRG_MTLB_PKT",
	"COS_IRG_BRDM2_9P148",
	"COS_IRG_BRDM2"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
    "COS_IRG_UAZ_3151_AGS30",
	"COS_FSM_Praga_V3S_Transport_Closed",
	"COS_FSM_Praga_V3S_Transport_Open",
	"COS_IRG_UAZ_3151_Closed",
	"COS_IRG_UAZ_3151_DSHKM",
	"COS_IRG_UAZ_3151_SPG9",
	"COS_IRG_ZSU23_4V",
	"COS_IRG_BTR_70",
	"COS_IRG_BMP_1",
	"COS_IRG_BMP_2",
	"COS_IRG_MTLB_PKT",
	"COS_IRG_BRDM2",
	"COS_IRG_BRDM2_9P148",
	"COS_IRG_FV4201_Chieftain",
	"COS_IRG_M60A1",
	"COS_IRG_T34_85M",
	"COS_IRG_T55A",
	"COS_IRG_T72B",
	"COS_IRG_GAZ_66",
	"COS_IRG_MI_24P",
	"COS_IRG_MI_8T",
	"COS_IRG_BTR_70"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
    "COS_IRG_UAZ_3151_AGS30",
	"COS_IRG_UAZ_3151_Closed",
	"COS_IRG_UAZ_3151_DSHKM",
	"COS_IRG_UAZ_3151_SPG9",
	"COS_FSM_Praga_V3S_Transport_Closed",
	"COS_FSM_Praga_V3S_Transport_Open",
	"COS_IRG_MTLB_PKT",
	"COS_IRG_BRDM2_9P148",
	"COS_IRG_BRDM2",
	"COS_IRG_MI_24P",
	"COS_IRG_MI_8T"
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur. */
KPLIB_o_troopTransports = [
	"COS_FSM_Praga_V3S_Transport_Closed",
	"COS_FSM_Praga_V3S_Transport_Open",
	"COS_IRG_MI_24P",
	"COS_IRG_MI_8T",
	"COS_IRG_BTR_70"
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
    "COS_IRG_MI_24P",
	"COS_IRG_MI_8T"
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [
    "COS_IRG_MIG_21",
	"COS_IRG_MIG_29S",
	"COS_IRG_SU25SM"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_HMG = [
	"COS_IRG_KORD",
    "COS_IRG_PKM_Nest"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_GMG = [
    ""
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_AT = [
    ""
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_AA = [
    "COS_IRG_IGLA_9k38",
	"COS_IRG_ZU_23"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_MORTAR = [
    "COS_IRG_Mortar_82mm",
	"COS_IRG_D30"
];

// Enemy SAM turrets that will be spawned in the back country
KPLIB_o_turrets_SAM = [
    ["COS_IRG_IGLA_9k38"],
	["COS_IRG_ZU_23"],
	["COS_IRG_Scud"],
	["COS_IRG_D30"]
];