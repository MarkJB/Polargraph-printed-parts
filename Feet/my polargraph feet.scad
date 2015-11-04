//Polargraph board feet

//Mark Benson CCNC 2015

//What sort of feet are these?

module cap()
{
    rotate([90,0,0])
    difference()
    {
        union()
        {
            translate([0,(31/2)/2,0])
            cube([31,31/2,60], center=true);
    
            translate([0,31/2,0])
            cylinder(r=31/2, h=60, $fn=50, center=true);
        }
        
        union()
        {
            translate([0,31/2,1])
            cylinder(r=25/2, h=58, $fn=50, center=true);        
        }
    }
}

//Side strengthening rib
module strengtheningRib()
{
polyhedron(
  points=[ [0,0,0],[3,0,0],[3,10,0],[0,10,0],[0,10,10],[3,10,10]  ],
  faces=[ [0,1,3],[1,2,3],[0,3,4],[0,4,1],[1,4,5],[1,5,2],[2,5,4],[2,4,3] ]
 );
}

difference()
{
    union()
    {
        rotate([0,0,5])
        translate([0,-29,0])
        cap();
        
        rotate([0,0,-5-180])
        translate([0,-29,0])
        cap();
        
        translate([-34,0,31/2])
        cube([60,31,31], center=true);
    }

    union()
    {
        translate([-60,0,31/2])
        cube([70,12.2,31], center=true);

        translate([-55,50,31/2])
        rotate([90,0,0])
        cylinder(r=5/2, h=100, $fn=25);
    }
}

translate([-10,55,6])
rotate([0,90,180])
scale([2,4,4])
strengtheningRib();

mirror([0,1,0])
translate([-10,55,6])
rotate([0,90,180])
scale([2,4,4])
strengtheningRib();