waituntil {!isnull (finddisplay 46)};
(findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call BL_FNC_BOOST;false;"];

BL_FNC_BOOST={
	_max=140;
	_veh=vehicle player;
	if(_veh==player || _veh isKindOf "Air" || _veh isKindOf "Tank" || _veh isKindOf "MMT_USMC" || _veh isKindOf "MMT_Civ" || _veh isKindOf "Old_bike_TK_INS_EP1" || _veh isKindOf "Old_bike_TK_CIV_EP1" || _veh isKindof "Old_moto_TK_Civ_EP1")exitwith{};
	//if(!isOnRoad _veh)exitWith{};
	_nos=_veh getvariable "nitro";
	if(isEngineOn _veh)then{
		switch(_this)do{
			case 42:{
				if(isEngineOn _veh && !isNil "_nos")then{
					if((speed _veh < _max)&&driver _veh==player)then{
						_vel=velocity _veh;
						_dir=getDir _veh;
						_veh setvelocity [(_vel select 0)+.2*(sin _dir),(_vel select 1)+.2*(cos _dir),(_vel select 2)-.1];
					};
				}else{
					_veh setvariable ["nitro",1,true];
				};
			};
		};
	};
};
