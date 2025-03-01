if (!isServer) exitWith {};

private _spavn = _this select 0;
private _road_1 = _this select 1;
private _road_2 = _this select 2;
private _road_3 = _this select 3;
private _target_1 = _this select 4;

private _crewmember =
[
["sp_fwa_smg_m3a1","","","",["sp_fwa_30Rnd_45acp_m3a1_Tracer",30],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_MDF_B_U_Navy_CombatUniform_01_LIZ_BLU",[["FirstAidKit",5],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7]]],["UK3CB_TKA_I_V_6Sh92_Grey",[["SmokeShell",2,1],["rhs_grenade_mkii_mag",3,1],["sp_fwa_30Rnd_45acp_m3a1_Tracer",6,30]]],[],"rhs_tsh4","",[],["","","TFAR_anprc152","","",""]
];

private _apc_grp = createGroup east;

private _apc = "UK3CB_CW_US_B_EARLY_AAV" createVehicle getMarkerPos _spavn;

private _crew_commander = _apc_grp createUnit ["O_G_engineer_F", getMarkerPos _spavn, [], 0, "FORM"];
private _crew_gunner  = _apc_grp createUnit ["O_G_engineer_F", getMarkerPos _spavn, [], 0, "FORM"];
private _crew_driver  = _apc_grp createUnit ["O_G_engineer_F", getMarkerPos _spavn, [], 0, "FORM"];

_crew_commander setUnitLoadout _crewmember;
_crew_gunner setUnitLoadout _crewmember;
_crew_driver setUnitLoadout _crewmember;
_crew_commander setSkill 0.6;
_crew_gunner setSkill 0.55;
_crew_driver setSkill 0.55;

_wp_0 = _apc_grp addWaypoint [getMarkerPos _spavn,5];	
_wp_0 setWaypointType "GETIN NEAREST"; 
_wp_1 = _apc_grp addWaypoint [getMarkerPos _road_1, 5];
_wp_1 setWaypointType "Move";
_wp_2 = _apc_grp addWaypoint [getMarkerPos _road_2, 5];
_wp_2 setWaypointType "Move";
_wp_3 = _apc_grp addWaypoint [getMarkerPos _road_3, 5];
_wp_3 setWaypointType "Move";
_wp_4 = _apc_grp addWaypoint [getMarkerPos _target_1, 5];
_wp_4 setWaypointType "Move";
_wp_5 = _apc_grp addWaypoint [getMarkerPos _target_1, 10];
_wp_5 setWaypointType "SAD";
_wp_6 = _apc_grp addWaypoint [getMarkerPos _target_1, 0];
_wp_6 setWaypointType "Guard";