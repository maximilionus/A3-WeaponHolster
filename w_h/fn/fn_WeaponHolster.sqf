/*
	Author: MAXIMILI

	Description:
	Weapon Holster Action function. Executes on selected unit.

	Returns:
	NOTHING
*/


systemchat str _this; //Debug

private _whact = format ["(findDisplay 46) displayAddEventHandler ['KeyDown', '[%1] call WpnHr_fnc__WHCalled']", _this];

systemchat format ["_whact = %1 \n", _whact];

compile _whact;

/*
/////////////////////
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
*/
