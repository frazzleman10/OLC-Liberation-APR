/*
    File: custom.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-10-07
    Last Update: 2020-05-25
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Custom (default FIA) resistance preset.

    Needed Mods:
        - None

    Optional Mods:
        - None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KPLIB_r_units = [
];

// Armed vehicles
KPLIB_r_vehicles = [
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KPLIB_r_weapons_1 = [
];

KPLIB_r_weapons_2 = [
];

KPLIB_r_weapons_3 = [
];

// Uniforms
KPLIB_r_uniforms_1 = [
];

KPLIB_r_uniforms_2 = [
];

KPLIB_r_uniforms_3 = [
];

// Vests
KPLIB_r_vests_1 = [
];

KPLIB_r_vests_2 = [
];

KPLIB_r_vests_3 = [
];

// Headgear
KPLIB_r_headgear_1 = [
];

KPLIB_r_headgear_2 = [
];

KPLIB_r_headgear_3 = [
];

// Facegear. Applies for tier 2 and 3.
KPLIB_r_facegear = [
];
