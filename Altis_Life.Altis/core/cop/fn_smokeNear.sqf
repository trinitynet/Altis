/*

    File: fn_tearGas.sqf
    Author: larrow
        
    Description: 
    Creates a tear gas effect for smoke grenades. 

*/

if ( !( headgear player in gasMasks ) ) then 
{
	_smokeShell = nearestObject [ getPosATL player, "SmokeShellYellow" ];
	if !( isNull _smokeShell ) then 
    {
		vectorMagnitudeSqr velocity _smokeShell <= 0.5 && { _smokeShell distance player < 10 }
	}
        else
    {
		false
	};
}
    else
{
	false
};