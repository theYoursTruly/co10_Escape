diag_log format["initPlayerLocal run for %1 (prewaituntil)", name player];

waituntil{!isNull(player)};
//Clientside Stuff
//call compile preprocessFile "Revive\reviveInit.sqf";

diag_log format["initPlayerLocal run for %1", name player];

[] spawn {
	disableSerialization;
	waitUntil {!isNull(findDisplay 46)};
	(findDisplay 46) displayAddEventHandler ["keyDown", "_this call a3e_fnc_KeyDown"];
};
titleText ["Loading...", "BLACK",0.1];

AT_Revive_StaticRespawns = [];
AT_Revive_enableRespawn = false;
AT_Revive_clearedDistance = 0;
AT_Revive_Camera = 1;

if(isClass(configFile >> "CfgPatches" >> "ACE_Medical")) then {
    ace_medical_level = 1;
    ace_medical_medicSetting = 1;
    ace_medical_litterCleanUpDelay = 300;
    ace_medical_playerDamageThreshold = 1.5;
    ace_medical_painCoefficient = 1.2;
} else {
call ATR_FNC_ReviveInit;
};

call compile preprocessFile "Scripts\AT\dronehack_init.sqf";
[] call A3E_fnc_addUserActions;

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

drn_fnc_Escape_DisableLeaderSetWaypoints = {
	if (!visibleMap) exitwith {};
	
	{
		player groupSelectUnit [_x, false]; 
	} foreach units group player;
};

// If multiplayer, then disable the cheating "move to" waypoint feature.
if (isMultiplayer) then {
	[] spawn {
		waitUntil {!isNull(findDisplay 46)}; 
		// (findDisplay 46) displayAddEventHandler ["KeyDown","_nil=[_this select 1] call drn_fnc_Escape_DisableLeaderSetWaypoints"];
		(findDisplay 46) displayAddEventHandler ["MouseButtonDown","_nil=[_this select 1] call drn_fnc_Escape_DisableLeaderSetWaypoints"];
	};
};

if(isNil "tft_lights_instance") then {
    tft_lights_instance = '#lightpoint' createVehicleLocal [worldSize/2,worldSize/2,25000]; 
    tft_lights_instance setLightDayLight false; 
    tft_lights_instance setLightAttenuation [worldSize*sqrt 2,1,1e-4,0]; 
    tft_lights_instance setLightBrightness 0.12; 
    tft_lights_instance setLightColor [0.3, 0.4, 0.8]; 
    tft_lights_instance setLightAmbient [0.02, 0.02, 0.02];
};
setViewDistance 5000;
setObjectViewDistance 2500;

if (isClass(configFile >> "CfgPatches" >> "ACE_Hearing")) then {
    player addItem "ACE_EarPlugs";
};
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
    if (str player in ["p3","p4"]) then {player setVariable ["ACE_isEOD",true];player setVariable ["ACE_isEngineer",true];};
    if (str player in ["p9","p10"]) then {player setVariable ["ACE_medical_medicClass", 2, true];};
};

ace_map_BFT_Enabled = false;
ace_spectator_filterUnits = 2;      //playable only
ace_spectator_filterSides = 1;      //friendly
ace_spectator_restrictModes = 1;    //follow unit only


waituntil{sleep 0.1;!isNil("A3E_ParamsParsed")};
AT_Revive_Camera = Param_ReviveView;
tft_group = group player;

[] spawn {
	disableSerialization;
	waitUntil {!isNull(findDisplay 46)};
	(findDisplay 46) displayAddEventHandler ["keyDown", "_this call a3e_fnc_KeyDown"];
};
player setvariable["A3E_PlayerInitializedLocal",true,true];
waituntil{sleep 0.1;(!isNil("A3E_FenceIsCreated") && !isNil("A3E_StartPos") && (player getvariable["A3E_PlayerInitializedServer",false]))};

sleep 1.0;

diag_log format["Escape debug: %1 is now ready (clientside).", name player];

titleFadeOut 1;
sleep 2;
["Somewhere on", A3E_WorldName , str (date select 2) + "/" + str (date select 1) + "/" + str (date select 0) + " " + str (date select 3) + ":00"] spawn BIS_fnc_infoText;

waituntil{sleep 0.5;!isNil("A3E_EscapeHasStarted")};

player setCaptive false;
