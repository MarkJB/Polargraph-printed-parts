//Strenthening rib

//By Mark Benson 2015
//CCNC

//Side strengthening rib
module strengtheningRib()
{
polyhedron(
  points=[ [0,0,0],[2,0,0],[2,10,0],[0,10,0],[0,10,10],[2,10,10]  ],
  faces=[ [0,1,3],[1,2,3],[0,3,4],[0,4,1],[1,4,5],[1,5,2],[2,5,4],[2,4,3] ]
 );
}
