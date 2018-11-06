systemchat "function is alive!";

private ["_getActionStatus", "_unitIn"];
_unitIn = _this select 0;

_getActionStatus = inputAction "User18";
if (_getActionStatus > 0) then {
  _unitIn action ["SwitchWeapon", _unitIn, _unitIn, -1];
};
