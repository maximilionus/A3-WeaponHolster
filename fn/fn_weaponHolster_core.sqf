_wpnHrInit = [] spawn {
	waitUntil {!(IsNull (findDisplay 46))};
	waituntil {!isNull player};
	wpnhrEH_press = 0;
	(findDisplay 46) displayAddEventHandler ["KeyDown", "if (((inputAction 'User18') > 0) && (wpnhrEH_press == 0)) then {wpnhrEH_press = 1; _unit = missionNamespace getVariable ['bis_fnc_moduleRemoteControl_unit', player]; _unit action ['SwitchWeapon', _unit, _unit, -1];};"];
	(findDisplay 46) displayAddEventHandler ["KeyUp", "if (((inputAction 'User18') == 0) && (wpnhrEH_press == 1)) then {wpnhrEH_press = 0};"];
};