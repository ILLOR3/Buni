if(chaseMode){
    // ============================================================
// MOUSE REPULSION
// ============================================================

var dist = point_distance(x, y, mouse_x, mouse_y);

if (dist > 0 && dist < mouse_radius)
{
    var strength = 1 - dist / mouse_radius;

    // Gets MUCH stronger when mouse is close
    strength = power(strength, 2);

    var dir = point_direction(mouse_x, mouse_y, x, y);

    vx += lengthdir_x(strength * mouse_force, dir);
    vy += lengthdir_y(strength * mouse_force, dir);
}


// ============================================================
// PANIC MODE
// ============================================================

if (panic)
{
    panic_timer--;

    // Keep accelerating away from mouse
    if (dist > 0)
    {
        var panic_dir = point_direction(mouse_x, mouse_y, x, y);

        vx += lengthdir_x(panic_acceleration, panic_dir);
        vy += lengthdir_y(panic_acceleration, panic_dir);
    }

    if (panic_timer <= 0)
    {
        panic = false;
    }
}


// ============================================================
// FRICTION
// ============================================================

vx *= _friction;
vy *= _friction;


// ============================================================
// SPEED LIMIT
// ============================================================

var _speed = point_distance(0, 0, vx, vy);

var current_max_speed = panic ? panic_speed : max_speed;

if (_speed > current_max_speed)
{
    var speed_dir = point_direction(0, 0, vx, vy);

    vx = lengthdir_x(current_max_speed, speed_dir);
    vy = lengthdir_y(current_max_speed, speed_dir);
}


// ============================================================
// MOVE
// ============================================================

x += vx;
y += vy;


// ============================================================
// DVD-STYLE BOUNCING
// ============================================================

// Right wall
if (x >= room_width - sprite_width / 2)
{
    x = room_width - sprite_width / 2;

    if (vx > 0)
        vx = -vx;
}


// Left wall
if (x <= sprite_width / 2)
{
    x = sprite_width / 2;

    if (vx < 0)
        vx = -vx;
}


// Bottom wall
if (y >= room_height - sprite_height / 2)
{
    y = room_height - sprite_height / 2;

    if (vy > 0)
        vy = -vy;
}


// Top wall
if (y <= sprite_height / 2)
{
    y = sprite_height / 2;

    if (vy < 0)
        vy = -vy;
}
}
