//Polargraph Depth setting tool
//Copyright Mark Benson 2016 CCNC 2016

//Use this to set the pen at the correct height in the pen holder.

//push fit pen collar from gondola
/*    difference()
    {
        cylinder(r=20/2,h=10,$fn=50);
        cylinder(r=15/2,h=10,$fn=50);
    }*/

difference()
{
    //body of depth setting tool    
    union()
    {
        difference()
        {
            //body
            hull()
            {
                translate([10,-15,0])
                cube([7.5,30,10]);
        
                cylinder(r=20/2,h=10,$fn=50);
        
            }
            
            //slot
            translate([9.5,-11,0])
            cube([6,22,10]);
            
            //hole
            cylinder(r=15/2,h=10,$fn=50);
        }

    //screw lock on side of body
    translate([7.5,12,0])
    cube([10,10,10]);
    }
    
//Nut slot cutout
translate([15-6,16,5])
cube([6,4,10]);

//Nut cutout
translate([15-6/2,20,5])
rotate([90,0,0])
cylinder(d=6,h=4,$fn=6);

//Screw hole cutout
translate([15-5.8/2,25,5])
rotate([90,0,0])
cylinder(d=3,h=30,$fn=25);
}


/*
//slide
rotate([90,90,0])
union()
{
translate([10,-10,-90])
cube([4.5,19.8,100]);

translate([-8,-10,-90])
cube([18,19.8,4.5]);
}*/