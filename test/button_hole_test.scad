include <../button_holes.scad>

difference() {
    cube([50,50,button_hole_depth],center=true);
    action_button_hole();
}