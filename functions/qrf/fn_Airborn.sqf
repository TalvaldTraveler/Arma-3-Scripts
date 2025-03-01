if (!isServer) exitWith {};

// Params
private _heli = _this select 0;
private _target = _this select 1;
private _dir = getDir _heli;

private _sl =
[
["sp_fwa_smg_mk5sterling","","","",["sp_fwa_32Rnd_9x19_L2A3_Sterling_Tracer",32],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911_Tracer",7],[],""],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7]]],["UK3CB_TKA_I_V_6Sh92_Radio_Khk",[["sp_fwa_32Rnd_9x19_L2A3_Sterling_Tracer",6,32],["rhs_grenade_mkii_mag",3,1],["rhs_mag_an_m8hc",2,1]]],["UK3CB_B_O_RadioBag_KHK",[]],"UK3CB_MDF_B_H_Off_Beret","",[],["","","","","",""]
];

private _tl =
[
["sp_fwa_smg_mk5sterling","","","",["sp_fwa_15Rnd_9x19_L2A3_Sterling",15],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5]]],["UK3CB_TKA_I_V_6Sh92_Khk",[["sp_fwa_32Rnd_9x19_L2A3_Sterling_Tracer",6,32],["rhsusf_mag_7x45acp_MHP",2,7],["rhs_mag_an_m8hc",2,1],["rhs_grenade_mkii_mag",2,1]]],[],"UK3CB_MDF_B_H_Beret","",[],["","","","","",""]
];

private _mg =
[
["sp_fwa_bren_l4_lmg","","","",["sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer",30],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5],["rhs_mag_an_m8hc",2,1]]],["UK3CB_TKA_I_V_6Sh92_Khk",[["sp_fwa_30Rnd_Curved_762_FAL_Metric_Ball",5,30],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7]]],["B_Kitbag_tan",[["sp_fwa_30Rnd_Curved_762_FAL_Metric_Ball",15,30]]],"UK3CB_MDF_B_H_Beret","",[],["","","","","",""]
];

private _ab =
[
["sp_fwa_ar10_porto_carbine","","","",["sp_fwa_20Rnd_762_ar10_Tracer",20],[],""],[],[],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5]]],["UK3CB_TKA_I_V_6Sh92_Khk",[["sp_fwa_20Rnd_762_ar10_Tracer",6,20],["rhs_mag_an_m8hc",2,1]]],["B_Kitbag_tan",[["sp_fwa_30Rnd_Curved_762_FAL_Metric_Tracer",10,30]]],"UK3CB_MDF_B_H_Beret","",[],["","","","","",""]
];

private _ar =
[
["sp_fwa_ar10_porto_carbine_od","","","",["sp_fwa_20Rnd_762_ar10_Tracer",20],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5],["rhs_mag_an_m8hc",2,1]]],["UK3CB_TKA_I_V_6Sh92_Khk",[["rhs_grenade_mkii_mag",2,1],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7],["sp_fwa_20Rnd_762_ar10_Tracer",6,20]]],[],"UK3CB_MDF_B_H_Beret","",[],["","","","","",""]
];

private _at =
[
["sp_fwa_ar10_porto_carbine_od","","","",["sp_fwa_20Rnd_762_ar10_Tracer",20],[],""],["sp_fwa_m72a1_law","","","",["sp_fwa_1nd_m72a1_law_rocket",1],[],""],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5],["rhs_mag_an_m8hc",2,1]]],["UK3CB_TKA_I_V_6Sh92_Khk",[["rhs_grenade_mkii_mag",2,1],["sp_fwa_7Rnd_45acp_m1911_Tracer",2,7],["sp_fwa_20Rnd_762_ar10_Tracer",6,20]]],[],"UK3CB_MDF_B_H_Beret","",[],["","","","","",""]
];

sleep 0.5;

// Create paratroopers and let them chase players
_grp = createGroup east;
_grp setFormDir _dir;

_para_sl = _grp createUnit ["O_G_Soldier_SL_F", [0,0,0], [], 0, "CAN_COLLIDE"];
_para_sl setPosASL [(getPosASL _heli select 0), (getPosASL _heli select 1), (getPosASL _heli select 2) - 5];
_para_sl setUnitLoadout _sl;
removeBackpack _para_sl;
_para_sl addBackpack "B_Parachute";
_para_sl action ["OpenParachute",_para_sl];

sleep 0.5;

_para_tl_1 = _grp createUnit ["O_G_Soldier_TL_F", [0,0,0], [], 0, "CAN_COLLIDE"];
_para_tl_1 setPosASL [(getPosASL _heli select 0), (getPosASL _heli select 1), (getPosASL _heli select 2) - 5];
_para_tl_1 setUnitLoadout _tl;
removeBackpack _para_tl_1;
_para_tl_1 addBackpack "B_Parachute";
_para_tl_1 action ["OpenParachute",_para_tl_1];

sleep 0.5;

