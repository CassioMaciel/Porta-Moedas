use <Parafuso.scad>
use <Porca.scad>
$fs=0.4;
module moeda (diametro,angulo){
    $fs=0.4;
    transladar=70/2-diametro/2-0.2;
    union(){
    rotate([0,0,angulo]) translate([transladar,0,5]) cylinder(h=58,d=diametro,$fn=100);
        altura=59;

    }
}
module mola2 (diametro,angulo){
    transladar=70/2-diametro/2-0.2;
    rotate([0,0,angulo]) translate([transladar,0,4]) cylinder(h=1,d=20);
}
module mola1 (diametro,angulo){
    transladar=70/2-diametro/2-0.2;
    #rotate([0,0,angulo]) translate([transladar,0,4]) cylinder(h=1,d=16);
}
module posi_par(raio,angulo){
    rotate([0,0,angulo])translate([raio,0,65-8-29.9])parafuso(3.5,30,6,3);
    h_porca=2.6;
    rotate([0,0,angulo])translate([raio,0,65-8-h_porca])porca(5.5,h_porca+1);
    
}

gap=1.6;  /*espaço entre a moeda e a borda do circulo*/
a1=0;
a2=72*1-11.3806378224647;
a3=72*2-16.2716291676427;
a4=72*3-13.4748184581455;
a5=72*4-5.28939983521492;
difference(){
cylinder(h=65-8,d1=71,d2=75);
moeda(22+gap,a1);
moeda(20+gap,a2);
moeda(25+gap,a3);
moeda(23+gap,a4);
moeda(27+gap,a5);
mola2(22+gap,a1);
mola1(20+gap,a2);
mola2(25+gap,a3);
mola2(23+gap,a4);
mola2(27+gap,a5);
posi_par(30,(a1+a2)/2);
posi_par(30,(a3+a2)/2);
posi_par(30,(a3+a4)/2);
posi_par(30,(a4+a5)/2);    
posi_par(30,(360+a5)/2);    
}

