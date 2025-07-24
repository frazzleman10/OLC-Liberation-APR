params["_player","_didJIP"];

if (getPlayerUID in KPLIB_whitelist_zeus) then {
    if(isNil "curatorLogicGroup") then {KPLIB_curatorLogicGroup = createGroup sideLogic };
    curator = KPLIB_curatorLogicGroup createunit ["ModuleCurator_F", [0, 90, 90], [], 5, "NONE"];
    _curator setvariable ["name", profileName];
    _curator setvariable ["Addons", 3, true];// 3: allow all addons with proper use of CfgPatches
    curator setvariable ["owner", getPlayerUID];
    _curator setVehicleVarName ("gamemaster_" + getPlayerUID);
    diag_log format ["Creating Zeus Curator Module - SteamID: %1, Name: %1", getPlayerUID, profileName];
    _player assignCurator _curator;
}