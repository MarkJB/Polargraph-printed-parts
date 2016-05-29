// Polargraph bead chain sprocket/pulley
// CCNC 2016
// Copyright Mark Benson

//Note: the size of the pulley generated by this script will not be exactly the size requested as it needs to accomodate a number of balls equally spaced around the circumference. The script will work out the closest size and tell you in the output.

requiredPulleyDiameter = 32; //The size of pulley you would like
motorSpindleDiameter = 4.6; //Motor shaft size
pulleyThickness = 7.5; //Change this to suit ballChainDiameter
ballChainDiameter = 4; //Diameter of balls (Holes in edge of pulley will be 20% bigger than this)
ballChainSpacing = 0.3; 
//ballChainSpacing = 1.2; //Distance between balls (On metal ball chains this seems to vary a lot between balls also the ball gaps can change. Hopefully if the ball holes are deep enough they will center the balls automatically and this value won't be too critial.
renderSlots = true; //set to true to render slots in pulley body (warning: slow to render.

//Work out how many balls are needed for the desired pully size
//then round up to nearest whole number and use that to work out
//the pully size needed to fit that number of balls

if(requiredPulleyDiameter < 10)
{
	//requiredPulleyDiameter = 10;
	echo("Minimum pulley size should not be below 10");
}

pi = (22/7);
echo("Pi =", pi);

//Circumference of a circle is (pi * d)
pulleyCircumference = (pi*requiredPulleyDiameter);
echo("Pulley circumference of desired pully diameter =", pulleyCircumference);

numberOfBalls = pulleyCircumference / (ballChainDiameter + ballChainSpacing);
echo("Number of balls needed for desired circumference =", numberOfBalls);
neededNumberOfBalls = (ceil(numberOfBalls));
echo("Number of whole balls required =", neededNumberOfBalls);

neededPulleyCircumference = ((ballChainDiameter + ballChainSpacing) * neededNumberOfBalls);
echo("Pulley circumference will need to be", neededPulleyCircumference, "which means approx", neededPulleyCircumference, "mm of travel per revolution");

neededPullyDiameter = neededPulleyCircumference / pi;
echo("You asked for a pulley", requiredPulleyDiameter, "but pulley diameter will need to be", neededPullyDiameter, "to fit", neededNumberOfBalls, "balls equally spaced");

difference()
{

	union()
	{
		//Pulley main body
		cylinder(r=neededPullyDiameter/2, h=pulleyThickness, $fn=50, center=true);

		//Top flange
		translate([0,0,-pulleyThickness/2])
		cylinder(r2=neededPullyDiameter/2, r1=neededPullyDiameter/2+1, h=3, $fn=50, center=true);
		
		//Bottom flange
		translate([0,0,pulleyThickness/2])
		cylinder(r1=neededPullyDiameter/2, r2=neededPullyDiameter/2+1, h=3, $fn=50, center=true);

		//Motor shaft boss
		//translate([0,0,pulleyThickness/2+2])
		//cylinder(r=motorSpindleDiameter/2+2, , h=pulleyThickness, $fn=25, center=true);
	}//union

	union()
	{
		//Ball chain 'balls' cutouts
		for ( i = [0 : neededNumberOfBalls] )
		{
		  	rotate( i * 360 / (neededNumberOfBalls), [0, 0, 1])
		   translate([neededPullyDiameter/2, 0, 0])
		  	sphere(r = (ballChainDiameter/2)*1.2, $fn=25, center=true);
		}

		//Ball chain 'chain' cutouts
		rotate_extrude(convexity = 10, $fn = 50)
		translate([neededPullyDiameter/2, 0, 0])
		circle(r = 1, $fn = 25);
		
		//Motor shaft cutout
		translate([0,0,pulleyThickness/2+2])
		cylinder(r=motorSpindleDiameter/2+0.2, , h=pulleyThickness+20, $fn=25, center=true);

		//These are not 100% parametric so will need to be adjusted to fit your pulley
		//manually. If used, be prepared to wait a while for a render.
		//Pulley Slots
		if(renderSlots == true && requiredPulleyDiameter > 16)
		{
			//Pully curved slot (1 of 3)
			for ( i = [0 : 15] )
			{
			   rotate( i * 4 , [0, 0, 1])
			   translate([requiredPulleyDiameter/3, 0, 0])
			   cylinder(r = (requiredPulleyDiameter/12)*0.85, h=20, $fn=15, center=true);
			}
			
			//Pully curved slot (2 of 3)
			for ( i = [0 : 15] )
			{
			   rotate( i * 4 + 120, [0, 0, 1])
			   translate([requiredPulleyDiameter/3, 0, 0])
			   cylinder(r = (requiredPulleyDiameter/12)*0.85, h=20, $fn=15, center=true);
			}
	
			//Pully curved slot (3 of 3)
			for ( i = [0 : 15] )
			{
			   rotate( i * 4 + 240, [0, 0, 1])
			   translate([requiredPulleyDiameter/3, 0, 0])
			   cylinder(r = (requiredPulleyDiameter/12)*0.85, h=20, $fn=15, center=true);
			}
		}//endif

	}//Union

}//Difference