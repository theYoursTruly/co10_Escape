player setCaptive true;
hintSilent parseText("<t color='#00ff00' size='1.2'>Spawn protection ON</t>");
player setPos getPos (leader group player);

//BIS
player unassignItem "ItemMap";
player removeItem "ItemMap";
player unassignItem "ItemCompass";
player removeItem "ItemCompass";
player unassignItem "itemGPS";
player removeItem "itemGPS";
player unassignItem "O_UavTerminal";
player removeItem "O_UavTerminal";
player unassignitem "B_UavTerminal"; 
player removeitem "B_UavTerminal";
player unassignitem "I_UavTerminal"; 
player removeitem "I_UavTerminal";
player unassignItem "NVGoggles";
player removeItem "NVGoggles";
player unassignItem "NVGoggles_OPFOR";
player removeItem "NVGoggles_OPFOR";
player unassignItem "NVGoggles_INDEP";
player removeItem "NVGoggles_INDEP";
//RHS
player unassignItem "rhsusf_ANPVS_14";
player removeItem "rhsusf_ANPVS_14";
player unassignItem "rhsusf_ANPVS_15";
player removeItem "rhsusf_ANPVS_15";
player unassignItem "rhs_1PN138";
player removeItem "rhs_1PN138";
player unassignItem "rhsusf_ANPVS_15";
player removeItem "rhsusf_ANPVS_15";
//
player unassignItem "A3_GPNVG18_REC_BLK_F";
player removeItem "A3_GPNVG18_REC_BLK_F";
//BIS Apex
player unassignItem "O_NVGoggles_hex_F";
player removeItem "O_NVGoggles_hex_F";
player unassignItem "O_NVGoggles_urb_F";
player removeItem "O_NVGoggles_urb_F";
player unassignItem "O_NVGoggles_ghex_F";
player removeItem "O_NVGoggles_ghex_F";
player unassignItem "NVGoggles_tna_F";
player removeItem "NVGoggles_tna_F";
player unassignItem "NVGogglesB_blk_F";
player removeItem "NVGogglesB_blk_F";
player unassignItem "NVGogglesB_grn_F";
player removeItem "NVGogglesB_grn_F";
player unassignItem "NVGogglesB_gry_F";
player removeItem "NVGogglesB_gry_F";
//CUP
player unassignItem "CUP_NVG_HMNVS";
player removeItem "CUP_NVG_HMNVS";
player unassignItem "CUP_NVG_PVS7";
player removeItem "CUP_NVG_PVS7";
player unassignItem "CUP_NVG_PVS14";
player removeItem "CUP_NVG_PVS14";


removeAllWeapons player;
removeAllItems player;
removeBackpack player;
removeVest player;
removeHeadgear player;
  
player addeventhandler["HandleRating","_this call A3E_FNC_handleRating;"];
  
player addItem "ItemRadio";
player assignItem "ItemRadio";
player addItem "ItemWatch";
player assignItem "ItemWatch";

deleteVehicle (_this select 1);

call compile preprocessFile "Scripts\AT\dronehack_init.sqf";
[] call A3E_fnc_addUserActions;
if !(isClass(configFile >> "CfgPatches" >> "ACE_Medical")) then { call ATR_FNC_ReviveInit; };

private _group = [] call A3E_fnc_GetPlayerGroup;
if(isNull _group) then { _group = tft_group; };
if(!isNull _group) then { player joinSilent _group };

_placed = false;
_players = [] call A3E_fnc_GetPlayers;
_players deleteAt (_players find player); 
while{(count _players) > 0 && !_placed} do {
    private _refPlayer = selectRandom _players;
    private _refVehicle = vehicle _refPlayer;
    if((_refVehicle != _refPlayer) && ((_refVehicle) emptyPositions "Commander">0 || (_refVehicle) emptyPositions "Driver">0 || (_refVehicle) emptyPositions "Gunner">0 || (_refVehicle) emptyPositions "Cargo">0)) then {
        //Teleports the player remotely into the Vehicle, needs to be called local at player
        [player,_refVehicle] remoteExec ["moveInAny", player]; 
        sleep 0.5;
        if(player in _refVehicle) then {
            _placed = true;
            diag_log format["Escape debug: %1 placed at %2 in cargo of vehicle.", name player, name _refPlayer];
        } else {
            diag_log format["Escape debug: Unable to playe %1 in cargo of %2", name player, name _refPlayer];
            _placed = false;
        };
    };
    //Remove the player to test another one
    _players deleteAt (_players find _refPlayer); 				
};
if(!_placed) then {
    player setpos [(A3E_StartPos select 0)+random 3.0-1.5,(A3E_StartPos select 1)+random 3.0-1.5,0];
    player setdir (random 360);
    diag_log format["Escape debug: %1 placed at prison.", name player];
};

