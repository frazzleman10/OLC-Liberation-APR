params ["_typeOfObject"];
// Create main action (Create Supply) to object
private _mainAction = ["supplyMain","Resupply","",{},{true}] call ace_interact_menu_fnc_createAction;
// Add main action to object
[_typeOfObject, 0, ["ACE_MainActions"], _mainAction] call ace_interact_menu_fnc_addActionToClass;


//********************************************************

// Name to action
private _nameOfAction = "Basic Medical Crate";
// Type of create
private _typeOfCrate = "ACM_MedicalSupplyCrate_Basic";
// Statement to action	
_code = {
	params ["_target","_caller","_actionParams"];
	_actionParams params ["_box"];
	_supplyCrate addItemCargoGlobal ["ACE_WaterBottle", 20];
	// Position to spawn
	private _pos = getPosATL _target;
	private _supplyCrate = _box createVehicle _pos;
	[_caller, _supplyCrate] call ace_dragging_fnc_startCarry;
};
// Condition to action
_condition = {
	true;
};
// Create sub-action under object's mainaction
private _subAction = ["medicalSupport",_nameOfAction,"",_code,_condition,{},[_typeOfCrate]] call ace_interact_menu_fnc_createAction;
// Add sub-action to object
[_typeOfObject, 0, ["ACE_MainActions", "supplyMain"], _subAction] call ace_interact_menu_fnc_addActionToClass;

_nameOfAction = "Advanced Medical Crate";
_typeOfCrate = "ACM_MedicalSupplyCrate_Advanced";
_code = {
	params ["_target","_caller","_actionParams"];
	_actionParams params ["_box"];
	// Position to spawn
	private _pos = getPosATL _target;
	private _supplyCrate = _box createVehicle  _pos;
	[_caller, _supplyCrate] call ace_dragging_fnc_startCarry;
};
_condition = {
	true;
};
_subAction = ["medicalSupport",_nameOfAction,"",_code,_condition,{},[_typeOfCrate]] call ace_interact_menu_fnc_createAction;
[_typeOfObject, 0, ["ACE_MainActions", "supplyMain"], _subAction] call ace_interact_menu_fnc_addActionToClass;

_nameOfAction = "Humanitarian Aid Crate";
_typeOfCrate = "ACE_Box_Misc";
_code = {
	params ["_target","_caller","_actionParams"];
	_actionParams params ["_box"];
	// Position to spawn
	private _pos = getPosATL _target;
	private _supplyCrate = _box createVehicle  _pos;
	clearWeaponCargoGlobal _supplyCrate;
	clearMagazineCargoGlobal _supplyCrate;
	clearItemCargoGlobal _supplyCrate;
	clearBackpackCargoGlobal _supplyCrate;
	_supplyCrate addItemCargoGlobal ["ACE_Humanitarian_Ration", 20];
	_supplyCrate addItemCargoGlobal ["ACE_WaterBottle", 20];
	[_caller, _supplyCrate] call ace_dragging_fnc_startCarry;
};
_condition = {
	true;
};
_subAction = ["medicalSupport",_nameOfAction,"",_code,_condition,{},[_typeOfCrate]] call ace_interact_menu_fnc_createAction;
[_typeOfObject, 0, ["ACE_MainActions", "supplyMain"], _subAction] call ace_interact_menu_fnc_addActionToClass;



_nameOfAction = "Empty Crate";
_typeOfCrate = "Box_NATO_Equip_F";
_code = {
	params ["_target","_caller","_actionParams"];
	_actionParams params ["_box"];
	// Position to spawn
	private _pos = getPosATL _target;
	private _supplyCrate = _box createVehicle  _pos;
	clearWeaponCargoGlobal _supplyCrate;
	clearMagazineCargoGlobal _supplyCrate;
	clearItemCargoGlobal _supplyCrate;
	clearBackpackCargoGlobal _supplyCrate;
	[_caller, _supplyCrate] call ace_dragging_fnc_startCarry;
};
_condition = {
	true;
};
_subAction = ["medicalSupport",_nameOfAction,"",_code,_condition,{},[_typeOfCrate]] call ace_interact_menu_fnc_createAction;
[_typeOfObject, 0, ["ACE_MainActions", "supplyMain"], _subAction] call ace_interact_menu_fnc_addActionToClass;

