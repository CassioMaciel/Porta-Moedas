use <Parafuso.scad>
use <Porca.scad>
$fs=0.4;
module tampa2(diametro){
difference(){
cylinder(h=8,d=diametro);   
cylinder(h=5,d=20);      
}
}
module tampa1(diametro){
difference(){
cylinder(h=8,d=diametro);   
cylinder(h=5,d=16);      
}
}

translate([0,0,0])tampa2(22);
translate([22,5,0])tampa1(20);
translate([50,0,0])tampa2(25);
translate([10,25,0])tampa2(23);
translate([38,25,0])tampa2(27);