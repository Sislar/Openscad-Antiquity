$fn=30;

WT = 1.6;
TL = 211;
TW = 127;
TH = 18;

// Length of the building area
BL = 42;
BW = (TW - 3*WT) /2;

//Length for pollution/fields area
SL = (TL - BL - 4* WT) / 2;

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
    // Main outline
    RCube(1.5,TW,TL,TH); 

    // Areas for pollution and fields
    translate([WT,WT,WT])RCube(4,TW-2*WT,SL,30);
    translate([WT,TL-WT-SL,WT])RCube(4,TW-2*WT,SL,30);
echo(TW, WT, SL, TW-2*WT);
    
    translate([WT,SL+WT*2,WT])cube([BW,BL,30]);
    translate([WT*2+BW,SL+WT*2,WT])cube([BW,BL,30]);
   
    translate([-5,TL/2,10+WT]) cube([16,16,20], center = true);
    translate([-5,TL/2,TH-1]) rotate([45,0,0]) cube([16,16,16], center = true);

    translate([TW-5,TL/2,10+WT]) cube([16,16,20], center = true);
    translate([TW-5,TL/2,TH-1]) rotate([45,0,0]) cube([16,16,16], center = true);


    
    
}