// Polargraph NEMA17 motor mounts
// CCNC 2016
// Copyright Mark Benson

include<strengthening_rib.scad> //strengtheningRib();

difference()
{
    cube([46,42,2],center=true);
    
    translate([0,0,-2])
    cylinder(r=22/2,h=4,$fn=50);
    
    translate([31/2,31/2,-2])
    cylinder(r=3.3/2,h=4,$fn=50);

    translate([-31/2,31/2,-2])
    cylinder(r=3.3/2,h=4,$fn=50);

    translate([31/2,-31/2,-2])
    cylinder(r=3.3/2,h=4,$fn=50);

    translate([-31/2,-31/2,-2])
    cylinder(r=3.3/2,h=4,$fn=50);    
}


difference()
{
    translate([0,42/2+1,5])
    cube([66,2,12],center=true);

    translate([46/2+5,42/2+3,5])
    rotate ([90,0,0])
    cylinder(r=3.3/2,h=4,$fn=50);

    translate([-46/2-5,42/2+3,5])
    rotate ([90,0,0])
    cylinder(r=3.3/2,h=4,$fn=50);    
}



translate([42/2,42/2-10,1])
strengtheningRib();

translate([-42/2-2,42/2-10,1])
strengtheningRib();