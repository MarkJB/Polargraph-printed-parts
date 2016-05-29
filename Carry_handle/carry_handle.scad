//polargraph Carry Handle
//Copyright Mark Benson 2016 CCNC 2016

difference()
{
    hull()
    {
        translate([15,0,0])
        cylinder(d=35,h=5,$fn=50);
        
        translate([65,0,0])
        cylinder(d=35,h=5,$fn=50);
            
        translate([0,-30,0])
        cylinder(d=10,h=5,$fn=50);
        
        translate([80,-30,0])
        cylinder(d=10,h=5,$fn=50);
    }

        translate([0,-30,0])
        cylinder(d=4,h=5,$fn=50);

        translate([40,-21,0])
        cylinder(d=4,h=5,$fn=50);
        
        translate([80,-30,0])
        cylinder(d=4,h=5,$fn=50);

    hull()
    {
        translate([15,0,0])
        cylinder(d=25,h=5,$fn=50);
    
        translate([80-15,0,0])
        cylinder(d=25,h=5,$fn=50);

    }
}
