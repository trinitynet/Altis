/*

    File: fn_tearGas.sqf
    Author: larrow
        
    Description: 
    Creates a tear gas effect for smoke grenades. 

*/
    
//Set a variable on the player so we know we are in smoke.
player setVariable [ "inSmoke", true ];

sleep 1;//Give the smoke grenade a chance to release "tear gas" before applying effects.

//Do effect.
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [15];
"dynamicBlur" ppEffectCommit 5;
enableCamShake true;
addCamShake [10, 45, 10];//addCamShake [power, duration, frequency]
5 fadeSound 0.4;//time fadeSound volume

//While were in smoke.
while { [] call life_fnc_smokeNear } do {

	//Damage the player.
	player setDamage (damage player + 0.02);
	sleep 2.5;
};

//We are no longer in smoke.
[] call life_fnc_smokeClear;