$fn=100;

module manija(r,h){
    union(){
        translate([0,0,r/2]) sphere(r);

        cylinder(r=r, h=h);
        
        translate([0,0,h]) sphere(r);
        
    }
}

module encastre(r,h,x,y,z){
    union(){
        
    color ("green") cylinder(r=r, h=h);
    
    translate([2.2,-r/2,0]) color("green") cube([x,y,z]);
    }
}

module brazo(r1, r2, h1, r3, h2){
    union(){
    cylinder(r1=r1, r2=r2, h=h1);

    rotate([0,-90,0]) translate([0,0,-h2/2]) cylinder(r=r3, h=h2);

    translate([1.5,0,0]) difference(){ 
    sphere(r=r3) ; 
    translate([-2*r3,-r3,-r3]) cube(2*r3);
    }
}
}



translate([-4.7, 0, 40]) rotate([0, 90, 0]) manija(5, 50);

difference(){
    brazo(6, 4.5, 40, 9, 12);
    translate ([-6,0,0])rotate ([0,270,180])encastre(3.8, 10, 4.7, 4.2, 7);
}


