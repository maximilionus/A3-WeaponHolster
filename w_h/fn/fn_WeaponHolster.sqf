/*
	Author: MAXIMILI

	Description:
	Weapon Holster Action function. Executes on selected unit.

	Returns:
	NOTHING
*/

_wpnHr = [] spawn {
waitUntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler ["KeyDown", "private ['_getActionStatus', '_unitIn']; _unitIn = player; _getActionStatus = inputAction 'User18'; if (_getActionStatus > 0) then {_unitIn action ['SwitchWeapon', _unitIn, _unitIn, -1];};"];
};

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
