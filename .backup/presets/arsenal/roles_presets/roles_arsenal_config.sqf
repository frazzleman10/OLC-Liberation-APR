/*
    File: roles_arsenal_config.sqf
    Author: PIG13BR (https://github.com/PiG13BR)
    Date: 26/07/2024
    Updated: 14/07/2025

    Description:
        Set up your arsenal inventory based on role selection in this file.
        Make any changes you want here, just don't change the name of variables with KPLIB tags.
    
    Parameter(s):
        _className - classname of the player's entity [STRING, defaults as ""]

    Returns:
        -
*/

params["_classRole"];

[] call compile preprocessFileLineNumbers "presets\arsenal\roles_presets\presets\iraq.sqf";


// Define roles classnames here
// For this to work, you will need to change the blufor characters in the editor to match these classnames below
// Make any chances you want here, just make sure you register them in the switch do command below (after "case")
_platoon = "rhsusf_army_ocp_officer";
_rto = "B_W_RadioOperator_F";
_med = "rhsusf_army_ocp_medic";
_jtac = "rhsusf_army_ocp_jfo";
_squadlead = "rhsusf_army_ocp_squadleader";
_teamlead = "rhsusf_army_ocp_teamleader";
_autorifleman = "rhsusf_army_ocp_autorifleman";
_grenadier = "rhsusf_army_ocp_grenadier";
_riflemanat = "rhsusf_army_ocp_riflemanat";
_mg = "rhsusf_army_ocp_machinegunner";
_mgasst = "rhsusf_army_ocp_machinegunnera";
_hat = "rhsusf_army_ocp_javelin";
_hatasst = "rhsusf_army_ocp_javelin_assistant";
_mortarman = "rhsusf_army_ocp_riflemanl";
_crewman = "rhsusf_army_ocp_combatcrewman";
_engineer = "rhsusf_army_ocp_engineer";
_helipilot = "rhsusf_army_ocp_helipilot";
_jetpilot = "rhsusf_airforce_jetpilot";
_journalist = "B_Survivor_F";

// Call the arsenal if the right class is provided
switch (_classRole) do {
        case _platoon : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles + _pistols);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _mag_pistol + _grenades_2);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rifles_optics + _rail_attach + _muzzle_attach + _rifles_grip + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _common_binos + _ace_common_tools + _ace_common_medical_items + _common_items + _radio + _uav_terminal);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks_radio + _backpacks);
        };
        case _rto : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles + _pistols);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _mag_pistol + _grenades_2);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _muzzle_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _common_binos + _ace_common_tools + _ace_common_medical_items + _common_items + _radio + _acre_items);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks_radio);
        };
        case _med : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles + _pistols);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _mag_pistol + _grenades_2);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _muzzle_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _common_binos + _ace_common_tools + _ace_common_medical_items + _common_items + _ace_medic_items);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks);
        };
        case _jtac : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles + _pistols + _rifles_grenadier);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _mag_pistol + _grenades_2 + _mag_grenadier);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _muzzle_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _common_binos + _ace_common_tools + _ace_common_medical_items + _common_items + _radio + _acre_items + _rifles_optics + _rifles_grip + _laser_binos + _uav_terminal);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks_radio);
        };
        case _squadlead : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles + _pistols);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _mag_pistol + _grenades_2);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _muzzle_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _common_binos + _ace_common_tools + _ace_common_medical_items + _common_items + _radio + _rifles_optics + _rifles_grip);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks_radio);
        };
        case _teamlead : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles + _rifles_grenadier);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _grenades_2 + _mag_grenadier);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _muzzle_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _common_binos + _ace_common_tools + _ace_common_medical_items + _common_items);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks);
        };
        case _autorifleman : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_lmg);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_lmg + _grenades + _grenades_2);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _ace_common_tools + _ace_common_medical_items + _common_items);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks);
        };
        case _grenadier : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles_grenadier);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_grenadier + _grenades + _grenades_2 + _mag_rifle);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _ace_common_tools + _ace_common_medical_items + _common_items);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks);
        };
        case _riflemanat : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles + _launchers_LAT);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _grenades_2);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _ace_common_tools + _ace_common_medical_items + _common_items);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks);
        };
        case _mg : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_hmg + _pistols);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_hmg + _grenades + _grenades_2 + _mag_pistol);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _ace_common_tools + _ace_common_medical_items + _common_items);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks);
        };
        case _mgasst : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _grenades_2 + _mag_hmg);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _ace_common_tools + _ace_common_medical_items + _common_items);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks);
        };
        case _hat : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles + _launchers_HAT);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _grenades_2 + _mag_launcher_at);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _ace_common_tools + _ace_common_medical_items + _common_items);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks);
        };
        case _hatasst : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _grenades_2 + _mag_launcher_at);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _ace_common_tools + _ace_common_medical_items + _common_items);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks);
        };
        case _mortarman : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _grenades_2);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _ace_common_tools + _ace_common_medical_items + _common_items + _ace_art_tools);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks);
        };
        case _crewman : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _grenades_2);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _uniforms + _vests_crewman + _crewman_helmets + _caps + _facewears + _nvgs + _ace_common_tools + _ace_common_medical_items + _common_items);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_empty);
        };
        case _engineer : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades + _grenades_2);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _uniforms + _vests + _helmets + _caps + _facewears + _nvgs + _ace_common_tools + _ace_common_medical_items + _common_items + _ace_eng_tools);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_backpacks);
        };
        case _helipilot : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles + _pistols);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades_2 + _mag_pistol);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _uniforms + _vests_pilot + _pilot_helmets + _caps + _facewears + _nvgs + _ace_common_tools + _ace_common_medical_items + _common_items);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_empty);
        };
        case _jetpilot : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_rifles + _pistols);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_mag_common + _mag_rifle + _grenades_2 + _mag_pistol);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_rail_attach + _uniforms_jetpilot + _jetpilot_helmets + _caps + _facewears + _nvgs + _ace_common_tools + _ace_common_medical_items + _common_items + _vests_pilot);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_empty);
        };
        case _journalist : {
        // Put all weapons here
        KPLIB_arsenalWeapons = (_empty);
        // Put all Magazines, and throwable items such as grenades
        KPLIB_arsenalMagazines = (_empty);
        // Put here uniforms, vests, facemasks, nvgs, binoculares, medical items, tool items, attachments...
        KPLIB_arsenalItems = (_common_items + _journalist_uniform + _journalist_helmet + _journalist_vest);
        // Put only backpacks here
        KPLIB_arsenalBackpacks = (_empty);
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