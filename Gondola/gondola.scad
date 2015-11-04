//include <ISOThread.scad>
//include <ISOThreadUM2.scad>

module penHolderShaft()
{
    difference()
    {
        cylinder(r=16/2,40,$fn=50);
        cylinder(r=12/2,42,$fn=6);
    }
}


module penHolderShaftWithScrewHole()
{
    difference()
    {
        penHolderShaft();
    
        rotate([90,0,90])
        translate([0,30,0])
        cylinder(r=3.2/2, h=10, $fn=15);
    }
}

module penHolder()
{
    union()
    {
        penHolderShaftWithScrewHole();
        //thread_out_pitch((30-6),10.2,6,50);
        /*translate([0,0,8])
        difference()
        {
            cylinder(r=22/2, h=2, $fn=25);
            cylinder(r=12/2, h=2, $fn=25);
        }*/
    }
}

//translate([30,0,0])
//penHolder();

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
    
    %cylinder(d=18,h=20);
}   

//penCollar();

module gondola()
{
    difference()
    {
        union()
        {
            difference()
            {
                cylinder(r=100/2,h=1.5,$fn=50);
                
                translate([0,0,-0.1])
                cylinder(r=90/2,h=2,$fn=50);
            }
            
            translate([0,0,0.75])
            cube([5,95,1.5], center=true);
            
            translate([0,0,0.75])
            cube([95,5,1.5], center=true);    
        }
        
        union()
        {
            cylinder(r=15/2,h=25,$fn=50);
        }
        
    }

    difference()
    {
        cylinder(r=24/2,h=15,$fn=50);
        translate([0,0,0])
        cylinder(r=15/2,h=15,$fn=50);
        hull()
        {
            rotate([90,0,45])
            translate([0,0,-15])
            cylinder(r=6/2,h=30,$fn=50);
                
            rotate([90,0,45])
            translate([0,6,-15])
            cylinder(r=6/2,h=30,$fn=50);
        }
        hull()
        {
        rotate([90,0,135])
        translate([0,0,-15])
        cylinder(r=6/2,h=30,$fn=50);
        
        rotate([90,0,135])
        translate([0,6,-15])
        cylinder(r=6/2,h=30,$fn=50);
        }
    }
    
    translate([0,0,15])
    difference()
    {
        cylinder(r=20/2,h=10,$fn=150);
        cylinder(r=15/2,h=10,$fn=50);
    }

    translate([0,0,10+15])
    penCollar();
    
    translate([21,-21,0])
    
    rotate([0,0,45])
    difference()
    {
        minkowski()
        {
            cylinder(d=3,h=0.5);
            translate([0,0,0.5])
            cube([30,30,1],center=true);
        }
        
            translate([0,10,0.5])
            cube([25,5,3],center=true);
    }
}

//Uncomment these to render each part
//gondola();

//penCollar();
//penHolderShaft();
penHolderShaftWithScrewHole();

//translate([0,0,28])
//penHolder();