_nameOfAction = "General Resupply Crate";
_typeOfCrate = "Box_NATO_Equip_F";
_code = {
	params ["_target","_caller","_actionParams"];
	_actionParams params ["_box"];
	// Position to spawn
	private _pos = getPosATL _target;
	private _supplyCrate = _box createVehicle  _pos;
	clearWeaponCargoGlobal _supplyCrate;
	clearMagazineCargoGlobal _supplyCrate;
	clearItemCargoGlobal _supplyCrate;
	clearBackpackCargoGlobal _supplyCrate;
	_supplyCrate addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20];
	_supplyCrate addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", 20];
	_supplyCrate addItemCargoGlobal ["rhsusf_mag_15Rnd_9x19_FMJ", 10];
	_supplyCrate addItemCargoGlobal ["rhs_mag_an_m8hc", 20];
	_supplyCrate addItemCargoGlobal ["rhs_mag_m67", 20];
	_supplyCrate addItemCargoGlobal ["ACE_EntrenchingTool", 10];
	_supplyCrate addItemCargoGlobal ["ACE_EarPlugs", 10];
	_supplyCrate addItemCargoGlobal ["rhsusf_ANPVS_14", 10];
	_supplyCrate addItemCargoGlobal ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 20];
	_supplyCrate addItemCargoGlobal ["rhs_weap_M136_hedp", 20];
	_supplyCrate addItemCargoGlobal ["rhs_mag_M433_HEDP", 10];
	_supplyCrate addItemCargoGlobal ["rhs_mag_m714_White", 20];
	_supplyCrate addItemCargoGlobal ["rhs_mag_M583A1_white", 10];
	_supplyCrate addItemCargoGlobal ["ACE_SpareBarrel", 20];
	_supplyCrate addItemCargoGlobal ["ACE_WaterBottle", 20];
	_supplyCrate addItemCargoGlobal ["ToolKit", 20];
	[_caller, _supplyCrate] call ace_dragging_fnc_startCarry;
};
_condition = {
	true;
};
_subAction = ["medicalSupport",_nameOfAction,"",_code,_condition,{},[_typeOfCrate]] call ace_interact_menu_fnc_createAction;
[_typeOfObject, 0, ["ACE_MainActions", "supplyMain"], _subAction] call ace_interact_menu_fnc_addActionToClass;

_nameOfAction = "Weapons Resupply Crate";
_typeOfCrate = "Box_NATO_Equip_F";
_code = {
	params ["_target","_caller","_actionParams"];
	_actionParams params ["_box"];
	// Position to spawn
	private _pos = getPosATL _target;
	private _supplyCrate = _box createVehicle  _pos;
	clearWeaponCargoGlobal _supplyCrate;
	clearMagazineCargoGlobal _supplyCrate;
	clearItemCargoGlobal _supplyCrate;
	clearBackpackCargoGlobal _supplyCrate;
	_supplyCrate addItemCargoGlobal ["ACE_WaterBottle", 20];
	_supplyCrate addItemCargoGlobal ["ToolKit", 20];
	_supplyCrate addItemCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer", 20];
	_supplyCrate addItemCargoGlobal ["rhsusf_100Rnd_762x51", 20];
	_supplyCrate addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10];
	_supplyCrate addItemCargoGlobal ["rhsusf_mag_15Rnd_9x19_FMJ", 10];
	_supplyCrate addItemCargoGlobal ["rhs_mag_an_m8hc", 20];
	_supplyCrate addItemCargoGlobal ["rhs_mag_m67", 20];
	_supplyCrate addItemCargoGlobal ["rhs_fgm148_magazine_AT", 10];
	_supplyCrate addItemCargoGlobal ["rhs_weap_M136_hedp", 20];
	_supplyCrate addItemCargoGlobal ["ACE_SpareBarrel", 20];
	[_caller, _supplyCrate] call ace_dragging_fnc_startCarry;
};
_condition = {
	true;
};
_subAction = ["medicalSupport",_nameOfAction,"",_code,_condition,{},[_typeOfCrate]] call ace_interact_menu_fnc_createAction;
[_typeOfObject, 0, ["ACE_MainActions", "supplyMain"], _subAction] call ace_interact_menu_fnc_addActionToClass;