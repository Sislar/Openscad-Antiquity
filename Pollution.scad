$fn = 30;

WT = 1.6;
TL = 83;
TH = 22;
TW = 128;

BW = (TW-3*WT)/2;
BL = TL-2*WT;

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
    cube([TW,TL,TH]); 
    
    translate([WT,WT,WT])RCube(4,BW,BL,30);
    translate([TW-WT-BW,WT,WT])RCube(4,BW,BL,30);
 
 
    
    
}