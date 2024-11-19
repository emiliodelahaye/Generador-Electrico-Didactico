$fn = 100;

module interior(r1,h1,r2,h2,r3){
    difference(){
        union(){
            translate([0,0,-3]) color("green") cylinder(r=r1,h=h1);  
            cylinder(r=r2, h=h2);       
        }
        translate([0,0,-3]) cylinder(r=r3, h=h1+h2);
      
}
}

module tapa(r1,r2,h){
   difference(){
       cylinder(r=r1, h=h);
       cylinder(r=r2, h=h);
        }
    }


module interiortotal(){
difference(){ 
    rotate([0,90,0]) interior(15,9,11,31,9.9);
    translate([-1,8,-14])rotate([-15,0,0]) color("red")cube([8,8,22]);
    translate([6,-10,-10])rotate([45,0,0]) cube(20);  
}
}


translate([31,0,0]) rotate([0,90,0]) tapa(11,2,2); //tapa trasera

color("red") translate([-11,0,0]) rotate([0,90,0]) tapa(20,11.7,8); //tapa delantera

interiortotal();