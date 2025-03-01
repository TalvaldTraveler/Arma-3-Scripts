if (!isServer) exitWith {};

private _spavn_1 = _this select 0;
private _spavn_2 = _this select 0;

_target = selectRandom allPlayers;
_targetPos = getPosATL _target;
_wpPos = [(_targetPos select 0) + 250, (_targetPos select 1) - 250];

private _officer =
[
	["sp_fwa_smg_mk5sterling","","","",["sp_fwa_32Rnd_9x19_L2A3_Sterling_Tracer",32],[],""],
	[],
	["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911_Tracer",7],[],""],
	["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7]]],
	["UK3CB_TKA_I_V_6Sh92_Radio_Khk",[["sp_fwa_32Rnd_9x19_L2A3_Sterling_Tracer",6,32],["rhs_grenade_mkii_mag",3,1],["rhs_mag_an_m8hc",2,1]]],
	["UK3CB_B_O_RadioBag_KHK",[]],
	"UK3CB_MDF_B_H_Off_Beret",
	"",
	["Binocular","","","",[],[],""],
	["ItemMap","","TFAR_anprc152","ItemCompass","ItemWatch",""]
];

private _teamleader =
[
["sp_fwa_smg_mk5sterling","","","",["sp_fwa_15Rnd_9x19_L2A3_Sterling",15],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5]]],["UK3CB_TKA_I_V_6Sh92_Khk",[["sp_fwa_32Rnd_9x19_L2A3_Sterling_Tracer",6,32],["rhsusf_mag_7x45acp_MHP",2,7],["rhs_mag_an_m8hc",2,1],["rhs_grenade_mkii_mag",2,1]]],[],"UK3CB_MDF_B_H_Beret","",[],["","","","","",""]
];

private _airborngrunt =
[
["sp_fwa_ar10_porto_carbine_od","","","",["sp_fwa_20Rnd_762_ar10_Tracer",20],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5],["rhs_mag_an_m8hc",2,1]]],["UK3CB_TKA_I_V_6Sh92_Khk",[["rhs_grenade_mkii_mag",2,1],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7],["sp_fwa_20Rnd_762_ar10_Tracer",6,20]]],[],"UK3CB_MDF_B_H_Beret","",[],["","","","","",""]
];

private _airbornat =
[
["sp_fwa_ar10_porto_carbine_od","","","",["sp_fwa_20Rnd_762_ar10_Tracer",20],[],""],["sp_fwa_m72a1_law","","","",["sp_fwa_1nd_m72a1_law_rocket",1],[],""],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5],["rhs_mag_an_m8hc",2,1]]],["UK3CB_TKA_I_V_6Sh92_Khk",[["rhs_grenade_mkii_mag",2,1],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7],["sp_fwa_20Rnd_762_ar10_Tracer",6,20]]],[],"UK3CB_MDF_B_H_Beret","",[],["","","","","",""]
];

private _airbornmg =
[
["sp_fwa_bren_l4_lmg","","","",["sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer",30],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5],["rhs_mag_an_m8hc",2,1]]],["UK3CB_TKA_I_V_6Sh92_Khk",[["sp_fwa_30Rnd_Curved_762_FAL_Metric_Ball",5,30],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7]]],["B_Kitbag_tan",[["sp_fwa_30Rnd_Curved_762_FAL_Metric_Ball",15,30]]],"UK3CB_MDF_B_H_Beret","",[],["","","","","",""]
];

private _airbornmgass =
[
["sp_fwa_ar10_porto_carbine","","","",["sp_fwa_20Rnd_762_ar10_Tracer",20],[],""],[],[],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5]]],["UK3CB_TKA_I_V_6Sh92_Khk",[["sp_fwa_20Rnd_762_ar10_Tracer",6,20],["rhs_mag_an_m8hc",2,1]]],["B_Kitbag_tan",[["sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer",10,30]]],"UK3CB_MDF_B_H_Beret","",[],["","","","","",""]
];

