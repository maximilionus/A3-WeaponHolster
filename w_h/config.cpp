#include "BIS_AddonInfo.hpp"
class CfgPatches
{
	class weapon_holster_maximili
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
	class maximili
	{
		class maximili_mods
		{
			class maximili_mods_weapon_holster
			{
				file="\w_h\init.sqf";
				postInit=1;
			};
		};
	};
};
