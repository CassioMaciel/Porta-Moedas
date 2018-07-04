use <Parafuso.scad>
use <Porca.scad>
module moeda (diametro,angulo){
    $fs=0.4;
    transladar=70/2-diametro/2-0.2;
    hull(){
    rotate([0,0,angulo]) translate([transladar,0,0]) cylinder(h=4,d=diametro,$fn=100);
    rotate([0,0,angulo]) translate([50,0,0]) cylinder(h=4,d=diametro,$fn=100);
    }
    #hull(){
      rotate([0,0,angulo]) translate([transladar,0,0])cylinder(h=4,d=diametro,$fn=100);
    rotate([0,0,angulo]) translate([transladar,0,0]) rotate([0,10,0])cylinder(h=4,d=diametro,$fn=100);
     }
    hull(){
    rotate([0,0,angulo])translate([transladar,0,4])cylinder(h=4,d=19,$fn=100);
    rotate([0,0,angulo]) translate([50,0,4]) cylinder(h=4,d=19,$fn=100);
    }
}

module posi_par(raio,angulo){
    rotate([0,0,angulo])translate([raio,0,-33+8])parafuso(3.5,30,6,3);
}
$fs=0.4;
gap=1.6;  /*espaço entre a moeda e a borda do circulo*/

a1=0;
a2=72*1-11.3806378224647;
a3=72*2-16.2716291676427;
a4=72*3-13.4748184581455;
a5=72*4-5.28939983521492;




difference(){
cylinder(h=8,d1=70,d2=95);
moeda(22+gap,a1);
moeda(20+gap,a2);
moeda(25+gap,a3);
moeda(23+gap,a4);
moeda(27+gap,a5);
posi_par(30,(a1+a2)/2);
posi_par(30,(a3+a2)/2);
posi_par(30,(a3+a4)/2);
posi_par(30,(a4+a5)/2);    
posi_par(30,(360+a5)/2);  
}