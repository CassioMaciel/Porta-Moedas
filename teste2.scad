use <Parafuso.scad>
use <Porca.scad>
difference(){
translate([-7/2,-7/2,0])cube([7,7,10]);
translate([0,0,-30+10-3])parafuso(3.5,30,6,3);
}
