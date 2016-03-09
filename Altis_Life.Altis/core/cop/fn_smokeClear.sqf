/*

    File: fn_tearGas.sqf
    Author: larrow
        
    Description: 
    Creates a tear gas effect for smoke grenades. 

*/
    
//Reset the player variable.
player setVariable [ "inSmoke", false ];

//Clear effects.
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 10;
resetCamShake;
20 fadeSound 1;//time fadeSound volume