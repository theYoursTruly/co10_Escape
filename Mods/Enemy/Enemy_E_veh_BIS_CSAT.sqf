/*
 * Description: This file contains the vehicle types for the units spawned in the mission on the enemy side (east or west).
 * "Random array" (used below) means that array will be used to spawn units, and that chance is 1/n that each element will be spawned on each spawn. The array can contain 
 * many elements of the same type, so the example array ["Offroad_DSHKM_INS", "Pickup_PK_INS", "Pickup_PK_INS"] will spawn an Offroad with 1/3 probability, and a 
 * Pickup with 2/3 probability.
 */

// Random arrays. Enemy vehicle classes for ambient traffic.
// Variable _enemyFrequency applies to server parameter, and can be one of the values 1 (Few), 2 (Some) or 3 (A lot).
switch (_enemyFrequency) do {
    case 1: {//Few (1-3)
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_hmg_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_hmg_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Quadbike_01_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Quadbike_01_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Quadbike_01_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_covered_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_transport_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_ammo_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_box_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_fuel_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_medical_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Wheeled_02_rcws_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Tracked_02_AA_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Tracked_02_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_02_arty_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_02_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_device_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_transport_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_covered_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_ammo_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_fuel_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_medical_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_repair_F";
    };
    case 2: {//Some (4-6)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_hmg_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_hmg_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Quadbike_01_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Quadbike_01_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_covered_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_transport_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_ammo_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_box_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_fuel_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_medical_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Wheeled_02_rcws_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Tracked_02_AA_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Tracked_02_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Wheeled_02_rcws_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Tracked_02_AA_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Tracked_02_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_02_arty_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_02_arty_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_02_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_02_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_device_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_transport_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_covered_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_ammo_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_fuel_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_medical_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_repair_F";
    };
    default {//A lot (7-8)
        a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_hmg_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MRAP_02_hmg_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Quadbike_01_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Quadbike_01_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_covered_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_transport_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_ammo_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_box_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_fuel_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_02_medical_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Wheeled_02_rcws_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Tracked_02_AA_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Tracked_02_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Wheeled_02_rcws_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Tracked_02_AA_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_APC_Tracked_02_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_02_arty_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_02_arty_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_02_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_MBT_02_cannon_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_device_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_transport_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_covered_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_ammo_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_fuel_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_medical_F";
		a3e_arr_Escape_MilitaryTraffic_EnemyVehicleClasses pushback "O_Truck_03_repair_F";
    };
};

// Random array. A roadblock has a manned vehicle. This array contains possible manned vehicles (can be of any kind, like cars, armored and statics).
a3e_arr_Escape_RoadBlock_MannedVehicleTypes pushback "O_MRAP_02_hmg_F";
	a3e_arr_Escape_RoadBlock_MannedVehicleTypes pushback "O_HMG_01_high_F";
	a3e_arr_Escape_RoadBlock_MannedVehicleTypes pushback "O_static_AT_F";

// Random array. Vehicle classes (preferrably trucks) transporting enemy reinforcements.
a3e_arr_Escape_ReinforcementTruck_vehicleClasses pushback "O_Truck_02_covered_F";
	a3e_arr_Escape_ReinforcementTruck_vehicleClasses pushback "O_Truck_02_transport_F";
	a3e_arr_Escape_ReinforcementTruck_vehicleClasses pushback "O_Truck_03_transport_F";
	a3e_arr_Escape_ReinforcementTruck_vehicleClasses pushback "O_Truck_03_covered_F";
// Total cargo for reinforcement trucks. Each element corresponds to a vehicle (array element) in array a3e_arr_Escape_ReinforcementTruck_vehicleClasses above.
a3e_arr_Escape_ReinforcementTruck_vehicleClassesMaxCargo pushback 16;
a3e_arr_Escape_ReinforcementTruck_vehicleClassesMaxCargo pushback 16;
a3e_arr_Escape_ReinforcementTruck_vehicleClassesMaxCargo pushback 16;
a3e_arr_Escape_ReinforcementTruck_vehicleClassesMaxCargo pushback 16;

// Random array. Motorized search groups are sometimes sent to look for you. This array contains possible class definitions for the vehicles.
a3e_arr_Escape_MotorizedSearchGroup_vehicleClasses pushback "O_APC_Wheeled_02_rcws_F";
	a3e_arr_Escape_MotorizedSearchGroup_vehicleClasses pushback "O_APC_Tracked_02_cannon_F";
	a3e_arr_Escape_MotorizedSearchGroup_vehicleClasses pushback "O_APC_Wheeled_02_rcws_F";
// Total cargo motorized search group vehicle. Each element corresponds to a vehicle (array element) in array a3e_arr_Escape_MotorizedSearchGroup_vehicleClasses above.
a3e_arr_Escape_MotorizedSearchGroup_vehicleClassesMaxCargo pushback 8;
a3e_arr_Escape_MotorizedSearchGroup_vehicleClassesMaxCargo pushback 8;
a3e_arr_Escape_MotorizedSearchGroup_vehicleClassesMaxCargo pushback 8;

// A communication center is guarded by vehicles depending on variable _enemyFrequency. 1 = a random light armor. 2 = a random heavy armor. 3 = a random 
// light *and* a random heavy armor.

