//Polargraph stepper board v2.1 mount
//Copyright Mark Benson 2016 CCNC 2016

//body
difference()
{
    union()
    {
        hull()
        {
            translate([5,5,0])
            cylinder(d=10,h=10,$fn=50);
    
            translate([5,43.5+5,0])
            cylinder(d=10,h=10,$fn=50);
        
        translate([84+5,43.5+5,0])
        cylinder(d=10,h=10,$fn=50);
    
        translate([84+5,5,0])
        cylinder(d=10,h=10,$fn=50);
    }//end hull
    
    }//end union
    
    //pcb lip
    translate([5,5,8])
    cube([84,43.5,12]);
    
    //centre cutout
    translate([5+2,5+2,0])
    cube([84-4,43.5-4,12]);
}  


//pcb mount tabs
difference()
{
    //tabs
    union()
    {
        //Bottom left
        translate([5+4,5+5,0])
        cylinder(d=8,h=8,$fn=25);
        
        //Bottom right
        translate([5+4+76,5+5,0])
        cylinder(d=8,h=8,$fn=25);
        
        //Top left
        translate([5+4,5+5+34,0])
        cylinder(d=8,h=8,$fn=25);
        
        //Top right
        translate([5+4+76,5+5+34,0])
        cylinder(d=8,h=8,$fn=25);
    }
    
    //screw holes
    union()
    {
        //Bottom left
        translate([5+4,5+5,0])
        cylinder(d=3.5,h=12,$fn=25);
        
        //Bottom right
        translate([5+4+76,5+5,0])
        cylinder(d=3.5,h=12,$fn=25);
        
        //Top left
        translate([5+4,5+5+34,0])
        cylinder(d=3.5,h=12,$fn=25);
        
        //Top right
        translate([5+4+76,5+5+34,0])
        cylinder(d=3.5,h=12,$fn=25);
    }
}



//inner self tapper screw tab left
translate([7,(43.5)/2,0]) 
difference()
{
    //tab
    hull()
    {
        translate([5,5,0])
        cylinder(d=10,h=3,$fn=50);

        translate([0,0,0])
        cube([1,10,3]);
    }

    //screw hole
    translate([5,5,0])
    cylinder(d=4,h=3,$fn=25);
}

//inner self tapper screw tab right
translate([84+3,10+(43.5/2),0])
rotate([0,0,180])
difference()
{
    //tab
    hull()
    {
        translate([5,5,0])
        cylinder(d=10,h=3,$fn=50);

        translate([0,0,0])
        cube([1,10,3]);
    }

    //screw hole
    translate([5,5,0])
    cylinder(d=4,h=3,$fn=25);
}

