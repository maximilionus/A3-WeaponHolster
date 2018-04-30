/*
	Author: MAXIMILI

	Description:
	Weapon Holster Action

	Parameter(s):
		_unit: OBJECT - unit to exec fnc on

	Returns:
	NOTHING
*/

/////////////////////
publicVariable "mxml_weaponholsterpress";
publicVariable "mxml_wh_cur_unit";
private["_keyDown"];
mxml_wh_cur_unit = _this select 0;
/////////////////////

//if !(hasinterface) exitwith {};

mxml_weaponholsterpress = {
	switch (_this) do {
	if (inputAction 'User18' > 0) then
		{
		nul = mxml_wh_cur_unit action ['SwitchWeapon', mxml_wh_cur_unit, mxml_wh_cur_unit, 100];
		};
	};
};

waitUntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call mxml_weaponholsterpress;false;"];

//_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "_unit = _this select 1; if (inputAction 'User18' > 0) then {_unit action ['SwitchWeapon', _unit, _unit, 100];}"]; //v1.X

