module donut (od,id,h){
    difference(){    
        cylinder (h=h, r=od/2, $fn=24);
        cylinder (h=h+5, r=id/2, $fn=24);
    }
}

id=12;
od=18;

rotate([0,180,0]){
translate([0,0,0]) rotate([0,0,0]){
	difference(){
    union(){
        translate ([-12,0,0])     donut(12,6,6);   		// agujeros tope 
        translate ([12,0,0])      donut(12,6,6);
        translate ([0,-50,0])     donut(od,id+0.5,6);			// cabezas guías
        translate ([0,10,0])      donut(od,id+0.5,6);
        translate ([-od/2,-50,0]) cube([od,60,6]);		// bloque central
    }

	translate ([-(id+0.5)/2,-50,0])    	 cube([id+0.5,60,7]);
	translate ([-(id+2.5)/2,-50,0])  cube([id+2.5,60,2]);
   translate ([0,-50,0])     		 cylinder(r=(id+2)/2,h=2);
   translate ([0,10,0])     		 cylinder(r=(id+2)/2,h=2);
	}
}
}



translate([0,40,0]){
	difference(){
        union(){
            translate ([0,5,0]) 		  							   cylinder(r=id/2+1,   h=4.5, $fn=24);
            																cylinder(r=id/2,     h=2,   $fn=24);
            translate ([0,-8,0])           					   cylinder(r=(id+2)/2, h=15,  $fn=24);
            translate ([0,-8.5,5.9])      rotate([45,0,0])  cylinder(r=5.6/2,    h=10,  $fn=24);
            translate ([-(id+2)/2,-8.9,0])  					   cube([(id+2),(id+2),4.5]);
        }

    translate ([0,5,0])  	     							cylinder(r=3/2,   h=10, $fn=24);
    translate ([0,5,0]) 		  							cylinder(r=8/2,   h=2,  $fn=6);
   
    translate ([0,-8,0])        rotate([0,0,30])   cylinder(r=8/2,   h=15, $fn=6); 		//lapiz
    translate ([0,-8.5,5.9])    rotate([45,0,0])   cylinder(r=3/2,   h=12, $fn=24);
    translate ([0,-8.5,7.9])    rotate([45,0,0])   cylinder(r=4.5/2, h=6,  $fn=6);
  
    translate ([-20-id/2,-30,1.8])                 cube([20,60,30]);
    translate ([id/2,-30,1.8])                     cube([20,60,30]);
	}
}

 