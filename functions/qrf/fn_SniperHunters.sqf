if (!isServer) exitWith {};

private _spavn = _this select 0;

private _sniper =
[
["sp_fwa_kar_98k","","","sp_fwa_scope_zf39",["sp_fwa_5Rnd_792x57_K98",5],[],""],[],["sp_fwa_m1911","","","",["sp_fwa_7Rnd_45acp_m1911",7],[],""],["UK3CB_ADR_B_U_CombatUniform_KHK",[["FirstAidKit",5]]],["UK3CB_TKA_I_V_6Sh92_Khk",[["rhsusf_mag_7x45acp_MHP",2,7],["rhs_mag_an_m8hc",2,1],["rhs_grenade_mkii_mag",2,1]]],[],"UK3CB_MDF_B_H_Beret","",[],["","","","","",""]
];


private _sniper_grp = createGroup east;

private _marine_tl_1  = _sniper_grp createUnit ["O_G_Soldier_TL_F", getMarkerPos _spavn, [], 0, "FORM"];
private _marine_tl_2  = _sniper_grp createUnit ["O_G_Soldier_TL_F", getMarkerPos _spavn, [], 0, "FORM"];

_marine_tl_1 setUnitLoadout _sniper;
_marine_tl_2 setUnitLoadout _sniper;
_marine_tl_1 setSkill 0.75;
_marine_tl_2 setSkill 0.75;

private _players = allPlayers - entities "HeadlessClient_F";
private _enemy = [_players, _marine_tl_1] call BIS_fnc_nearestPosition;
private _target = group _enemy;

_sniper_grp setBehaviour "Stealth";
_sniper_grp setCombatMode "Red";
_stalk = [_sniper_grp, _target ] spawn BIS_fnc_stalk;