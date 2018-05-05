/*
	Author: MAXIMILI

	Description:
	Weapon Holster Action function. Executes on selected unit.

	Parameter(s):
		_unit: OBJECT - unit to exec fnc on

	Returns:
	NOTHING
*/

/////////////////////
private["_unit", "_keyPressed"];
_unit = _this select 0
/////////////////////

if !(hasinterface) exitwith {};
mxml_wh_keypcheck = {
	/* OLD TRY
	switch (_this) do {
		if (inputAction 'User18' > 0) then
		{
			_holster = mxml_wh_cur_unit action ['SwitchWeapon', mxml_wh_cur_unit, mxml_wh_cur_unit, 100];
		};
	};
	*/
	switch (_this) do
	{
		case 1:
		{
			_unit action ['SwitchWeapon', mxml_wh_cur_unit, mxml_wh_cur_unit, 100];
		};
		default {};
	};
};

waitUntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call mxml_wh_keypcheck";false;];

//_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "_unit = _this select 1; if (inputAction 'User18' > 0) then {_unit action ['SwitchWeapon', _unit, _unit, 100];}"]; //v1.X