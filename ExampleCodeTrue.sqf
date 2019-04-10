//Setting my Money
cmoney = 5000000;

//Executing other init fills/player Funtcions
[] execVM "player\init.sqf";
//[] execVM "missions\init.sqf";
[] execVM "functions\playerfunctions.sqf";
[] execVM "script2.sqf";
//View Distance
setViewDistance 3500;

//Player Variables
player setVariable ["nitro",23];
player setVariable ["takeControlAdded",false];
//creates the Side for Civilians
createCenter civilian;
//Sets enemy
civilian setFriend [west, 0];
civilian setFriend [east, 0];
civilian setFriend [resistance, 0];
west setFriend [civilian, 0];
east setFriend [civilian, 0];
resistance setFriend [civilian, 0];
//My ExecVM's
[] execVM "seatSwitch\seatAction.sqf";
//[] execVM "cleanUp.sqf";
//[] execVM "completedScripts\carGod.sqf";
[] execVM "repairPad\createPad.sqf";
[] execVM "vehicleSpawn\createStore.sqf";
[] execVM "vehicleBoost\vehicleBoost.sqf";
[] execVM "vehicleBoost\boostMonitor.sqf";
[] execVM "motd.sqf";
[] execVM "completedScripts\vehLock.sqf";
[] execVM "completedScripts\earPlugs.sqf";
[] execVM "completedScripts\HVTMarkers.sqf";
[] execVM "seatSwitch\seatController.sqf";
//[] execVM "missions\init.sqf";
//[] execVM "functions\creatVehStoreMarkers.sqf";
[] execVM "premadeBases\init.sqf";
[] execVM "MARKERS\example.sqf";
