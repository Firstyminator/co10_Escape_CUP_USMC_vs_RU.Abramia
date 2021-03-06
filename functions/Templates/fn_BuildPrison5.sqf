// Object composition created and exported with Map Builder
// See www.map-builder.info - Map Builder by NeoArmageddon
// Call this script by [Position,Rotation] execVM "filename.sqf"
//Slum house small 2 doors and window, flag, speakers, burning barrels x 2 and sandbags

private["_center","_rotation","_obj","_pos"];
_center = param[0];
_rotation = param[1];

[_center,25] call a3e_fnc_cleanupTerrain;

_fnc_rotatePos = {
private ["_centerPos", "_pos", "_dir"];
private ["_px", "_py", "_mpx", "_mpy", "_ma", "_rpx", "_rpy"];
_centerPos = _this select 0;
_pos = _this select 1;
_dir = _this select 2;
    _px = _pos select 0;
    _py = _pos select 1;
    _mpx = _centerPos select 0;
    _mpy = _centerPos select 1;
    _ma = _dir;
    _rpx = ( (_px - _mpx) * cos(_ma) ) + ( (_py - _mpy) * sin(_ma) ) + _mpx;
    _rpy = (-(_px - _mpx) * sin(_ma) ) + ( (_py - _mpy) * cos(_ma) ) + _mpy;
[_rpx, _rpy, (_pos select 2)];
};

_pos = [_center,_center vectorAdd [-1.97363,1.90625,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.707107,0.707107,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-1.7373,0.169922,-0.138047],_rotation] call _fnc_rotatePos;
_obj = "Land_Slum_House02_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.706483,0.70773,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;
_obj allowDamage false;

A3E_PrisonGateObject = _obj;

_pos = [_center,_center vectorAdd [1,0,0],_rotation] call _fnc_rotatePos;
_obj = "Land_ClutterCutter_medium_F" createvehicle _pos;
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-1,0,0],_rotation] call _fnc_rotatePos;
_obj = "Land_ClutterCutter_medium_F" createvehicle _pos;
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [0,1,0],_rotation] call _fnc_rotatePos;
_obj = "Land_ClutterCutter_medium_F" createvehicle _pos;
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [0,-1,0],_rotation] call _fnc_rotatePos;
_obj = "Land_ClutterCutter_medium_F" createvehicle _pos;
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [0.420898,4.25977,-0.318182],_rotation] call _fnc_rotatePos;
_obj = "Land_Loudspeakers_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.689121,0.724646,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

A3E_PrisonLoudspeakerObject = _obj;
publicvariable "A3E_PrisonLoudspeakerObject";

_pos = [_center,_center vectorAdd [1.72363,3.03906,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.700534,0.713619,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-3.30664,0.273438,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.71424,-0.6999,0],[0,-0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [2.96289,-0.701172,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.73009,0.683351,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [3.10449,1.62109,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.716088,0.69801,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [4.22461,0.443359,0],_rotation] call _fnc_rotatePos;
_obj = "MetalBarrel_burning_F" createvehicle _pos;
_obj setVectorDirAndUp [[0,1,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-1.73633,-3.25,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.705229,-0.70898,0],[-0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-0.151367,-3.79297,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.707107,0.707107,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-0.351563,-4.73633,0],_rotation] call _fnc_rotatePos;
_obj = "Flag_Altis_F" createvehicle _pos;
_obj setVectorDirAndUp [[0.684954,-0.728586,0],[0,-0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [-2.76563,-2.06055,0],_rotation] call _fnc_rotatePos;
_obj = "MetalBarrel_burning_F" createvehicle _pos;
_obj setVectorDirAndUp [[0,1,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [1.42285,-2.27148,0],_rotation] call _fnc_rotatePos;
_obj = "Land_SandbagBarricade_01_half_F" createvehicle _pos;
_obj setVectorDirAndUp [[-0.708664,0.705546,0],[0,0,1]];
_obj setdir ((getdir _obj) + _rotation);
_obj setPosATL _pos;

_pos = [_center,_center vectorAdd [random 2.0 - 1, random 2.0 -1,0],_rotation] call _fnc_rotatePos;
private _backpack = "B_AssaultPack_khk" createvehicle _pos;
_backpack setdir ((getdir _backpack) + _rotation);
_backpack setPosATL _pos;

_backpack;