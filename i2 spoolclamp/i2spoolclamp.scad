varilla=11;
pared=4;

difference(){
	union(){
	translate ([0,0,varilla/2+pared*2-2]) cube([varilla+2*pared,varilla+2*pared,varilla+pared*2],center=true);
	translate ([0,0,varilla+varilla/2+pared]) rotate([90,0,0]) cylinder(h=varilla+2*pared, d=varilla+2*pared, center=true, $fn=50);
	}

	union(){
	translate ([0,0,varilla+varilla/2+pared]) rotate([90,0,0]) cylinder(h=30, d=varilla, center=true, $fn=50);
	translate ([0,0,varilla/2+pared]) rotate([0,90,0]) cylinder(h=30, d=varilla, center=true, $fn=50);
	translate ([0,0,varilla/2-1]) cube([30,varilla-1,varilla/2+pared], center=true);
	}
}