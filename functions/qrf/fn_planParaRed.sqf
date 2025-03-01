if (!isServer) exitWith {};

private _target_1 = _this select 0;
private _target_2 = _this select 1;

_wpPos = getMarkerPos _target_2;

private _pilot =
[
["sp_fwa_smg_sten_mk2","","","",["sp_fwa_32Rnd_9x19_sten",32],[],""],[],["UK3CB_BHP","","","",["UK3CB_BHP_9_13Rnd",13],[],""],["UK3CB_MDF_B_U_H_Pilot_Uniform_01_LIZ_ALT",[]],["UK3CB_V_Pilot_Vest",[["sp_fwa_32Rnd_9x19_sten_Tracer",6,32]]],[],"rhsusf_hgu56p_visor","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]
];

_plane = createVehicle ["UK3CB_TKA_B_C47_Late", [25,6250,100], [], 0, "FLY"];
private _planeCrew = createGroup east;
_planePilot = _planeCrew createUnit ["O_G_officer_F", getMarkerPos "eventSpawn", [], 0, "FORM"];
_planeCoPilot = _planeCrew createUnit ["O_G_officer_F", getMarkerPos "eventSpawn", [], 0, "FORM"];
{_x moveInAny _plane} forEach units _planeCrew;

_plane flyInHeight 150;
_plane forceSpeed 100;
_planeCrew setBehaviour "Careless";
_planeCrew setCombatMode "Blue";
{_x disableAI "FSM"; _x disableAI "Target", _x disableAI "Autotarget"} forEach units _planeCrew;

_wpplane01 = _planeCrew addWaypoint [getMarkerPos _target_2, 0];
_wpplane02 = _planeCrew addWaypoint [getMarkerPos "hereBeDragons", 0];

// Paradrop
waitUntil {sleep 1; (_plane distance2D _wpPos) < 100};

[_plane, _target_1] spawn QRF_fnc_Airborn;

// Delete plane when far away
waitUntil {sleep 5; (_plane distance2D _wpPos) > 4000};

{deleteVehicle _x} forEach units _planeCrew;
deleteVehicle _plane;
