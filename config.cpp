class CfgPatches
{
	class weapon_holster_core
	{
		units[]={};
		weapons[]={};
		requiredAddons[]={};
		author[]=
		{
			"MAXIMILI"
		};
	};
};

class CfgFunctions
{
	class WpnHr
	{
		class Actions
		{
			class _weaponHolster_core {file = "WeaponHolster\fn\fn_weaponHolster_core.sqf";};
		};
	};
};

class CfgVehicles
{
	class Land;
	class Man: Land {};
	class CAManBase: Man
	{
		class EventHandlers
		{
			class MXML_WeaponHolsterOnUnit
			{
				init = "[] call wpnhr_fnc__weaponHolster_core;";
			};
		};
	};
};
