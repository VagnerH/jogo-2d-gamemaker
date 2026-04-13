vel = 3;

//      ENTRADA 
var input_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var input_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//     FLIP 
if (input_x < 0) image_xscale = -1;
else if (input_x > 0) image_xscale = 1;

//  MOVIMENTO + COLISÃO 
// horizontal
var mx = input_x * vel;
if (!place_meeting(x + mx, y, obj_barreira) && !place_meeting(x + mx, y, obj_barreira2)) {
    x += mx;
}

// vertical
var my = input_y * vel;
if (!place_meeting(x, y + my, obj_barreira) && !place_meeting(x, y + my, obj_barreira2)) {
    y += my;
}


//  ANIMAÇÕES
if (input_x != 0) {
    sprite_index = spr_run;
}
else if (input_y > 0) {
    sprite_index = spr_baixorun;
}
else if (input_y < 0) {
    sprite_index = spr_cimarun;
}
else {
    sprite_index = spr_player;
}

image_speed = 1;

// SKATE

if skate=1
{
    room_goto_next()
}
