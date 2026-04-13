vel = 3;

//  COMANDOS
var input_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var input_y = keyboard_check(vk_down) - keyboard_check(vk_up);

//    FLIP 
if (input_x < 0) image_xscale = -1;
else if (input_x > 0) image_xscale = 1;

//   MOVIMENTO + COLISÃO 
// horizontal
var mx = input_x * vel;
if (!place_meeting(x + mx, y, obj_barreira)) {
    x += mx;
}

// vertical
var my = input_y * vel;
if (!place_meeting(x, y + my, obj_barreira)) {
    y += my;
}

//   ANIMAÇÕES 
if (input_x != 0) {
    sprite_index = spr_run2;
}
else if (input_y > 0) {
    sprite_index = spr_baixorun2;
}
else if (input_y < 0) {
    sprite_index = spr_cimarun2;
}
else {
    sprite_index = spr_player2;
}

image_speed = 1;

// SKATE

if skate=1
{
    room_goto_next()
}
