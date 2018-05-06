/*
	Author: MAXIMILI

	Description:
	Weapon Holster Action function. Executes on selected unit.

	Parameter(s):
		_this: OBJECT - unit to exec fnc on (Works fine with cfg Event Handlers)

	Returns:
	NOTHING
*/

/////////////////////
private["_getActionStatus"];
mxml_wh_cfgGetCurrentUser = _this;
/////////////////////
mxml_wh_HActionEx = {
	_getActionStatus = inputAction "User18";
	if (_getActionStatus>0) then {
		mxml_wh_cfgGetCurrentUser action ["SwitchWeapon", mxml_wh_cfgGetCurrentUser, mxml_wh_cfgGetCurrentUser, -1];
	};
};

waitUntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler ["KeyDown", "[] call mxml_wh_HActionEx"];