private _crewmember =
[
["sp_fwa_smg_m3a1","","","",["sp_fwa_30Rnd_45acp_m3a1_Tracer",30],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_MDF_B_U_Navy_CombatUniform_01_LIZ_BLU",[["FirstAidKit",5],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7]]],["UK3CB_TKA_I_V_6Sh92_Grey",[["SmokeShell",2,1],["rhs_grenade_mkii_mag",3,1],["sp_fwa_30Rnd_45acp_m3a1_Tracer",6,30]]],[],"rhs_tsh4","",[],["","","TFAR_anprc152","","",""]
];

sleep 0,5;

private _airborn_grp = createGroup east;
private _heli_grp = createGroup east;

private _crew_commander = _heli_grp createUnit ["O_G_engineer_F", getMarkerPos _spavn_1, [], 0, "FORM"];
private _crew_driver  = _heli_grp createUnit ["O_G_engineer_F", getMarkerPos _spavn_1, [], 0, "FORM"];
private _crew_gunner_1  = _heli_grp createUnit ["O_G_engineer_F", getMarkerPos _spavn_1, [], 0, "FORM"];
private _crew_gunner_2  = _heli_grp createUnit ["O_G_engineer_F", getMarkerPos _spavn_1, [], 0, "FORM"];

_crew_commander setUnitLoadout _crewmember;
_crew_driver setUnitLoadout _crewmember;
_crew_gunner_1 setUnitLoadout _crewmember;
_crew_gunner_2 setUnitLoadout _crewmember;

sleep 0,5;

private _airborn_sl = _airborn_grp createUnit ["O_G_Soldier_SL_F", getMarkerPos _spavn_2, [], 0, "FORM"];
private _airborn_tl_1  = _airborn_grp createUnit ["O_G_Soldier_TL_F", getMarkerPos _spavn_2, [], 0, "FORM"];
private _airborn_tl_2  = _airborn_grp createUnit ["O_G_Soldier_TL_F", getMarkerPos _spavn_2, [], 0, "FORM"];
private _airborn_grunt_1 = _airborn_grp createUnit ["O_G_Soldier_F", getMarkerPos _spavn_2, [], 0, "FORM"];
private _airborn_grunt_2 = _airborn_grp createUnit ["O_G_Soldier_F", getMarkerPos _spavn_2, [], 0, "FORM"];
private _airborn_at_1 = _airborn_grp createUnit ["O_G_Soldier_F", getMarkerPos _spavn_2, [], 0, "FORM"];
private _airborn_mg = _airborn_grp createUnit ["O_G_Soldier_AR_F", getMarkerPos _spavn_2, [], 0, "FORM"];
private _airborn_ass = _airborn_grp createUnit ["O_G_Soldier_A_F", getMarkerPos _spavn_2, [], 0, "FORM"];

_airborn_sl setUnitLoadout _officer;
_airborn_tl_1 setUnitLoadout _teamleader;
_airborn_tl_2 setUnitLoadout _teamleader;
_airborn_grunt_1 setUnitLoadout _airborngrunt;
_airborn_grunt_2 setUnitLoadout _airborngrunt;
_airborn_at_1 setUnitLoadout _airbornat;
_airborn_mg setUnitLoadout _airbornmg;
_airborn_ass setUnitLoadout _airbornmgass;
_airborn_sl setSkill 0.75;
_airborn_tl_1 setSkill 0.6;
_airborn_tl_2 setSkill 0.6;
_airborn_grunt_1 setSkill 0.5;
_airborn_grunt_2 setSkill 0.5;
_airborn_at_1 setSkill 0.55;
_airborn_mg setSkill 0.5;
_airborn_ass setSkill 0.45;

sleep 0,5;

private _qrfheli = "UK3CB_MDF_B_UH1H_M240" createVehicle getMarkerPos _spavn_1;
_qrfheli flyInHeight 150;
_qrfheli forceSpeed 100;

_wpt1 = _heli_grp addWaypoint [_wpPos,50];    
_wpt1 setWaypointType "TR UNLOAD";
_wpt2 = _heli_grp addWaypoint [_wpPos,75];    
_wpt2 setWaypointType "SAD";
_wpt3 = _heli_grp addWaypoint [_wpPos,150];    
_wpt3 setWaypointType "SAD";
_wpt4 = _heli_grp addWaypoint [_wpPos,300];    
_wpt4 setWaypointType "SAD";

{_x moveInAny _qrfheli} forEach units _heli_grp;

sleep 0,5;

{_x moveInAny _qrfheli} forEach units _airborn_grp;

_wp_0 = _airborn_grp addWaypoint [_wpPos, 50];
_wp_0 setWaypointType "GETOUT";
_wp_1 = _airborn_grp addWaypoint [_targetPos, 500];
_wp_1 setWaypointBehaviour "AWARE";
_wp_1 setWaypointType "SAD";
_wp_2 = _airborn_grp addWaypoint [_targetPos, 250];
_wp_2 setWaypointBehaviour "AWARE";
_wp_2 setWaypointType "SAD";
_wp_3 = _airborn_grp addWaypoint [_targetPos, 125];
_wp_3 setWaypointBehaviour "AWARE";
_wp_3 setWaypointType "SAD";
_wp_4 = _airborn_grp addWaypoint [_targetPos, 100];
_wp_4 setWaypointBehaviour "AWARE";
_wp_4 setWaypointType "SAD";
_wp_5 = _airborn_grp addWaypoint [_targetPos, 100];
_wp_5 setWaypointBehaviour "SAFE";
_wp_5 setWaypointType "Guard";