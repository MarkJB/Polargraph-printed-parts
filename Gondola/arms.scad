//Polargraph Gondola Arms
//Copyright Mark Benson 2016 CCNC 2016

module hub()
{
    difference()
    {
        union()
        {
            cylinder(r=25/2,h=2,$fn=50);
            translate([0,10,0])
            cylinder(r=10/2,h=2,$fn=50);
        }
        
        cylinder(r=21/2,h=2,$fn=150);
    }
}

module doubleHub()
{
    difference()
    {
        union()
        {
            cylinder(r=25/2,h=7,$fn=50);
            
            translate([0,10,0])
            cylinder(r=10/2,h=7,$fn=50);
        }
        
        cylinder(r=21/2,h=7,$fn=150);
        translate([0,0,2])
        cylinder(r=26/2,h=3,$fn=50);
    }

}
//doubleHub();

module trippleHub()
{
    difference()
    {
        union()
        {
            cylinder(r=25/2,h=12,$fn=50);
            
            translate([0,10,0])
            cylinder(r=10/2,h=12,$fn=50);
        }
        
        #cylinder(r=21/2,h=12,$fn=150);
        translate([0,0,2])
        cylinder(r=26/2,h=8,$fn=50);
    }

}

//trippleHub();

module arm(length)
{
    translate([0,0,1])
    cube([4,length,2], center=true);
}

module ballChainTab()
{
    difference()
    {
        hull()
        {
            cylinder(r=8/2,h=2,$fn=25);
            translate([0,10,0])
            cylinder(r=8/2,h=2,$fn=25);
        }
        
            translate([0,10,0])
            cylinder(r2=5/2,r1=2/2,h=2,$fn=25);
        
            translate([0,5,1])
            cube([2,10,2], center=true);
        
            translate([0,0,0])
            cylinder(r=4/2,h=2,$fn=25);
        
    }
}

module weightTab()
{
    difference()
    {
    translate([0,0,0])
    sphere(d=7,$fn=25);
        
         rotate([90,0,0])
        translate([0,0,0])
        cylinder(d=4,h=8,$fn=25);
    }
    
    difference()
    {
        rotate([90,0,0])
        translate([0,0,0])
        cylinder(d=7,h=8,$fn=25);
    
         rotate([90,0,0])
        translate([0,0,0])
        cylinder(d=4,h=8,$fn=25);
    }

}

//weightTab();

module singleArm()
{
    hub();
    
    translate([0,31,0])
    arm(41);
    
    translate([0,54,0])
    ballChainTab();
}

module doubleArm()
{
    doubleHub();
    
    translate([0,33,2.5])
    arm(40);
    
    translate([0,55.5,2.5])
    ballChainTab();
}

module swingArmCollar()
{
    translate([0,0,0])
    difference()
    {
        cylinder(r=24.5/2,h=4,$fn=50);
        cylinder(r=20.5/2,h=4,$fn=50);
    }
}

module weightArm()
{
    trippleHub();
    
    translate([0,33.5,5])
    arm(41);
    
    translate([0,54,6])
    rotate([0,0,180])
    weightTab();
}



//Uncomment these to render each part

//singleArm();
//doubleArm();
//weightArm();
//swingArmCollar();
