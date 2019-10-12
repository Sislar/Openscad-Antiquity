
$fn = 30;

module MiscBase(){
    offset (1.6) offset (-1.6) polygon([[0,0],[0,83.5],[10,83.5],[53,0]]);
}

module MiscBox(){
difference(){
  linear_extrude (height =28)  MiscBase();
  translate([0,0,1.6]) linear_extrude (height =28) offset (1.6) offset (-3.2) MiscBase();
}
}

MiscBox();

translate([-5,0,0]) mirror() MiscBox();