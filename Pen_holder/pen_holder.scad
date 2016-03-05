//Polargraph Pen holder and depth setting tool
//Copyright Mark Benson 2016 CCNC 2016

// This is to hold a bunch of pens in their push fit collars and also includes a depth setting tool. With pen cap removed, drop in the pen in its pen collar, losen screw so pen drops to the right depth, tighten screw, remove, replace cap and store in pen holder! (Thats the idea anyway...)

//push fit pen collar from gondola
/*    difference()
    {
        cylinder(r=20/2,h=10,$fn=50);
        cylinder(r=15/2,h=10,$fn=50);
    }*/
    
    
//body (top with pen holder holes)
difference()
{
    hull()
    {
        translate([0,0,0])    
        cylinder(d=20,h=10,$fn=50);
        
        translate([50,0,0])    
        cylinder(d=20,h=10,$fn=50);
        
        translate([50,25,0])    
        cylinder(d=20,h=10,$fn=50);
        
        translate([0,25,0])    
        cylinder(d=20,h=10,$fn=50);
    }

    translate([0,0,0])    
    cylinder(d=15,h=10,$fn=50);

    translate([25,25,0])    
    cylinder(d=15,h=10,$fn=50);

    translate([25,0,0])    
    cylinder(d=15,h=10,$fn=50);

    translate([0,25,0])    
    cylinder(d=15,h=10,$fn=50);
    
    translate([50,0,0])    
    cylinder(d=15,h=10,$fn=50);
    
    translate([50,25,0])    
    cylinder(d=15,h=10,$fn=50);
    
}


//legs?
translate([0,0,10])
difference()
{
    hull()
    {
        translate([0,0,0])    
        cylinder(d=20,h=40,$fn=50);
        
        translate([50,0,0])    
        cylinder(d=20,h=40,$fn=50);
        
        translate([50,25,0])    
        cylinder(d=20,h=40,$fn=50);
        
        translate([0,25,0])    
        cylinder(d=20,h=40,$fn=50);
    }
    
        hull()
    {
        translate([0,0,0])    
        cylinder(d=20-5,h=40,$fn=50);
        
        translate([50,0,0])    
        cylinder(d=20-5,h=40,$fn=50);
        
        translate([50,25,0])    
        cylinder(d=20-5,h=40,$fn=50);
        
        translate([0,25,0])    
        cylinder(d=20-5,h=40,$fn=50);
    }
    
    //side cutouts
    //Wide side
    translate([0,0,10])
    hull()
    {
            translate([10,40,0]) 
            rotate([90,0,0])
            cylinder(d=20-6,h=60,$fn=50);
    
            translate([40,40,0]) 
            rotate([90,0,0])
            cylinder(d=20-6,h=60,$fn=50);
    
            translate([10,40,40]) 
            rotate([90,0,0])
            cylinder(d=20-6,h=60,$fn=50);
    
            translate([40,40,40]) 
            rotate([90,0,0])
            cylinder(d=20-6,h=60,$fn=50);
    }
    
    //side cutouts
    //Narrow side
    translate([10,5,10])
    hull()
    {
            translate([0,5,0]) 
            rotate([0,90,0])
            cylinder(d=20-6,h=60,$fn=50);
    
            translate([0,10,40]) 
            rotate([0,90,0])
            cylinder(d=20-6,h=60,$fn=50);
    
            translate([0,10,0]) 
            rotate([0,90,0])
            cylinder(d=20-6,h=60,$fn=50);
    
            translate([0,5,40]) 
            rotate([0,90,0])
            cylinder(d=20-6,h=60,$fn=50);
    }
}

