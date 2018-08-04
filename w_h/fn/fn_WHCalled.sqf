systemchat "function is alive!";

private ["_getActionStatus", "_unitIn"];
_unitIn = _this select 0;

_getActionStatus = inputAction "User18";
if (_getActionStatus > 0) then {
  ///
  systemchat format ["mxml_wh_cfgGetCurrentUser equals to: %1", mxml_wh_cfgGetCurrentUser];
  systemchat format ["_unitIn variable equals to: %1", _unitIn];
  ///
  _unitIn action ["SwitchWeapon", _unitIn, _unitIn, -1];
};