// Random array. Light armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_lightArmorClasses pushback "O_MRAP_02_gmg_F";
	a3e_arr_ComCenDefence_lightArmorClasses pushback "O_MRAP_02_hmg_F";
	a3e_arr_ComCenDefence_lightArmorClasses pushback "O_APC_Wheeled_02_rcws_F";
	a3e_arr_ComCenDefence_lightArmorClasses pushback "O_APC_Tracked_02_AA_F";
	a3e_arr_ComCenDefence_lightArmorClasses pushback "O_Truck_03_device_F";
	a3e_arr_ComCenDefence_lightArmorClasses pushback "O_Truck_03_transport_F";
	a3e_arr_ComCenDefence_lightArmorClasses pushback "O_Truck_03_covered_F";
	a3e_arr_ComCenDefence_lightArmorClasses pushback "O_Truck_03_ammo_F";
	a3e_arr_ComCenDefence_lightArmorClasses pushback "O_Truck_03_fuel_F";
	a3e_arr_ComCenDefence_lightArmorClasses pushback "O_Truck_03_medical_F";
	a3e_arr_ComCenDefence_lightArmorClasses pushback "O_Truck_03_repair_F";
// Random array. Heavy armored vehicles guarding the communication centers.
a3e_arr_ComCenDefence_heavyArmorClasses pushback "O_MBT_02_cannon_F";
a3e_arr_ComCenDefence_heavyArmorClasses pushback "O_APC_Tracked_02_cannon_F";


// A communication center contains two static weapons (in two corners of the communication center).
// Random array. Possible static weapon types for communication centers.
a3e_arr_ComCenStaticWeapons pushback "O_HMG_01_high_F";

// A communication center have two parked and empty vehicles of the following possible types.
a3e_arr_ComCenParkedVehicles pushback "O_Truck_02_fuel_F";
	a3e_arr_ComCenParkedVehicles pushback "O_Truck_02_medical_F";
	a3e_arr_ComCenParkedVehicles pushback "O_Truck_02_covered_F";
	a3e_arr_ComCenParkedVehicles pushback "O_Truck_02_transport_F";
	a3e_arr_ComCenParkedVehicles pushback "O_MRAP_02_F";
	a3e_arr_ComCenParkedVehicles pushback "O_MRAP_02_gmg_F";
	a3e_arr_ComCenParkedVehicles pushback "O_MRAP_02_hmg_F";
	a3e_arr_ComCenParkedVehicles pushback "O_Truck_02_ammo_F";
	a3e_arr_ComCenParkedVehicles pushback "O_Truck_02_box_F";
	a3e_arr_ComCenParkedVehicles pushback "O_MRAP_02_F";

// Vehicles, weapons and ammo at ammo depots
// Random array. An ammo depot contains one static weapon of the following types:
a3e_arr_Escape_AmmoDepot_StaticWeaponClasses pushback "O_HMG_01_high_F";
a3e_arr_Escape_AmmoDepot_StaticWeaponClasses pushback "O_GMG_01_high_F";
a3e_arr_Escape_AmmoDepot_StaticWeaponClasses pushback "O_HMG_01_high_F";
a3e_arr_Escape_AmmoDepot_StaticWeaponClasses pushback "O_static_AT_F";
a3e_arr_Escape_AmmoDepot_StaticWeaponClasses pushback "O_static_AA_F";

// An ammo depot have one parked and empty vehicle of the following possible types.
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_MRAP_02_F";
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_MRAP_02_gmg_F";
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_MRAP_02_hmg_F";
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_Truck_02_covered_F";
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_Truck_02_ammo_F";
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_Truck_02_box_F";
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_Truck_03_device_F";
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_Truck_03_transport_F";
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_Truck_03_covered_F";
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_Truck_03_ammo_F";
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_Truck_03_fuel_F";
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_Truck_03_medical_F";
a3e_arr_Escape_AmmoDepot_ParkedVehicleClasses pushback "O_Truck_03_repair_F";


//Random array. Types of helicopters to spawn
a3e_arr_O_attack_heli pushback "O_Heli_Attack_02_F";
a3e_arr_O_attack_heli pushback "O_Heli_Attack_02_black_F";
a3e_arr_O_attack_heli pushback "O_Heli_Light_02_F";

a3e_arr_O_transport_heli pushback "O_Heli_Light_02_unarmed_F";
a3e_arr_O_transport_heli pushback "O_Heli_Transport_04_bench_F";
a3e_arr_O_transport_heli pushback "O_Heli_Transport_04_covered_F";


//////////////////////////////////////////////////////////////////
// EscapeSurprises.sqf and CreateSearchDrone.sqf
// Classnames of drones
//////////////////////////////////////////////////////////////////
a3e_arr_searchdrone pushback "O_UAV_01_F";
a3e_arr_searchdrone pushback "O_UAV_02_CAS_F";
a3e_arr_searchdrone pushback "O_UAV_02_F";
a3e_arr_searchdrone pushback "O_UAV_02_F";
	
//////////////////////////////////////////////////////////////////
// CreateSearchChopper.sqf
// first chopper that's called when you escape
// Two arrays for "Easy" and "Hard" parameter, both used on standard setting
//////////////////////////////////////////////////////////////////
a3e_arr_searchChopperEasy pushback "O_Heli_Light_02_F";
a3e_arr_searchChopperHard pushback "O_Heli_Light_02_F";


//////////////////////////////////////////////////////////////////
// fn_PopulateAquaticPatrol
// boats that are spawned
//////////////////////////////////////////////////////////////////
a3e_arr_AquaticPatrols pushback "O_Boat_Armed_01_hmg_F";

//////////////////////////////////////////////////////////////////
// fn_MortarSite
// mortar spawned in the mortar camps
//////////////////////////////////////////////////////////////////
a3e_arr_MortarSite pushback "O_Mortar_01_F";

//////////////////////////////////////////////////////////////////
// fn_CallCAS.sqf
// Classnames of planes for the CAS module
//////////////////////////////////////////////////////////////////
a3e_arr_CASplane pushback "O_Plane_CAS_02_F";