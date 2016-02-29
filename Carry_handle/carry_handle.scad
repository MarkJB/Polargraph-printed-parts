//Polargraph Carry Handle
//Copyright Mark Benson 2016 CCNC 2016

difference()
{
    hull()
    {
        translate([5,0,0])
        #cylinder(d=30,h=5,$fn=50);
        
        translate([75,0,0])
        #cylinder(d=30,h=5,$fn=50);
        
        translate([20,22,0])
        #cylinder(d=20,h=5,$fn=50);
        
        translate([60,22,0])
        #cylinder(d=20,h=5,$fn=50);
        
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
        cylinder(d=30,h=5,$fn=50);
    
        translate([80-15,0,0])
        cylinder(d=30,h=5,$fn=50);
    
        translate([25,10,0])
        cylinder(d=30,h=5,$fn=50);
    
        translate([80-25,10,0])
        cylinder(d=30,h=5,$fn=50);
    }
}