sleep 1;

player addMagazineGlobal "11Rnd_45ACP_Mag";
player addMagazineGlobal "11Rnd_45ACP_Mag";
player addMagazineGlobal "11Rnd_45ACP_Mag";
sleep 0.5;
player addWeaponGlobal "hgun_Pistol_heavy_01_F";

player linkItem "ItemRadio";
player linkItem "ItemWatch";

if (isClass(configFile >> "CfgPatches" >> "ACE_Hearing")) then {
    player addItem "ACE_EarPlugs";
};

ace_map_BFT_Enabled = false;
ace_spectator_filterUnits = 2;      //playable only
ace_spectator_filterSides = 1;      //friendly
ace_spectator_restrictModes = 1;    //follow unit only

if (isClass(configFile >> "CfgPatches" >> "ACE_Medical")) then {
    _ACE_Items = ["ACE_atropine","ACE_fieldDressing","ACE_elasticBandage","ACE_quikclot","ACE_bloodIV","ACE_bloodIV_500","ACE_bloodIV_250","ACE_bodyBag","ACE_epinephrine","ACE_morphine","ACE_packingBandage","ACE_personalAidKit","ACE_plasmaIV","ACE_plasmaIV_500","ACE_plasmaIV_250","ACE_salineIV","ACE_salineIV_500","ACE_salineIV_250","ACE_surgicalKit","ACE_tourniquet"];
    {player removeItems _x} forEach _ACE_Items;
    if ( (missionnamespace getVariable ["ace_medical_level",2]) > 1 || (missionnamespace getVariable ["ace_medical_medicSetting",2]) > 1 ) then {
        for "_i" from 1 to 4 do {player addItem "ACE_fieldDressing";};
        for "_i" from 1 to 4 do {player addItem "ACE_packingBandage";};
        for "_i" from 1 to 4 do    {player addItem "ACE_elasticBandage";};
        for "_i" from 1 to 6 do {player addItem "ACE_quikclot";};
        if !(str player == "p10") then {
            for "_i" from 1 to 2 do {player addItem "ACE_morphine";};
            for "_i" from 1 to 1 do {player addItem "ACE_epinephrine";};
        } else {
            for "_i" from 1 to 4 do {player addItem "ACE_morphine";};
            for "_i" from 1 to 4 do {player addItem "ACE_epinephrine";};
            for "_i" from 1 to 1 do {player addItem "ACE_personalAidKit";};
            for "_i" from 1 to 1 do {player addItem "ACE_surgicalKit";};
            for "_i" from 1 to 2 do {player addItem "ACE_salineIV";};
        };
        for "_i" from 1 to 2 do {player addItem "ACE_tourniquet";};
    } else {
        for "_i" from 1 to 10 do {player addItem "ACE_fieldDressing";};
        if !(str player == "p10") then {
            for "_i" from 1 to 2 do {player addItem "ACE_morphine";};
            for "_i" from 1 to 2 do {player addItem "ACE_epinephrine";};
        } else {
            for "_i" from 1 to 4 do {player addItem "ACE_morphine";};
            for "_i" from 1 to 4 do {player addItem "ACE_epinephrine";};
            for "_i" from 1 to 2 do {player addItem "ACE_bloodIV";};
        };
    };
};

if (isClass(configFile >> "CfgPatches" >> "ACE_common")) then {
    if (str player in ["p3", "p4"]) then {player setVariable ["ACE_isEOD",true];player setVariable ["ACE_isEngineer",true];};
    if (str player in ["p9", "p10"]) then {player setVariable ["ACE_medical_medicClass", 2, true];};
};

sleep 5;
player setCaptive false;
hintSilent parseText("<t color='#ff0000' size='1.2'>Spawn protection OFF</t>");
