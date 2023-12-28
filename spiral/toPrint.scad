use <module_spiral.scad>

$fn = 100;

color("#555555")cylinder(5,d=150,true);

color("blue")translate([9.1,9.1,14])sphere(d=10);

difference(){
    d_m = 39;
    
    color("#555555")top(d_m);
    
    top(d_m - 3);
    cylinder(151,d=d_r,true);
    translate([0,0,7])rotate([100,100,100])cylinder(50,d=20,true);
    translate([0,0,7])rotate([100,100,0])cylinder(50,d=20,true);
    spiral(20,[0,0,30],[5,5,5],[13,13,70],0);
    spiral(20,[0,0,30],[5,5,5],[13,13,70],110);
}

spiral(150,[0,0,5],[15,15,1],[0,0,5],0);



module top(d_m){
    cylinder(151,d=d_m,true);
    hull(){
        translate([0,0,150])cylinder(3,d=d_m,true);
        translate([0,0,160])cylinder(3,d=d_m + 75,true);
        
    }
}