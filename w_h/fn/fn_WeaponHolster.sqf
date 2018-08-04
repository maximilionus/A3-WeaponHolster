/*
	Author: MAXIMILI

	Description:
	Weapon Holster Action function. Executes on selected unit.

	Parameter(s):
		_this: OBJECT - unit to exec fnc on (Works fine with cfg Event Handlers)

	Returns:
	NOTHING
*/

call compile format ["(findDisplay 46) displayAddEventHandler ['KeyDown', '['%1'] call wpnhr_fnc__WHCalled']", _this];

/*
call compile format ["addMissionEventHandler ['Draw3D', {
drawIcon3D ['', [1,0,0,1], getPos %1, 0, 0, 0, '', 1, 0.05, 'PuristaMedium'];
}];",_unit];
*/
