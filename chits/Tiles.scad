$fn = 40;

//for (i=[0:9]){
//    translate ([i*15,0,0]) GoldTile();
//    translate ([i*15,15,0]) GoldTile();
//}


// Food light green
//translate ([0,15,0]) rotate([0,-90,0]) SheepTile();
//translate ([0,30,0]) rotate([0,-90,0]) WheatTile();
//translate ([0,45,0]) rotate([0,-90,0]) OliveTile();

// Yellow green
translate ([0,15,0]) rotate([0,-90,0]) WineTile();


// Food light blue/purple
//translate ([0,75,0]) rotate([0,-90,0]) FishTile();

// Luxery blue
//translate ([0,90,0]) rotate([0,-90,0]) PearlTile();
//translate ([0,105,0]) rotate([0,-90,0]) DyeTile();

// wood 
//translate ([0,120,0]) rotate([0,-90,0]) TreeTile();

// orange
//translate ([0,135,0]) rotate([0,-90,0]) OreTile();
//translate ([0,150,0]) rotate([0,-90,0]) GoldTile();

module DyeTile (){
  difference() 
  {
    translate([1,1,1]) minkowski(){sphere(1); cube ([10,10,1]);    }
    translate([1,2.4,2.2]) scale ([0.13,0.13,1]) linear_extrude (0.8) 
       import (file = "Squid.dxf");
  }
}

module GoldTile (){
  difference() 
  {
    translate([1,1,1]) minkowski(){sphere(1); cube ([10,10,1]);    }
    translate([3.2,2.6,2.2]) scale ([0.06,0.06,1]) linear_extrude (0.8) 
       import (file = "nugget.dxf");
    translate([3.5,6.2,2.2]) rotate ([0,0,45]) cube([0.8,1.5,0.8]);
    translate([5.2,7.2,2.2]) rotate ([0,0,5]) cube([0.8,1.5,0.8]);
    translate([7.2,7.2,2.2]) rotate ([0,0,-20]) cube([0.8,1,0.8]);
  }
}

module OliveTile (){
  difference() 
  {
    translate([1,1,1]) minkowski(){sphere(1); cube ([10,10,1]);    }
    translate([1.7,2.7,2.2]) scale ([0.18,0.19,1]) linear_extrude (0.8) 
       import (file = "Olive.dxf");
  }
}

module FishTile (){
  difference() 
  {
    translate([1,1,1]) minkowski(){sphere(1); cube ([10,10,1]);    }
    translate([2.0,4.2,2.2]) scale ([0.015,0.017,1]) linear_extrude (0.8) 
       import (file = "fish.dxf");
  }
}

module TreeTile (){
  difference() 
  {
    translate([1,1,1]) minkowski(){sphere(1); cube ([10,10,1]);}
    translate([2.0,2.2,2.2]) scale ([0.017,0.017,1]) linear_extrude (0.8) 
       import (file = "tree.dxf");
  }
}

module SheepTile (){
  difference() 
  {
    translate([1,1,1]) minkowski(){sphere(1); cube ([10,10,1]);}
    translate([1.4,2.2,2.2]) scale ([0.018,0.018,1]) linear_extrude (0.8) 
       import (file = "sheep.dxf");
  }
}


module WheatTile (){
  difference() 
  {
    translate([1,1,1]) minkowski(){sphere(1); cube ([10,10,1]);}
    translate([2.8,2.2,2.2]) scale ([0.04,0.04,1]) linear_extrude (0.8) 
       import (file = "wheat.dxf");
  }
}

module OreTile (){
  difference() 
  {
    translate([1,1,1]) minkowski(){sphere(1); cube ([10,10,1]);}
    translate([2.2,4.2,2.2]) cube([3.2,1.5,0.8]);
    translate([6.2,4.2,2.2]) cube([3.2,1.5,0.8]);
    translate([4.2,6.5,2.2]) cube([3.2,1.5,0.8]);
  }
}

module PearlTile (){
  difference() 
  {
    translate([1,1,1]) minkowski(){sphere(1); cube ([10,10,1]);}
    difference() {
      translate([5.7,5.7,2.2]) cylinder(h=0.8, r1=3, r2=3);
      translate([4.7,4.7,2.2]) cylinder(h=0.8, r1=1, r2=1);
    }

  }
}

module WineTile (){
  difference() 
  {
    translate([1,1,1]) minkowski(){sphere(1); cube ([10,10,1]);}
    translate([1.7,2.6,2.2]) scale ([0.017,0.017,1]) linear_extrude (0.8) 
       import (file = "Barrel.dxf");
  }
}
