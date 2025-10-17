// ---------------------------------------------------------- Variabes/classification of equipaments to be used for the roles
// Weapons
_rifles = [
];

_rifles_grenadier = [
];

_lmg = [
];

_hmg = [
];

_pistols = [
];

_ace_metal_detector = [
];

//Bazookas
_launchers_HAT = [
];

_launchers_LAT = [
];

_launchers_AA = [
];

// Magazines
_mag_common = [
];

_mag_rifle = [
];

_mag_grenadier = [
];

_mag_lmg = [
];

_mag_hmg = [
];

_mag_launcher_at = [
];

_mag_launcher_aa = [
];

_mag_pistol = [
];

// Grenades & explosives
_grenades = [
];

_grenades_2 = [
];

_explosives = [
];

// Weapons attachment
_rifles_optics = [
];

_mg_optics = [
];

_at_optics = [
];

_rail_attach = [
];

_muzzle_attach = [
];

_rifles_grip = [
];

_rifles_bipod = [
];

// Uniforms, Vests, helmets, backpacks, facewears
_uniforms = [
];

_uniforms_jetpilot = [
];

_vests = [
];

_vests_pilot = [
];

_vests_crewman = [
];

_helmets = [
];

_pilot_helmets = [
];

_jetpilot_hemlets = [
];

_crewman_helmets = [
];

_caps = [
];

_backpacks = [
];

_empty = [
];

_backpacks_radio = [
];

_facewears = [
];

// Nightvision
_nvgs = [
];

// Binoculars
_common_binos = [
];

_laser_binos = [
];

_camera = [
];

// Common tools & medic items
_ace_common_tools = [
];

_ace_art_tools = [
];

_acre_items = [
];

_ace_eng_tools = [
];

_ace_common_medical_items = [
];

_ace_medic_items = [
   "ACM_IV_14g",
   "ACM_IV_16g",
   "ACM_ACCUVAC",
   "ACM_Vial_Adenosine",
   "ACM_Vial_Amiodarone",
   "ACM_AmmoniaInhalant",
   "ACM_Autoinjector_ATNA",
   "ACM_Vial_Atropine",
   "ACM_AED",
   "ACE_fieldDressing",
   "ACE_elasticBandage",
   "ACE_packingBandage",
   "ACE_quikclot",
   "ACM_BVM",
   "ACM_BloodBag_A_1000",
   "ACM_BloodBag_A_250",
   "ACM_BloodBag_A_500",
   "ACM_BloodBag_AN_1000",
   "ACM_BloodBag_AN_500",
   "ACM_BloodBag_AN_250",
   "ACM_BloodBag_AB_1000",
   "ACM_BloodBag_AB_250",
   "ACM_BloodBag_AB_500",
   "ACM_BloodBag_ABN_1000",
   "ACM_BloodBag_ABN_250",
   "ACM_BloodBag_B_1000",
   "ACM_BloodBag_ABN_500",
   "ACM_BloodBag_B_500",
   "ACM_BloodBag_B_250",
   "ACM_BloodBag_BN_1000",
   "ACM_BloodBag_BN_250",
   "ACM_BloodBag_BN_500",
   "ACM_BloodBag_O_1000",
   "ACM_BloodBag_O_500",
   "ACM_BloodBag_O_250",
   "ACM_BloodBag_ON_250",
   "ACM_BloodBag_ON_1000",
   "ACE_bodyBag",
   "ACM_BloodBag_ON_500",
   "ACE_bodyBag_blue",
   "ACE_bodyBag_white",
   "ACM_Vial_CalciumChloride",
   "ACM_ChestSeal",
   "ACM_ChestTubeKit",
   "ACM_CricKit",
   "ACM_ElasticWrap",
   "ACM_SuctionBag",
   "ACM_EmergencyTraumaDressing",
   "ACE_epinephrine",
   "ACM_Vial_Epinephrine",
   "ACM_Vial_Ertapenem",
   "ACM_Vial_Esmolol",
   "ACM_IO_EZ",
   "ACM_IO_FAST",
   "ACM_Lozenge_Fentanyl",
   "ACM_Vial_Fentanyl",
   "ACM_FieldBloodTransfusionKit_250",
   "ACM_FieldBloodTransfusionKit_500",
   "ACM_GasMaskFilter",
   "ACM_GuedelTube",
   "ACM_IGel",
   "ACM_Vial_Ketamine",
   "ACM_Vial_Lidocaine",
   "ACM_Autoinjector_Midazolam",
   "ACE_morphine",
   "ACM_Vial_Morphine",
   "ACM_Spray_Naloxone",
   "ACM_NCDKit",
   "ACM_NPA",
   "ACM_Vial_Ondansetron",
   "ACM_Paracetamol",
   "ACM_Inhaler_Penthrox",
   "ACE_plasmaIV",
   "ACE_plasmaIV_250",
   "ACE_plasmaIV_500",
   "ACM_PocketBVM",
   "ACM_OxygenTank_425",
   "ACM_PressureBandage",
   "ACM_PressureCuff",
   "ACM_PulseOximeter",
   "ACE_salineIV",
   "ACE_salineIV_250",
   "ACE_salineIV_500",
   "ACM_SAMSplint",
   "ACM_Stethoscope",
   "ACE_suture",
   "ACE_surgicalKit",
   "vtx_stretcher_item",
   "ACM_Syringe_10",
   "ACM_Syringe_1",
   "ACM_Syringe_3",
   "ACM_Syringe_5",
   "ACM_ThoracostomyKit",
   "ACE_tourniquet",
   "ACM_Vial_TXA",
   "ACE_personalAidKit"
];

