module spiral(n,pxyz,xyz,xya,a){
    rotate([0,0,a])translate([pxyz[0],pxyz[1],pxyz[2]]){
        for (i = [0 : n - 1]) {
            translate([0,0,i * xyz[2]])rotate([0, 0, i * xya[2]])translate([xya[0],xya[1],0])cube([xyz[0],xyz[1],xyz[2]],true);
        }
    }
}