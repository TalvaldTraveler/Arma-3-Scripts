if (!isServer) exitWith {};

private _spavn = _this select 0;
private _target_1 = _this select 1;
private _target_2 = _this select 2;

private _officer =
[
["sp_fwa_smg_mp40_black","","","",["sp_fwa_32Rnd_9x19_mp40_Tracer",32],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_MDF_B_U_Navy_CombatUniform_01_LIZ_BLU",[["FirstAidKit",5],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7]]],["UK3CB_TKA_I_V_6Sh92_Radio_Grey",[["sp_fwa_32Rnd_9x19_mp40_Tracer",6,32],["SmokeShell",2,1],["rhs_grenade_mkii_mag",3,1]]],[],"rhs_fieldcap_m88_grey","",[],["","","TFAR_anprc152","","",""]
];

private _teamleader =
[
["sp_fwa_ar10_porto_marksman","","","sp_fwa_scope_ar_delft3x25",["sp_fwa_20Rnd_762_ar10_Tracer",20],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_MDF_B_U_Navy_CombatUniform_01_LIZ_BLU",[["FirstAidKit",5],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7]]],["UK3CB_TKA_I_V_6Sh92_Radio_Grey",[["sp_fwa_20Rnd_762_ar10_Tracer",6,20],["rhs_mag_an_m8hc",2,1],["rhs_grenade_mkii_mag",1,1]]],[],"UK3CB_TKA_I_H_SSh68_Grey","",[],["","","TFAR_anprc152","","",""]
];

private _marinegrunt =
[
["sp_fwa_kar_98k","","","",["sp_fwa_5Rnd_792x57_K98_Tracer",5],[],""],[],[],["UK3CB_MDF_B_U_Navy_CombatUniform_01_LIZ_BLU",[["FirstAidKit",5]]],["UK3CB_TKA_I_V_6Sh92_Grey",[["sp_fwa_5Rnd_792x57_K98_Tracer",12,5],["rhs_grenade_mkii_mag",2,1],["rhs_mag_an_m8hc",2,1]]],[],"UK3CB_TKA_I_H_SSh68_Grey","",[],["","","","","",""]
];

private _marine =
[
["sp_fwa_ar10_porto","","","",["sp_fwa_20Rnd_762_ar10_Tracer",20],["uk3cb_1rnd_riflegrenade_mas_wp",1],""],[],[],["UK3CB_MDF_B_U_Navy_CombatUniform_01_LIZ_BLU",[["FirstAidKit",5]]],["UK3CB_TKA_I_V_6Sh92_vog_Grey",[["sp_fwa_20Rnd_762_ar10_Tracer",6,20],["uk3cb_1rnd_riflegrenade_mas_wp",1,1]]],[],"UK3CB_TKA_I_H_SSh68_Grey","",[],["","","","","",""]
];

private _marinemg =
[
["sp_fwa_mg3","","","",["UK3CB_MG3_250rnd_762x51_G",250],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_MDF_B_U_Navy_CombatUniform_01_LIZ_BLU",[["FirstAidKit",5],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7]]],["UK3CB_TKA_I_V_6Sh92_Grey",[["rhs_mag_an_m8hc",3,1],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7]]],["UK3CB_CSAT_F_O_B_RIF",[["UK3CB_MG3_250rnd_762x51_G",3,250],["UK3CB_MG3_50rnd_762x51_GT",3,50]]],"UK3CB_TKA_I_H_SSh68_Grey","",[],["","","","","",""]
];

private _marineass =
[
["sp_fwa_ar10_porto_carbine","","","",["sp_fwa_20Rnd_762_ar10_Tracer",20],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_MDF_B_U_Navy_CombatUniform_01_LIZ_BLU",[["FirstAidKit",5],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7]]],["UK3CB_TKA_I_V_6Sh92_Grey",[["sp_fwa_20Rnd_762_ar10_Tracer",6,20],["SmokeShell",2,1],["rhs_grenade_mkii_mag",2,1]]],["UK3CB_CSAT_F_O_B_RIF",[["UK3CB_MG3_250rnd_762x51_G",3,250]]],"UK3CB_TKA_I_H_SSh68_Grey","",[],["","","","","",""]
];

private _marine_grp = createGroup east;

private _marine_sl = _marine_grp createUnit ["O_G_Soldier_SL_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_tl_1  = _marine_grp createUnit ["O_G_Soldier_TL_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_tl_2  = _marine_grp createUnit ["O_G_Soldier_TL_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_grunt_1 = _marine_grp createUnit ["O_G_Soldier_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_grunt_2 = _marine_grp createUnit ["O_G_Soldier_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_grunt_3 = _marine_grp createUnit ["O_G_Soldier_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_veteran_1 = _marine_grp createUnit ["O_G_Soldier_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_veteran_2 = _marine_grp createUnit ["O_G_Soldier_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_veteran_3 = _marine_grp createUnit ["O_G_Soldier_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_mg = _marine_grp createUnit ["O_G_Soldier_AR_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_ass = _marine_grp createUnit ["O_G_Soldier_A_F", getMarkerPos _spavn, [], 0, "FORM"];

_marine_sl setUnitLoadout _officer;
_marine_tl_1 setUnitLoadout _teamleader;
_marine_tl_2 setUnitLoadout _teamleader;
_marine_grunt_1 setUnitLoadout _marinegrunt;
_marine_grunt_2 setUnitLoadout _marinegrunt;
_marine_grunt_3 setUnitLoadout _marinegrunt;
_marine_veteran_1 setUnitLoadout _marine;
_marine_veteran_2 setUnitLoadout _marine;
_marine_veteran_3 setUnitLoadout _marine;
_marine_mg setUnitLoadout _marinemg;
_marine_ass setUnitLoadout _marineass;
_marine_sl setSkill 0.6;
_marine_tl_1 setSkill 0.55;
_marine_tl_2 setSkill 0.55;
_marine_grunt_1 setSkill 0.4;
_marine_grunt_2 setSkill 0.4;
_marine_grunt_3 setSkill 0.4;
_marine_veteran_1 setSkill 0.5;
_marine_veteran_1 setSkill 0.5;
_marine_veteran_1 setSkill 0.5;
_marine_mg setSkill 0.4;
_marine_ass setSkill 0.35;

_wp_0 = _marine_grp addWaypoint [getMarkerPos _target_2, 25];
_wp_0 setWaypointBehaviour "AWARE";
_wp_0 setWaypointType "Move";
_wp_1 = _marine_grp addWaypoint [getMarkerPos _target_1, 25];
_wp_1 setWaypointBehaviour "AWARE";
_wp_1 setWaypointType "SAD";
_wp_2 = _marine_grp addWaypoint [getMarkerPos _target_1, 15];
_wp_2 setWaypointBehaviour "AWARE";
_wp_2 setWaypointType "SAD";
_wp_3 = _marine_grp addWaypoint [getMarkerPos _target_1, 5];
_wp_3 setWaypointBehaviour "AWARE";
_wp_3 setWaypointType "SAD";
_wp_4 = _marine_grp addWaypoint [getMarkerPos _target_1, 0];
_wp_4 setWaypointBehaviour "AWARE";
_wp_4 setWaypointType "SAD";
_wp_5 = _marine_grp addWaypoint [getMarkerPos _target_1, 0];
_wp_5 setWaypointBehaviour "SAFE";
_wp_5 setWaypointType "Guard";