_para_tl_2 = _grp createUnit ["O_G_Soldier_TL_F", [0,0,0], [], 0, "CAN_COLLIDE"];
_para_tl_2 setPosASL [(getPosASL _heli select 0), (getPosASL _heli select 1), (getPosASL _heli select 2) - 5];
_para_tl_2 setUnitLoadout _tl;
removeBackpack _para_tl_2;
_para_tl_2 addBackpack "B_Parachute";
_para_tl_2 action ["OpenParachute",_para_tl_2];

sleep 0.5;

_para_mg = _grp createUnit ["O_G_Soldier_AR_F", [0,0,0], [], 0, "CAN_COLLIDE"];
_para_mg setPosASL [(getPosASL _heli select 0), (getPosASL _heli select 1), (getPosASL _heli select 2) - 5];
_para_mg setUnitLoadout _mg;
removeBackpack _para_mg;
_para_mg addBackpack "B_Parachute";
_para_mg action ["OpenParachute",_para_mg];

sleep 0.5;

_para_mgass = _grp createUnit ["O_G_Soldier_A_F", [0,0,0], [], 0, "CAN_COLLIDE"];
_para_mgass setPosASL [(getPosASL _heli select 0), (getPosASL _heli select 1), (getPosASL _heli select 2) - 5];
_para_mgass setUnitLoadout _ab;
removeBackpack _para_mgass;
_para_mgass addBackpack "B_Parachute";
_para_mgass action ["OpenParachute",_para_mgass];

sleep 0.5;

_para_rifle_1 = _grp createUnit ["O_G_Soldier_F", [0,0,0], [], 0, "CAN_COLLIDE"];
_para_rifle_1 setPosASL [(getPosASL _heli select 0), (getPosASL _heli select 1), (getPosASL _heli select 2) - 5];
_para_rifle_1 setUnitLoadout _ar;
removeBackpack _para_rifle_1;
_para_rifle_1 addBackpack "B_Parachute";
_para_rifle_1 action ["OpenParachute",_para_rifle_1];

sleep 0.5;

_para_rifle_2 = _grp createUnit ["O_G_Soldier_F", [0,0,0], [], 0, "CAN_COLLIDE"];
_para_rifle_2 setPosASL [(getPosASL _heli select 0), (getPosASL _heli select 1), (getPosASL _heli select 2) - 5];
_para_rifle_2 setUnitLoadout _ar;
removeBackpack _para_rifle_2;
_para_rifle_2 addBackpack "B_Parachute";
_para_rifle_2 action ["OpenParachute",_para_rifle_2];

sleep 0.5;

_para_rifle_3 = _grp createUnit ["O_G_Soldier_F", [0,0,0], [], 0, "CAN_COLLIDE"];
_para_rifle_3 setPosASL [(getPosASL _heli select 0), (getPosASL _heli select 1), (getPosASL _heli select 2) - 5];
_para_rifle_3 setUnitLoadout _ar;
removeBackpack _para_rifle_3;
_para_rifle_3 addBackpack "B_Parachute";
_para_rifle_3 action ["OpenParachute",_para_rifle_3];

sleep 0.5;

_para_rifle_4 = _grp createUnit ["O_G_Soldier_F", [0,0,0], [], 0, "CAN_COLLIDE"];
_para_rifle_4 setPosASL [(getPosASL _heli select 0), (getPosASL _heli select 1), (getPosASL _heli select 2) - 5];
_para_rifle_4 setUnitLoadout _ar;
removeBackpack _para_rifle_4;
_para_rifle_4 addBackpack "B_Parachute";
_para_rifle_4 action ["OpenParachute",_para_rifle_4];

sleep 0.5;

_para_at_1 = _grp createUnit ["O_G_Soldier_F", [0,0,0], [], 0, "CAN_COLLIDE"];
_para_at_1 setPosASL [(getPosASL _heli select 0), (getPosASL _heli select 1), (getPosASL _heli select 2) - 5];
_para_at_1 setUnitLoadout _at;
removeBackpack _para_at_1;
_para_at_1 addBackpack "B_Parachute";
_para_at_1 action ["OpenParachute",_para_at_1];

sleep 0.5;

_para_at_2 = _grp createUnit ["O_G_Soldier_F", [0,0,0], [], 0, "CAN_COLLIDE"];
_para_at_2 setPosASL [(getPosASL _heli select 0), (getPosASL _heli select 1), (getPosASL _heli select 2) - 5];
_para_at_2 setUnitLoadout _at;
removeBackpack _para_at_2;
_para_at_2 addBackpack "B_Parachute";
_para_at_2 action ["OpenParachute",_para_at_2];

sleep 2;

_wp_1 = _grp addWaypoint [getMarkerPos _target, 250];
_wp_1 setWaypointType "Move";
_wp_1 setWaypointBehaviour "SAFE";
_wp_2 = _grp addWaypoint [getMarkerPos _target, 0];
_wp_2 setWaypointType "SAD";
_wp_2 setWaypointBehaviour "COMBAT";
_wp_3 = _grp addWaypoint [getMarkerPos _target, 25];
_wp_3 setWaypointType "SAD";
_wp_4 = _grp addWaypoint [getMarkerPos _target, 0];
_wp_4 setWaypointType "Guard";
_wp_4 setWaypointBehaviour "SAFE";
