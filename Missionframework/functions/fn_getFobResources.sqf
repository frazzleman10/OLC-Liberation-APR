/*
    File: fn_getFobResources.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-05-08
    Last Update: 2023-03-18
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Gets the FOB resource data in format [<POSITION>, <SUPPLIES>, <AMMO>, <FUEL>, <HAS_AIR_BUILD>, <HAS_REC_WORKSHOP>].

    Parameter(s):
        _fob - Position of FOB to get resources of [POSITION, defaults to [0, 0, 0]]

    Returns:
        FOB resource data [ARRAY]
*/

#define NO_RESULT [[0, 0, 0], 0, 0, 0, false, false, false]

params [
    ["_fob", [0, 0, 0], [[]], [2, 3]]
];

private _index = KPLIB_fob_resources findIf {(_x select 0) isEqualTo _fob};
if (_index isEqualTo -1) then {
    private _searchRange = KPLIB_range_fob;
    if (!(isNil "startbase") && {(_fob distance2D (getPosATL startbase)) < 2}) then {
        _searchRange = KPLIB_range_startbaseBuild;
    };
    private _nearby = KPLIB_fob_resources select {((_x select 0) distance2D _fob) < _searchRange};
    if !(_nearby isEqualTo []) then {
        _nearby = _nearby apply {[((_x select 0) distance2D _fob), _x]};
        _nearby sort true;
        (_nearby select 0) select 1
    } else {
        NO_RESULT
    };
} else {
    KPLIB_fob_resources select _index
};
