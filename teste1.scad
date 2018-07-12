use <Parafuso.scad>
use <Porca.scad>
hb=35;

difference(){
translate([-7/2,-7/2,0])cube([7,7,hb]);
translate([0,0,hb-29.9])parafuso(3.5,30,6,3);
translate([0,0,hb-2.6])porca(5.5,2.6);
}