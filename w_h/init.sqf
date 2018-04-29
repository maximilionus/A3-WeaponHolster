if (isDedicated) exitWith {};
if !(hasinterface) exitwith {};
private["_keyDown"];
[] spawn {
	waitUntil {!isNull player && player == player};
	waitUntil{!isNil "BIS_fnc_init"};
	waitUntil {!(IsNull (findDisplay 46))};

	private["_i", "_keyDown"];
   	_keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (inputAction 'User18' > 0) then {player action ['SwitchWeapon', player, player, 100];}"];
};
