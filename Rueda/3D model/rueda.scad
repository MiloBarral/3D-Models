diametro=50;
grosor=5;
eje=8;
diametrorodamiento=22;
anchorodamiento=7;
anchorueda=10;
anchoradio=8;
grosorradio=8;
numeroradios=6;


// RADIOS
for ( i = [0 : numeroradios-1] )
{
rotate( i * 360 / numeroradios, [0, 0, 1])
translate([0, 18, 0])
cube(anchoradio,diametro/2-diametrorodamiento/2,grosorradio, center=true);
}


// ARO INTERIOR
difference() {
cylinder(h=anchorueda, r=diametrorodamiento/2+grosor, center=true, $fn=128);
translate ([0,0,-anchorodamiento/2]) cylinder(h=anchorodamiento+2, r=diametrorodamiento/2, $fn=128);
cylinder(h=anchorueda+2, r=eje/2,center=true, $fn=128); //agujero eje

}

// ARO EXTERIOR
difference() {
cylinder(h=anchorueda, r=diametro/2, center=true,$fn=128);
translate ([0,0,0]) cylinder(h=anchorueda+2, r=diametro/2-grosor, center=true, $fn=128);
}
