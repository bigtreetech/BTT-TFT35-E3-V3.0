// Opening for WIFI-module 
$wifi = "yes"; //[yes,no]
$bwifi = ($wifi == "yes");
// Opening for extras
$extras = "no"; //[yes,no]
$bextras =($extras == "yes");
// Opening for SWD
$swd = "yes"; //[yes,no]
$bswd = ($swd == "yes");
//Opening for EXP1 and EXP2
$exp12 = "yes"; //[yes,no]
$bexp12 = ($exp12 == "yes");





module block()
{
minkowski() 
{cube([16.5,14,5],center=true); sphere (d=2.5);};
};

module block2()
{
minkowski() 
{cube([18.75,14,5],center=true); sphere (d=2.5);};
};
$fn=60;
difference()
{
import("E3_Pro_TFT35_Rear_Case.stl");
translate ([80.05,7.5,-20]) block2();
if ($bexp12) {translate ([39,7.5,-20]) block();
translate ([59.0,7.5,-20]) block();};

rotate([90,0,0]) translate ([84,-17.5,-27]) block();    
if ($bswd) rotate([90,0,0]) translate ([84,-17.5,-17]) block();
if ($bwifi) translate([7,10.25,-16]) rotate([0,0,90]) cube([17,25,15],center=true);
if ($bextras) {
        translate([83,70.5,-16]) cube([10,6,15],center=true);
        translate([83-13,70.5,-16]) cube([10,6,15],center=true);
        translate([83-34,70.5,-16]) cube([10,6,15],center=true);
        translate([83-48,70.5,-16]) cube([10,6,15],center=true);
        translate([91,58,-16]) rotate([0,0,90]) cube([10,6,15],center=true);
};

};
