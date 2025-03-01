if (!isServer) exitWith {};

private _spavn = _this select 0;

private _crew =
[
["sp_fwa_smg_mk5sterling","","","",["sp_fwa_15Rnd_9x19_L2A3_Sterling",15],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5]]],["UK3CB_TKA_I_V_6Sh92_Khk",[["sp_fwa_32Rnd_9x19_L2A3_Sterling_Tracer",6,32],["rhsusf_mag_7x45acp_MHP",2,7],["rhs_mag_an_m8hc",2,1],["rhs_grenade_mkii_mag",2,1]]],[],"UK3CB_MDF_B_H_Beret","",[],["","","","","",""]
];


private _car = "UK3CB_CCM_B_Datsun_Pkm" createVehicle getMarkerPos _spavn;

private _car_grp = createGroup east;

private _marine_tl_1  = _car_grp createUnit ["O_G_Soldier_TL_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_tl_2  = _car_grp createUnit ["O_G_Soldier_TL_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_tl_3  = _car_grp createUnit ["O_G_Soldier_TL_F", getMarkerPos _spavn, [], 0, "FORM"];

_marine_tl_1 setUnitLoadout _crew;
_marine_tl_2 setUnitLoadout _crew;
_marine_tl_3 setUnitLoadout _crew;
_marine_tl_1 setSkill 0.5;
_marine_tl_2 setSkill 0.5;
_marine_tl_2 setSkill 0.5;

private _players = allPlayers - entities "HeadlessClient_F";
private _enemy = [_players, _marine_tl_1] call BIS_fnc_nearestPosition;
private _target = group _enemy;

_wp_0 = _car_grp addWaypoint [getMarkerPos _spavn,5];	
_wp_0 setWaypointType "GETIN NEAREST"; 

[_car_grp, _target] spawn {
			_car_grp = _this select 0;
			_target = _this select 1;
			_car_grp setBehaviour "SAFE";
			_car_grp setCombatMode "Red";
			sleep 3;
			_stalk = [_car_grp, _target ] spawn BIS_fnc_stalk;
};
