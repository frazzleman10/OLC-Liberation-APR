/*
    File: custom.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-10-07
    Last Update: 2024-11-16
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
    Custom player preset for a 2010 GWOT setting

    Needed Mods:
    - Perals AH1Z
    - XYI USMC
	- RHSUSAF
	- USAF Utility
	- USAF Fighters
    - OLC Extra
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
KPLIB_b_fobBuilding     = "Land_Cargo_HQ_V1_F";                         // This is the main FOB HQ building.
KPLIB_b_fobBox          = "B_Slingload_01_Cargo_F";                     // This is the FOB Container.
KPLIB_b_fobTruck        = "B_Truck_01_box_F";                           // This is the FOB Vehicle.
KPLIB_b_arsenal         = "B_supplyCrate_F";                            // This is the virtual arsenal as portable supply crates.
KPLIB_b_mobileRespawn   = ["B_Truck_01_medical_F","B_T_Truck_01_medical_F"];
KPLIB_b_potato01        = "rhsusf_CH53E_USMC_D";                        // This is the mobile respawn huron, however it can be defined as anything if the mobile respawn functionality is disabled.
KPLIB_b_crewUnit        = "B_crew_F";                                   // This defines the crew for vehicles.
KPLIB_b_heliPilotUnit   = "B_Helipilot_F";                              // This defines the pilot for helicopters.
KPLIB_b_crewStatic      = "B_Soldier_F";                                // This defines the crew for static weapons and light vehicles.
KPLIB_b_addHeli         = "RHS_UH1Y_d";                                 // This is an additional helicopter
KPLIB_b_addBoat         = "rhsusf_m1151_m2_v3_usmc_d";                  // These are boats, however you can put any vehicle here.
KPLIB_b_logiTruck       = "B_Truck_01_transport_F";                     // These are the trucks which are used in the logistic convoy system. Unused.
KPLIB_b_smallStorage    = "ContainmentArea_02_sand_F";                  // A small storage area for resources.
KPLIB_b_largeStorage    = "ContainmentArea_01_sand_F";                  // A large storage area for resources.
KPLIB_b_logiStation     = "Land_RepairDepot_01_tan_F";                  // The building defined to unlock FOB recycling functionality.
KPLIB_b_airControl      = "B_Radar_System_01_F";                        // The building defined to unlock FOB air vehicle functionality.
KPLIB_b_slotHeli        = "Land_HelipadSquare_F";                       // The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_b_slotPlane       = "Land_TentHangar_V1_F";                       // The hangar used to increase the GLOBAL fixed-wing cap.
KPLIB_b_crateSupply     = "CargoNet_01_box_F";                          // This defines the supply crates, as in resources.
KPLIB_b_crateAmmo       = "B_CargoNet_01_ammo_F";                       // This defines the ammunition crates.
KPLIB_b_crateFuel       = "CargoNet_01_barrels_F";                      // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
KPLIB_b_infantry = [
];

KPLIB_b_vehLight = [
    ["rhsusf_m1151_m2_v3_usmc_d",250,250,250],             //M1151A1 MCTAGS/M2
    ["rhsusf_m1151_m240_v3_usmc_d",250,150,250],           //M1151A1 MCTAGS/M240
    ["rhsusf_m1151_mk19_v3_usmc_d",250,350,250],           //M1151A1 MCTAGS/MK19
    ["rhsusf_m1045_d_s",250,500,250],                      //M1045A2 M220A2
    ["rhsusf_m1151_usmc_d",150,0,250],                     //M1151A1
    ["rhsusf_CGRCAT1A2_M2_usmc_d",350,250,350],            //CGR CAT1 A2 MCTAGS/M2
    ["rhsusf_CGRCAT1A2_Mk19_usmc_d",350,350,350],          //CGR CAT1 A2 MCTAGS/MK19
    ["rhsusf_CGRCAT1A2_usmc_d",250,0,350],                 //CGR CAT1 A2
    ["rhsusf_m1240a1_m2_usmc_d",350,250,350],              //M1240 O-GPK/M2
    ["rhsusf_m1240a1_m240_usmc_d",350,150,350],            //M1240 O-GPK/M240
    ["rhsusf_m1240a1_mk19_usmc_d",350,350,350],            //M1240 O-GPK/MK19
    ["rhsusf_m1240a1_m2crows_usmc_d",450,250,350],         //M1277 CROWS/M2
    ["rhsusf_m1240a1_mk19crows_usmc_d",450,350,350],       //M1277 CROWS/MK19
    ["rhsusf_m1240a1_usmc_d",350,350,350],                 //M1240
	["B_Truck_01_cargo_F",250,0,400],                      //HEMTT
    ["B_Truck_01_fuel_F",250,0,1000],                      //HEMTT (Fuel)
    ["B_Truck_01_ammo_F",250,1000,400],                    //HEMTT (Ammo)
    ["B_Truck_01_Repair_F",500,0,400]                      //HEMTT (Repair)
];

KPLIB_b_vehHeavy = [
    ["UK3CB_B_AAV_US_DES",400,550,400],                   //AAVP-7A1
    ["UK3CB_B_LAV25_US_DES",500,500,500],                 //LAV-25
    ["rhsusf_m1a1fep_d",650,650,650]                      //M1A1FEP 

];

KPLIB_b_vehAir = [
    ["rhsusf_CH53E_USMC_D",500,0,500],                    //CH-53E Super Stallion
    ["rhsusf_CH53e_USMC_D_cargo",500,0,500],              //CH-53E Super Stallion (Cargo)
    ["rhsusf_CH53E_USMC_GAU21_D",500,500,500],            //CH-53E Super Stallion (GAU-21)
    ["RHS_UH1Y_FFAR_d",350,500,350],                      //UH-1Y Venom
    ["RHS_UH1Y_FFAR_d",400,550,350],                      //UH-1Y Venom (MG)
    ["RHS_UH1Y_UNARMED_d",300,0,350],                     //UH-1Y Venom (Unarmed)
    ["Peral_AH1Z",800,800,800],                           //AH-1Z Viper
    ["FIR_F18D_VMFAAW533",1200,1200,1200],                //F18D Hornet (Dual Seater)
    ["FIR_F18C_VMFA251",1200,1200,1200],                  //F18C Hornet
    ["USAF_A10",750,750,750],                             //A-10C Thunderbolt II
    ["USAF_MQ9",500,500,500],                             //MQ-9 Reaper
    ["USAF_C130J",600,0,800],                             //C130J Super Hercules
    ["USAF_C130J_Cargo",600,0,800]                        //C130J Super Hercules (Cargo) 
];

KPLIB_b_vehStatic = [
    ["RHS_Stinger_AA_pod_USMC_D",250,250,0],              //Stinger Chair
	["UK3CB_B_Static_M240_Elcan_High_USMC_D",100,100,0],  //M240 High
	["UK3CB_B_Static_M240_Elcan_Low_USMC_D",100,100,0],   //M240 Low
	["RHS_M2StaticMG_USMC_D",150,150,0],                  //M2 High
	["RHS_M2StaticMG_MiniTripod_USMC_D",150,150,0],       //M2 Low
	["RHS_TOW_TriPod_USMC_D",400,400,0],                  //TOW ATGM
	["RHS_MK19_TriPod_USMC_D",200,200,0],                 //MK19
	["tbd_m119",650,650,0],                               //M119A3 Howitzer
	["RHS_M252_USMC_D",450,450,0]                         //M252 Mortar
];

KPLIB_b_objectsDeco = [
    ["Land_Cargo_House_V1_F",0,0,0],
    ["Land_Cargo_Patrol_V1_F",0,0,0],
    ["Land_Cargo_Tower_V1_F",0,0,0],
    ["Flag_NATO_F",0,0,0],
    ["Flag_US_F",0,0,0],
    ["Flag_UK_F",0,0,0],
    ["Flag_White_F",0,0,0],
    ["Land_Medevac_house_V1_F",0,0,0],
    ["Land_Medevac_HQ_V1_F",0,0,0],
    ["Flag_RedCrystal_F",0,0,0],
    ["CamoNet_BLUFOR_F",0,0,0],
    ["CamoNet_BLUFOR_open_F",0,0,0],
    ["CamoNet_BLUFOR_big_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_LampSolar_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
    ["Land_HelipadCircle_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
    ["MapBoard_altis_F",0,0,0],
    ["MapBoard_stratis_F",0,0,0],
    ["MapBoard_seismic_F",0,0,0],
    ["Land_Pallet_MilBoxes_F",0,0,0],
    ["Land_PaperBox_open_empty_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],
    ["Land_PaperBox_closed_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_Workbench_01_F",0,0,0],
    ["Land_GasTank_01_blue_F",0,0,0],
    ["Land_GasTank_01_khaki_F",0,0,0],
    ["Land_GasTank_01_yellow_F",0,0,0],
    ["Land_GasTank_02_F",0,0,0],
    ["Land_BarrelWater_F",0,0,0],
    ["Land_BarrelWater_grey_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Land_HBarrier_Big_F",0,0,0],
    ["Land_HBarrierWall4_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrierWall_corner_F",0,0,0],
    ["Land_HBarrierWall_corridor_F",0,0,0],
    ["Land_HBarrierTower_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_Concrete_SmallWall_4m_F",0,0,0],
    ["Land_Concrete_SmallWall_8m_F",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_CncWall1_F",0,0,0],
    ["Land_CncWall4_F",0,0,0],
    ["Land_sign_entry_en_pl_F",0,0,0],
    ["Land_sign_leave_en_pl_F",0,0,0],
    ["Land_Sign_noentry_big_en_pl_F",0,0,0],
    ["Land_Razorwire_F",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0],
	["Misc_Backpackheap",0,0,0],
	["USMC_WarfareBVehicleServicePoint",0,0,0],
	["Flag_CW_US_MARINES",0,0,0],
	["Land_sign_noentry_small_en_pl_F",0,0,0],
	["Land_sign_uwaga_pl_1_F",0,0,0],
	["Land_sign_uwaga_pl_2_F",0,0,0],
	["Gunrack1",0,0,0],
	["GunrackUS_EP1",0,0,0],
	["Land_ConnectorTent_01_floor_light_F",0,0,0],
	["Land_ConnectorTent_01_floor_dark_F",0,0,0],
	["Land_MedicalTent_01_MTP_closed_F",0,0,0],
	["Land_MedicalTent_01_NATO_generic_closed_F",0,0,0],
	["Land_MedicalTent_01_NATO_generic_open_F",0,0,0],
	["Land_MedicalTent_01_NATO_generic_outer_F",0,0,0],
	["Land_tent_east",0,0,0],
	["RuggedTerminal_01_communications_hub_F",0,0,0],
	["RuggedTerminal_01_communications_F",0,0,0],
	["RuggedTerminal_02_communications_F",0,0,0],
	["Land_Computer_01_olive_F",0,0,0],
	["Land_TripodScreen_01_dual_v1_F",0,0,0],
	["Land_TripodScreen_01_dual_v2_F",0,0,0],
	["Land_IPPhone_01_olive_F",0,0,0],
	["Land_laptop_03_closed_olive_F",0,0,0],
	["Land_Laptop_03_olive_F",0,0,0],
	["Land_TripodScreen_01_large_F",0,0,0],
	["Land_MultiScreenComputer_01_olive_F",0,0,0],
	["Land_MultiScreenComputer_01_closed_olive_F",0,0,0],
	["Land_PortableGenerator_01_F",0,0,0],
	["Land_PortableServer_01_olive_F",0,0,0],
	["Land_Router_01_olive_F",0,0,0],
	["Land_SolarPanel_04_olive_F",0,0,0],
	["RuggedTerminal_01_F",0,0,0],
	["Land_DeskChair_01_olive_F",0,0,0],
	["Land_PortableCabinet_01_medical_F",0,0,0],
	["Land_PortableCabinet_01_4drawers_olive_F",0,0,0],
	["Land_PortableCabinet_01_7drawers_olive_F",0,0,0],
	["Land_PortableCabinet_01_bookcase_olive_F",0,0,0],
	["Land_PortableDesk_01_olive_F",0,0,0],
	["Land_Fire_barrel",0,0,0],
	["Land_WoodPile_F",0,0,0],
	["Land_Barrack2_EP1",0,0,0],
	["Land_Mil_Barracks_i_EP1",0,0,0],
	["acre_oe_303",0,0,0]
];

KPLIB_b_vehSupport = [
    [KPLIB_b_fobBox,300,500,0],
    [KPLIB_b_fobTruck,300,500,75],
    [KPLIB_b_smallStorage,0,0,0],
    [KPLIB_b_largeStorage,0,0,0],
    [KPLIB_b_logiStation,250,0,0],
    [KPLIB_b_airControl,500,0,0],
    [KPLIB_b_slotHeli,250,0,0],
    [KPLIB_b_slotPlane,500,0,0],
    ["tbd_mortar_82mm_box_cumul",0,25,0],
    ["tbd_mortar_82mm_box_he",0,25,0],
    ["tbd_mortar_82mm_box_illum",0,25,0],
    ["tbd_mortar_82mm_box_smoke",0,25,0],
    ["tbd_mortars_105mm_box_dpicm",0,50,0],
    ["tbd_mortars_105mm_box",0,50,0],
    ["tbd_mortars_105mm_box_laser",0,50,0],
    ["tbd_mortars_105mm_box_smoke",0,50,0],
	["B_supplyCrate_F",0,0,0],
    ["B_Slingload_01_Repair_F",275,0,0],
    ["B_Slingload_01_Fuel_F",75,0,200],
    ["B_Slingload_01_Ammo_F",75,200,0]
];

/*

    --- Everything past this point is unused ---

    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
KPLIB_b_squadLight = [
];

// Heavy infantry squad.
KPLIB_b_squadInf = [
];

// AT specialists squad.
KPLIB_b_squadAT = [
];

// AA specialists squad.
KPLIB_b_squadAA = [
];

// Force recon squad.
KPLIB_b_squadRecon = [
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
KPLIB_b_squadPara = [
];

/*
    --- Vehicles to unlock ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
KPLIB_b_vehToUnlock = [
];
