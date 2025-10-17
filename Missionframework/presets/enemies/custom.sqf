/*
    File: custom.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-10-07
    Last Update: 2024-11-16
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        2011 ISIS

    Needed Mods:
        - 3CB Factions
		- RHSUSAF
		- RHSAFRF
		- RHSGREF
		- RHSSAF

    Optional Mods:
        - None
*/

// Enemy infantry classes
KPLIB_o_officer = "UK3CB_TKM_O_WAR";
KPLIB_o_squadLeader = "UK3CB_TKM_O_SL";
KPLIB_o_teamLeader = "UK3CB_TKM_O_TL";
KPLIB_o_sentry = "UK3CB_TKM_O_SPOT";
KPLIB_o_rifleman = "UK3CB_TKM_O_RIF_1";
KPLIB_o_riflemanLAT = "UK3CB_TKM_O_LAT";
KPLIB_o_grenadier = "UK3CB_TKM_O_GL";
KPLIB_o_machinegunner = "UK3CB_TKM_O_LMG";
KPLIB_o_heavyGunner = "UK3CB_TKM_O_MG";
KPLIB_o_marksman = "UK3CB_TKM_O_MK";
KPLIB_o_sharpshooter = "UK3CB_TKM_O_SPOT";
KPLIB_o_sniper = "UK3CB_TKM_O_SNI";
KPLIB_o_atSpecialist = "UK3CB_TKM_O_AT";
KPLIB_o_aaSpecialist = "UK3CB_TKM_O_AA";
KPLIB_o_medic = "UK3CB_TKM_O_MD";
KPLIB_o_engineer = "UK3CB_TKM_O_ENG";
KPLIB_o_paratrooper = "UK3CB_TKM_O_RIF_2";
KPLIB_o_crewman = "UK3CB_TKM_O_RIF_2";
KPLIB_o_pilot = "UK3CB_TKM_O_RIF_2";

// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "UK3CB_TKM_O_Pickup";
KPLIB_o_mrapArmed = "UK3CB_TKM_O_Pickup_DSHKM";
KPLIB_o_transportHeli = "";
KPLIB_o_transportTruck = "UK3CB_TKM_O_Ural_Open";
KPLIB_o_transportTruckAmmo = "UK3CB_TKM_O_Ural_Open";
KPLIB_o_fuelTruck = "UK3CB_TKM_O_Ural_Fuel";
KPLIB_o_ammoTruck = "UK3CB_TKM_O_Ural_Ammo";
KPLIB_o_fuelContainer = "B_Slingload_01_Fuel_F";
KPLIB_o_ammoContainer = "B_Slingload_01_Ammo_F";
KPLIB_o_flag = "Flag_TKA";

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "UK3CB_TKM_O_AA",
    "UK3CB_TKM_O_AA_ASST",
    "UK3CB_TKM_O_AT",
    "UK3CB_TKM_O_AT_ASST",
    "UK3CB_TKM_O_AR",
    "UK3CB_TKM_O_DEM",
    "UK3CB_TKM_O_ENG",
    "UK3CB_TKM_O_GL",
    "UK3CB_TKM_O_IED",
    "UK3CB_TKM_O_LAT",
    "UK3CB_TKM_O_LMG",
    "UK3CB_TKM_O_MG",
    "UK3CB_TKM_O_MG_ASST",
    "UK3CB_TKM_O_MK",
    "UK3CB_TKM_O_MD",
    "UK3CB_TKM_O_RIF_1",
    "UK3CB_TKM_O_RIF_2",
    "UK3CB_TKM_O_SL",
    "UK3CB_TKM_O_SNI",
    "UK3CB_TKM_O_SPOT",
    "UK3CB_TKM_O_TL",
    "UK3CB_TKM_O_WAR"
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
KPLIB_o_militiaVehicles = [
    "UK3CB_TKM_O_Hilux_GMG",
    "UK3CB_TKM_O_Hilux_Rocket_Arty",
    "UK3CB_TKM_O_Hilux_Dshkm",
    "UK3CB_TKM_O_Hilux_M2",
    "UK3CB_TKM_O_Hilux_Mortar",
    "UK3CB_TKM_O_Hilux_Open",
    "UK3CB_TKM_O_Hilux_Pkm",
    "UK3CB_TKM_O_Hilux_Rocket",
    "UK3CB_TKM_O_Hilux_Spg9",
    "UK3CB_TKM_O_Hilux_Zu23_Front",
    "UK3CB_TKM_O_Hilux_Zu23",
    "UK3CB_TKM_O_LR_Closed",
    "UK3CB_TKM_O_LR_AGS30",
    "UK3CB_TKM_O_LR_M2",
    "UK3CB_TKM_O_LR_Open",
    "UK3CB_TKM_O_LR_SPG9",
    "UK3CB_TKM_O_LR_SF_AGS30",
    "UK3CB_TKM_O_LR_SF_M2",
    "UK3CB_TKM_O_Pickup",
    "UK3CB_TKM_O_Pickup_DSHKM",
    "UK3CB_TKM_O_Pickup_M2",
    "UK3CB_TKM_O_UAZ_AGS30",
    "UK3CB_TKM_O_UAZ_Closed",
    "UK3CB_TKM_O_UAZ_Dshkm",
    "UK3CB_TKM_O_UAZ_Open",
    "UK3CB_TKM_O_UAZ_SPG9"
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
KPLIB_o_armyVehicles = [
    "UK3CB_TKM_O_Hilux_GMG",
    "UK3CB_TKM_O_Hilux_Rocket_Arty",
    "UK3CB_TKM_O_Hilux_Dshkm",
    "UK3CB_TKM_O_Hilux_M2",
    "UK3CB_TKM_O_Hilux_Mortar",
    "UK3CB_TKM_O_Hilux_Open",
    "UK3CB_TKM_O_Hilux_Pkm",
    "UK3CB_TKM_O_Hilux_Rocket",
    "UK3CB_TKM_O_Hilux_Spg9",
    "UK3CB_TKM_O_Hilux_Zu23_Front",
    "UK3CB_TKM_O_Hilux_Zu23",
    "UK3CB_TKM_O_LR_Closed",
    "UK3CB_TKM_O_LR_AGS30",
    "UK3CB_TKM_O_LR_M2",
    "UK3CB_TKM_O_LR_Open",
    "UK3CB_TKM_O_LR_SPG9",
    "UK3CB_TKM_O_LR_SF_AGS30",
    "UK3CB_TKM_O_LR_SF_M2",
    "UK3CB_TKM_O_Pickup",
    "UK3CB_TKM_O_Pickup_DSHKM",
    "UK3CB_TKM_O_Pickup_M2",
    "UK3CB_TKM_O_UAZ_AGS30",
    "UK3CB_TKM_O_UAZ_Closed",
    "UK3CB_TKM_O_UAZ_Dshkm",
    "UK3CB_TKM_O_UAZ_Open",
    "UK3CB_TKM_O_UAZ_SPG9",
    "UK3CB_TKM_O_BRDM2",
    "UK3CB_TKM_O_BRDM2_ATGM",
    "UK3CB_TKM_O_BRDM2_HQ",
    "UK3CB_TKM_O_BRDM2_UM",
    "UK3CB_TKM_O_MTLB_ZU23",
    "UK3CB_TKM_O_V3S_Zu23",
    "UK3CB_TKM_O_Ural_Zu23",
    "UK3CB_TKM_O_BMP1",
    "UK3CB_TKM_O_BTR40",
    "UK3CB_TKM_O_BTR40_MG",
    "UK3CB_TKM_O_BTR60",
    "UK3CB_TKM_O_MTLB_BMP",
    "UK3CB_TKM_O_MTLB_KPVT",
    "UK3CB_TKM_O_MTLB_PKT"
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
    "UK3CB_TKM_O_Hilux_Dshkm",
    "UK3CB_TKM_O_Hilux_M2",
    "UK3CB_TKM_O_Hilux_Open",
    "UK3CB_TKM_O_Hilux_Pkm",
    "UK3CB_TKM_O_Hilux_Spg9",
    "UK3CB_TKM_O_LR_Closed",
    "UK3CB_TKM_O_LR_M2",
    "UK3CB_TKM_O_LR_AGS30",
    "UK3CB_TKM_O_LR_Open",
    "UK3CB_TKM_O_LR_SPG9",
    "UK3CB_TKM_O_LR_SF_AGS30",
    "UK3CB_TKM_O_LR_SF_M2",
    "UK3CB_TKM_O_Pickup",
    "UK3CB_TKM_O_Pickup_DSHKM",
    "UK3CB_TKM_O_Pickup_M2"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
    "UK3CB_TKM_O_Hilux_GMG",
    "UK3CB_TKM_O_Hilux_Rocket_Arty",
    "UK3CB_TKM_O_Hilux_Dshkm",
    "UK3CB_TKM_O_Hilux_M2",
    "UK3CB_TKM_O_Hilux_Mortar",
    "UK3CB_TKM_O_Hilux_Open",
    "UK3CB_TKM_O_Hilux_Pkm",
    "UK3CB_TKM_O_Hilux_Rocket",
    "UK3CB_TKM_O_Hilux_Spg9",
    "UK3CB_TKM_O_Hilux_Zu23_Front",
    "UK3CB_TKM_O_Hilux_Zu23",
    "UK3CB_TKM_O_LR_Closed",
    "UK3CB_TKM_O_LR_AGS30",
    "UK3CB_TKM_O_LR_M2",
    "UK3CB_TKM_O_LR_Open",
    "UK3CB_TKM_O_LR_SPG9",
    "UK3CB_TKM_O_LR_SF_AGS30",
    "UK3CB_TKM_O_LR_SF_M2",
    "UK3CB_TKM_O_Pickup",
    "UK3CB_TKM_O_Pickup_DSHKM",
    "UK3CB_TKM_O_Pickup_M2",
    "UK3CB_TKM_O_UAZ_AGS30",
    "UK3CB_TKM_O_UAZ_Closed",
    "UK3CB_TKM_O_UAZ_Dshkm",
    "UK3CB_TKM_O_UAZ_Open",
    "UK3CB_TKM_O_UAZ_SPG9",
    "UK3CB_TKM_O_BRDM2",
    "UK3CB_TKM_O_BRDM2_ATGM",
    "UK3CB_TKM_O_BRDM2_HQ",
    "UK3CB_TKM_O_BRDM2_UM",
    "UK3CB_TKM_O_MTLB_ZU23",
    "UK3CB_TKM_O_V3S_Zu23",
    "UK3CB_TKM_O_Ural_Zu23",
    "UK3CB_TKM_O_BMP1",
    "UK3CB_TKM_O_BTR40",
    "UK3CB_TKM_O_BTR40_MG",
    "UK3CB_TKM_O_BTR60",
    "UK3CB_TKM_O_MTLB_BMP",
    "UK3CB_TKM_O_MTLB_KPVT",
    "UK3CB_TKM_O_MTLB_PKT",
	"UK3CB_TKM_O_T34",
    "UK3CB_TKM_O_T55"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
    "UK3CB_TKM_O_Hilux_GMG",
    "UK3CB_TKM_O_Hilux_Rocket_Arty",
    "UK3CB_TKM_O_Hilux_Dshkm",
    "UK3CB_TKM_O_Hilux_M2",
    "UK3CB_TKM_O_Hilux_Mortar",
    "UK3CB_TKM_O_Hilux_Open",
    "UK3CB_TKM_O_Hilux_Pkm",
    "UK3CB_TKM_O_Hilux_Rocket",
    "UK3CB_TKM_O_Hilux_Spg9",
    "UK3CB_TKM_O_Hilux_Zu23_Front",
    "UK3CB_TKM_O_Hilux_Zu23",
    "UK3CB_TKM_O_LR_Closed",
    "UK3CB_TKM_O_LR_AGS30",
    "UK3CB_TKM_O_LR_M2",
    "UK3CB_TKM_O_LR_Open",
    "UK3CB_TKM_O_LR_SPG9",
    "UK3CB_TKM_O_LR_SF_AGS30",
    "UK3CB_TKM_O_LR_SF_M2",
    "UK3CB_TKM_O_Pickup",
    "UK3CB_TKM_O_Pickup_DSHKM",
    "UK3CB_TKM_O_Pickup_M2",
    "UK3CB_TKM_O_UAZ_AGS30",
    "UK3CB_TKM_O_UAZ_Closed",
    "UK3CB_TKM_O_UAZ_Dshkm",
    "UK3CB_TKM_O_UAZ_Open",
    "UK3CB_TKM_O_UAZ_SPG9",
    "UK3CB_TKM_O_BRDM2",
    "UK3CB_TKM_O_BRDM2_ATGM",
    "UK3CB_TKM_O_BRDM2_HQ",
    "UK3CB_TKM_O_BRDM2_UM",
    "UK3CB_TKM_O_MTLB_ZU23",
    "UK3CB_TKM_O_V3S_Zu23",
    "UK3CB_TKM_O_Ural_Zu23",
    "UK3CB_TKM_O_BMP1",
    "UK3CB_TKM_O_BTR40",
    "UK3CB_TKM_O_BTR40_MG",
    "UK3CB_TKM_O_BTR60",
    "UK3CB_TKM_O_MTLB_BMP",
    "UK3CB_TKM_O_MTLB_KPVT",
    "UK3CB_TKM_O_MTLB_PKT"
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur. */
KPLIB_o_troopTransports = [
    "UK3CB_TKM_O_V3S_Closed",
    "UK3CB_TKM_O_V3S_Open",
    "UK3CB_TKM_O_Ural_Covered",
    "UK3CB_TKM_O_Ural_Open"
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
	""
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [
	""
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_HMG = [
    "UK3CB_TKM_O_DSHKM",
    "UK3CB_TKM_O_DSHkM_Mini_TriPod",
    "UK3CB_TKM_O_KORD",
    "UK3CB_TKM_O_KORD_high",
    "UK3CB_TKM_O_NSV",
    "UK3CB_TKM_O_PKM_High",
    "UK3CB_TKM_O_PKM_Low"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_GMG = [
    "UK3CB_TKM_O_AGS"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_AT = [
    "UK3CB_TKM_O_SPG9"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_AA = [
    "UK3CB_TKM_O_Igla_AA_pod",
    "UK3CB_TKM_O_ZU23"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_MORTAR = [
    "UK3CB_TKM_O_D30",
    "UK3CB_TKM_O_2b14_82mm"
];

// Enemy SAM turrets that will be spawned in the back country
KPLIB_o_turrets_SAM = [
    ["UK3CB_TKM_O_Igla_AA_pod"],
    ["UK3CB_TKM_O_ZU23"]
];