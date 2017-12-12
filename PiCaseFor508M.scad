//import("./tmp/files/raspberrypi.stl");

module base_plate(h){
  difference(){
    union(){
      cube([60,93,h]);
      cube([55,110,h]);
      translate([60+20,0,0])
        translate([-19.445,44.485,h/2])rotate([0,0,(90-77.86)])
        //translate([19/2,0,0])
        cube([19.55,95.12+35,h],center=true);
    }//union
    translate([0,-100,0-1/2])cube([100,100,h+1]);
  }//difference
}//module base_plate

base_plate(2);
