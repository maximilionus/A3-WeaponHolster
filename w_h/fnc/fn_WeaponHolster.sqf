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
private["_unit", "_getActionStatus"];
_unit = _this select 0;
/////////////////////
//if !(hasinterface) exitwith {};
mxml_wh_HActionEx = {
	/* OLD TRY
	switch (_this) do {
		if (inputAction 'User18' > 0) then
		{
			_holster = mxml_wh_cur_unit action ['SwitchWeapon', mxml_wh_cur_unit, mxml_wh_cur_unit, 100];
		};
	};
	*/
	_getActionStatus = inputAction "User18";
	if (_getActionStatus>0) then {
		hintSilent "here we are, son"; //Debug message
		_unit action ['SwitchWeapon', _unit, _unit, 100];
	};
	/*USE WITH SWITCH
	switch (_getActionStatus) do
	{
		case 0: {};
		default
		{
			_unit action ['SwitchWeapon', _unit, _unit, 100];
		};
	};
	*/
}; //Check key 18 status and execute holster action if _getActionStatus > 0

//_unitCallFn =_unit call mxml_wh_HActionEx;
waitUntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler ["KeyDown", "[] call mxml_wh_HActionEx"];

//_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "_unit = _this select 1; if (inputAction 'User18' > 0) then {_unit action ['SwitchWeapon', _unit, _unit, 100];}"]; //v1.X