// Items & Communication
_common_items = [
];

_radio = [
];

_radio2 = [
];

_uav_terminal = [
];


// Define roles classnames here
// For this to work, you will need to change the blufor characters in the editor to match these classnames below
// Make any chances you want here, just make sure you register them in the switch do command below (after "case")

// Call the arsenal if the right class is provided
switch (_classRole) do {
        case _placeholder : {
        // Put all weapons here
        KPLIB_arsenalWeapons = ();
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = ();
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = ();
        // Put only backpacks here
        KPLIB_arsenalBackpacks = ();
        };
        
        case default {	
        ["This classname doesn't match with a configurated classname from roles_arsenal_config.sqf"] call bis_fnc_error
        }
};

private _crawled = [] call KPLIB_fnc_crawlAllItems;

if (KPLIB_arsenalWeapons isEqualTo []) then {KPLIB_arsenalWeapons = (_crawled select 0) select {!(_x in KPLIB_arsenalBlacklist)};};
[missionNamespace, KPLIB_arsenalWeapons] call BIS_fnc_addVirtualWeaponCargo;
KPLIB_arsenalAllowed append KPLIB_arsenalWeapons;

if (KPLIB_arsenalMagazines isEqualTo []) then {KPLIB_arsenalMagazines = (_crawled select 1) select {!(_x in KPLIB_arsenalBlacklist)};};
[missionNamespace, KPLIB_arsenalMagazines] call BIS_fnc_addVirtualMagazineCargo;
KPLIB_arsenalAllowed append KPLIB_arsenalMagazines;

if (KPLIB_arsenalItems isEqualTo []) then {KPLIB_arsenalItems = (_crawled select 2) select {!(_x in KPLIB_arsenalBlacklist)};};
[missionNamespace, KPLIB_arsenalItems] call BIS_fnc_addVirtualItemCargo;
KPLIB_arsenalAllowed append KPLIB_arsenalItems;

if (KPLIB_arsenalBackpacks isEqualTo []) then {KPLIB_arsenalBackpacks = (_crawled select 3) select {!(_x in KPLIB_arsenalBlacklist)};};
[missionNamespace, KPLIB_arsenalBackpacks] call BIS_fnc_addVirtualBackpackCargo;
KPLIB_arsenalAllowed append KPLIB_arsenalBackpacks;