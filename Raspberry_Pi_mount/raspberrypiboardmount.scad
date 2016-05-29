//Raspberry Pi board mount
//CCBYNCSA Copyright Mark Benson 2016

width=85;
depth=56;
height=10;
mountingHoleClearance = 6;
mountingHoleLeftClearance = 3.5;
mountingHoleWidth = 58;
mountingHoleDepth = 49;
cornerRadius=3;
facets=50;
mountWallThickness=5; //How much thicker than the pi will this thing be?
mountLipThickness=1; //How thick will the inner lip be?

//translate([cornerRadius,cornerRadius,0])
//%cube([width,depth,height]);

difference()
{
//Board mount base
translate([0,0,0])
hull()
{
    translate([cornerRadius-mountWallThickness,cornerRadius-mountWallThickness,0])
    cylinder(r=cornerRadius, h=height, $fn=facets);
    
    translate([width-cornerRadius+mountWallThickness,cornerRadius-mountWallThickness,0])
    cylinder(r=cornerRadius, h=height, $fn=facets);
    
    translate([width-cornerRadius+mountWallThickness,depth-cornerRadius+mountWallThickness,0])
    cylinder(r=cornerRadius, h=height, $fn=facets);
    
    translate([cornerRadius-mountWallThickness,depth-cornerRadius+mountWallThickness,0])
    cylinder(r=cornerRadius, h=height, $fn=facets);
}


//Pi board cutout
translate([0,0,8])
hull()
{
    translate([cornerRadius,cornerRadius,0])
    cylinder(r=cornerRadius, h=height, $fn=facets);
    
    translate([width-cornerRadius,cornerRadius,0])
    cylinder(r=cornerRadius, h=height, $fn=facets);
    
    translate([width-cornerRadius,depth-cornerRadius,0])
    cylinder(r=cornerRadius, h=height, $fn=facets);
    
    translate([cornerRadius,depth-cornerRadius,0])
    cylinder(r=cornerRadius, h=height, $fn=facets);
}

//Material cutout (remove material that we don't need to print)
translate([0,0,0])
hull()
{
    translate([cornerRadius+mountLipThickness,cornerRadius+mountLipThickness,0])
    cylinder(r=cornerRadius, h=height, $fn=facets);
    
    translate([width-cornerRadius-mountLipThickness,cornerRadius+mountLipThickness,0])
    cylinder(r=cornerRadius, h=height, $fn=facets);
    
    translate([width-cornerRadius-mountLipThickness,depth-cornerRadius-mountLipThickness,0])
    cylinder(r=cornerRadius, h=height, $fn=facets);
    
    translate([cornerRadius+mountLipThickness,depth-cornerRadius-mountLipThickness,0])
    cylinder(r=cornerRadius, h=height, $fn=facets);
}

//cutout for SD card
translate([-10,depth/2-7,6])
cube([25,14,4]);

//cutouts for mounting holes (clear space for screw heads)

translate([mountingHoleLeftClearance,mountingHoleLeftClearance,0])
cylinder(r=cornerRadius, h=height, $fn=facets);

translate([mountingHoleLeftClearance+mountingHoleWidth,mountingHoleLeftClearance,0])
cylinder(r=cornerRadius, h=height, $fn=facets);

translate([mountingHoleLeftClearance+mountingHoleWidth,mountingHoleLeftClearance+mountingHoleDepth,0])
cylinder(r=cornerRadius, h=height, $fn=facets);

translate([mountingHoleLeftClearance,mountingHoleLeftClearance+mountingHoleDepth,0])
cylinder(r=cornerRadius, h=height, $fn=facets);



}//end of main difference

//inner self tapper screw tab left
translate([1,depth/2-5,0]) 
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
translate([width-1,depth/2+5,0])
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
