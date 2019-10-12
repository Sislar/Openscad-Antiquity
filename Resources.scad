$fn=30;

WT = 1.6;
TW = 106;   // x
TL = 134;   // y
TH = 28;

BW = (TW - 3 * WT) /2;
BL = (TL - 4 * WT) /3;

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
    
    translate([WT,WT,WT])RCube(4,BW,BL,30);
    translate([WT,BL+2*WT,WT])RCube(4,BW,BL,30);
    translate([WT,2*BL+3*WT,WT])RCube(4,BW,BL,30);
 
    translate([BW+2*WT,WT,WT])RCube(4,BW,BL,30);
    translate([BW+2*WT,BL+2*WT,WT])RCube(4,BW,BL,30);
    translate([BW+2*WT,2*BL+3*WT,WT])RCube(4,BW,BL,30);

    
    
}