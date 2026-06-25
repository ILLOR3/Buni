draw_self();

var life_ratio = clamp(alarm[0] / collect_time, 0, 1);

var cx = x;
var cy = y;
var radius = 48;
var thickness = 4; // adjust this to change ring thickness
var steps = 128;

// How many steps of the circle are still "alive"
var visible_steps = steps * life_ratio;

// Color shifts green -> red as time runs out
var r = lerp(0, 255, 1 - life_ratio);
var g = lerp(255, 0, 1 - life_ratio);
draw_set_color(make_color_rgb(r, g, 0));
draw_set_alpha(1.0);
 

for (var i = 0; i < visible_steps; i++) {
    var angle_inner = degtorad((i / steps) * 360 - 90);
    var angle_outer = degtorad(((i + 1) / steps) * 360 - 90);

    var x1 = cx + cos(angle_inner) * (radius - thickness * 0.5);
    var y1 = cy + sin(angle_inner) * (radius - thickness * 0.5);
    var x2 = cx + cos(angle_inner) * (radius + thickness * 0.5);
    var y2 = cy + sin(angle_inner) * (radius + thickness * 0.5);
    var x3 = cx + cos(angle_outer) * (radius + thickness * 0.5);
    var y3 = cy + sin(angle_outer) * (radius + thickness * 0.5);
    var x4 = cx + cos(angle_outer) * (radius - thickness * 0.5);
    var y4 = cy + sin(angle_outer) * (radius - thickness * 0.5);

    draw_primitive_begin(pr_trianglefan);
    draw_vertex(x1, y1);
    draw_vertex(x2, y2);
    draw_vertex(x3, y3);
    draw_vertex(x4, y4);
    draw_primitive_end();
}

draw_set_alpha(1.0);