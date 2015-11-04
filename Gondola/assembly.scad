//assembly

include <arms.scad>
include <gondola.scad>

gondola();

color("GREEN")
translate([0,0,28])
penHolder();

color("BLUE")
rotate([0,0,0])
translate([0,0,20.4])
singleArm();

color("RED")
rotate([0,0,90])
translate([0,0,18.2])
doubleArm();

color("GREEN")
rotate([0,0,180+45])
translate([0,0,16])
weightArm();

color("ORANGE")
translate([0,0,26.5])
swingArmCollar();