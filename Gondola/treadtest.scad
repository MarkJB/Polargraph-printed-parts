//thread test

include <ISOThread.scad>

module penHolder()
{
    union()
    {
        
        cylinder(d=18,h=20.2,$fn=50);
        
        translate([0,0,0])
        cylinder(r=30/2, h=10, $fn=25);
        
        translate([0,0,10])
        difference()
        {
            translate([0,0,-6])
            thread_out_pitch((30-6),30,6,50);
            
            //translate([0,0,-10])
            //cylinder(r=30/2, h=10, $fn=25);
            
            translate([0,0,10.2])
            #cylinder(r=30/2, h=15, $fn=25);
        }
    }
}

translate([35,0,0])
penHolder();

module penCollar()
{
    difference()
    {
        cylinder(r=30/2,10.2,$fn=150);
        cylinder(r=(30-6)/2,10.2,$fn=50);
    }
    
    difference()
    {
        translate([0,0,-5])
        thread_in_pitch((30-6),30,6,50);
    
        translate([0,0,-20])
        cylinder(r=20,h=20); 
     
        translate([0,0,10.2])
        cylinder(r=20,h=20);    
    }
    
    //%cylinder(d=18,h=20);
}   

penCollar();