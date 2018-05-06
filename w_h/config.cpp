class CfgPatches
{
	class weapon_holster_maximili
	{
		units[]={};
		weapons[]={};
		requiredAddons[]={"A3_Characters_F"};
		author[]=
		{
			"MAXIMILI"
		};
	};
};

class CfgFunctions
{
	class MXML
	{
		tag = "MXML";
		class Actions
		{
			class WeaponHolster
			{
				file = "WeaponHolster\w_h\fnc\fn_WeaponHolster.sqf";
			};
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
				init = "[this] spawn MXML_fnc_WeaponHolster";
			};
		};
	};
};
