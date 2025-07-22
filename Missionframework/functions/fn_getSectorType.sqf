/*
    File: fn_getSectorType.sqf
    Author: Phantom
    Date: 2025-07-22
    Last Update: 2025-07-22
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Gets the sector name and checks for the requirement of players to activate the sector

    Parameter(s):
        _sector    - Sector from KPLIB_sectors_all

    Returns:
        which minimum players required [NUMBER]
        city factory radio tower minimum 2 capital and miilitary minimum 4
*/

params [
    "_sector"
];

switch (true) do {
    case (_sector in KPLIB_sectors_city):     { _minPlayers = 2; };
    case (_sector in KPLIB_sectors_tower):    { _minPlayers = 2; };
    case (_sector in KPLIB_sectors_factory):  { _minPlayers = 2; };
    case (_sector in KPLIB_sectors_military): { _minPlayers = 4; };
    case (_sector in KPLIB_sectors_capital):  { _minPlayers = 4; };
};

_minPlayers;