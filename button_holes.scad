button_hole_depth = 3;

module button_hole(diameter, normal=[0,0,1], rotation=0) {
    // Constant
    button_hole_depth = 3;
    // TODO = Orient and rotate the button
    // normal is provided as a normal
    // rotation is in degrees around the normal
    cylinder(d=diameter, h=button_hole_depth, $fn=500, center=true);
    // The lips come out 1.5mm at opposite sides of the button.
    // On the lower part. They are 8mm wide.
    translate([0,0,-button_hole_depth/4]) {
        cube([diameter+3, 8, button_hole_depth/2], center=true);
    }
}

module action_button_hole(normal=[0,0,1]) {
    button_hole(diameter=30, normal=normal);
}

module option_button_hole(normal=[0,0,1]) {
    button_hole(diameter=24, normal=normal);
}