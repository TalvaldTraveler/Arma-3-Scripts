if (!isServer) exitWith {};

private _spavn = _this select 0;
private _plane = _this select 1;

private _cas = createVehicle [_plane, getMarkerPos _spavn, [], 0, "FLY"];

private _cas_grp = createGroup east;

private _pilot_1  = _cas_grp createUnit ["UK3CB_MDF_O_HELI_PILOT", getMarkerPos _spavn, [], 0, "FORM"];

_pilot_1 moveInDriver _cas;
_pilot_1 setSkill 0.75;

private _players = allPlayers - entities "HeadlessClient_F";
private _enemy = [_players, _pilot_1] call BIS_fnc_nearestPosition;

_cas_grp setBehaviour "AWARE";
_cas_grp setCombatMode "Red";

_wp_0 = _cas_grp addWaypoint [position _enemy,500];	
_wp_0 setWaypointType "SAD"; 
_wp_1 = _cas_grp addWaypoint [position _enemy,400];	
_wp_1 setWaypointType "SAD"; 
_wp_2 = _cas_grp addWaypoint [position _enemy,200];	
_wp_2 setWaypointType "SAD"; 
_wp_3 = _cas_grp addWaypoint [position _enemy,100];	
_wp_3 setWaypointType "SAD"; 
_wp_4 = _cas_grp addWaypoint [position _enemy,50];	
_wp_4 setWaypointType "SAD"; 
_wp_5 = _cas_grp addWaypoint [position _enemy,25];	
_wp_5 setWaypointType "SAD"; 
