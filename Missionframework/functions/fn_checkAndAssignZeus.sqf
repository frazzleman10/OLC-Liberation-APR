params ["_player"];

if (isNull _player) exitWith {};

private _uid = getPlayerUID _player;
if (_uid in KPLIB_whitelist_zeus) then {
    if (isNil "KPLIB_curatorLogicGroup") then {
        KPLIB_curatorLogicGroup = createGroup sideLogic;
    };

    private _curator = KPLIB_curatorLogicGroup createUnit [
        "ModuleCurator_F",
        [0, 90, 90],
        [],
        5,
        "NONE"
    ];

    _curator setVariable ["name", profileName];
    _curator setVariable ["Addons", 3, true];
    _curator setVariable ["owner", _uid];
    _curator setVehicleVarName format ["gamemaster_%1", _uid];

    diag_log format [
        "Assigning Zeus to UID %1 (%2)",
        _uid,
        name _player
    ];

    _player assignCurator _curator;
};
