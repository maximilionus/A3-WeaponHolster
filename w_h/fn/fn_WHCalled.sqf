_whUnit = _this select 0;

getActionStatus = inputAction "User18";
if (_getActionStatus > 0) then {
  _whUnit action ["SwitchWeapon", _whUnit, _whUnit, -1];
};
