private["_static","_gunner","_group","_side","_possibleInfantryTypes","_infantryType","_unit"];
_static = [_this,0,objNull] call bis_fnc_param;
_side = [_this,1,A3E_VAR_Side_Ind] call bis_fnc_param;

_group = createGroup _side;
_possibleInfantryTypes = a3e_arr_Escape_InfantryTypes;
switch (_side) do {
    case A3E_VAR_Side_Opfor: { _possibleInfantryTypes = a3e_arr_Escape_InfantryTypes;};
    case A3E_VAR_Side_Ind: {_possibleInfantryTypes = a3e_arr_Escape_InfantryTypes_Ind;};
};
if(!(isNull _static)) then {
	_infantryType = _possibleInfantryTypes select floor (random count _possibleInfantryTypes);
	_unit = _group createUnit [_infantryType, getpos _static, [], 0, "FORM"];    
	_unit assignAsGunner _static;
	_unit moveInGunner _static;
    
    private _AISkill = 0.1;
	switch (Param_EnemySkill) do {
        case 0: { _AISkill = 0.1; };
        case 1: { _AISkill = 0.2; };
        case 2: { _AISkill = 0.3; };
        case 3: { _AISkill = 0.4; };
        case 4: { _AISkill = 0.5; };
        default { _AISkill = 0.2; };
    };
	_unit setskill _AISkill;
	_unit setskill ["spotdistance", _AISkill];
	_unit setskill ["aimingaccuracy", _AISkill]; 
	_unit setskill ["aimingshake", _AISkill]; 
	_unit setskill ["spottime", _AISkill];
	_unit setskill ["commanding", 0.8];
} else {
	_unit = objNull;
};
_unit;