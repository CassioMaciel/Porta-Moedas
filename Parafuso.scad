module parafuso(diametro,altura,diametro_cabeca,altura_cabeca){
    $fs=0.04;
    /*
https://projetosmecanicos.files.wordpress.com/2011/11/din-965-a.png
http://www.inoxpar.com.br/img/gallerypage/PORCA_SEXTAVADA_DIN_934.jpg
*/
cylinder(h=altura,d=diametro);
translate([0,0,altura])cabeca(diametro_cabeca,altura_cabeca);
}
module cabeca(diametro,altura){
cylinder(h=altura,d=diametro);
}
