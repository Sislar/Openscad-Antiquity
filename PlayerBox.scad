$fn = 30;

WT = 1.6;
TW = 106;   // x
TL = 174;   // y
TH = 20;

// Length of building area
BW = TW - 2*WT;
BL = 96;

HW = 20;
HL = 43;

C1W = 40;
C1L = TL - BL - 3*WT;
C2W = TW - C1W - HW - 4*WT;
C2L = C1L;

module RCube(r=2,x,y,z)
{
    hull(){
      translate([r,r,r]) sphere(r);
      translate([x-r,r,r]) sphere(r);
      translate([r,y-r,r]) sphere(r);
      translate([x-r,y-r,r]) sphere(r);
      translate([r,r,z-r]) sphere(r);
      translate([x-r,r,z-r]) sphere(r);
      translate([r,y-r,z-r]) sphere(r);
      translate([x-r,y-r,z-r]) sphere(r);
    }   
}    

difference(){
    RCube(1,TW,TL,TH); 
    
    //  Cubes 1
    translate([WT,WT,WT])RCube(4,C1W,C1L,30);

    // Cubes 2
    translate([C1W+2*WT,WT,WT]) RCube(4,C2W,C2L,30);   
       // Y stop = 174 -96 - 3.2 = 74.8
    translate([TW-30-WT,48.8,WT]) RCube(4,30,26,30);

    // Houses
    translate([TW-HW-WT,0,13]) cube([HW,HL+20,30]);
    translate([TW-HW-WT,WT,WT]) cube([HW,HL,30]);

    // Large area for building
    translate([WT,TL-BL-WT,WT]) cube([BW,BL,30]);
    
    
}