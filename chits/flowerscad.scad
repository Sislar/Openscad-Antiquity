module shape() {
    scale(0.2)  import (file = "flower.dxf");
}

difference() { 
   linear_extrude(5) offset(2) hull()shape();
    
!   translate([0,0,3]) linear_extrude (3.1) shape();
 }