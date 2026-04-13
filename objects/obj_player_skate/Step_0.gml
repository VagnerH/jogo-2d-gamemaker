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
    sprite_index = spr_run_skate;
}
else if (input_y > 0) {
    sprite_index = spr_baixorun_skate;
}
else if (input_y < 0) {
    sprite_index = spr_cimarun_skate;
}
else {
    sprite_index = spr_player_skate;
}

image_speed = 1;

// SKATE

if skate=1
{
    room_goto_next()
}

// FECHAR O JOGO 
if (keyboard_check_pressed(vk_escape)) {
    game_end();
}

// RESET
if (keyboard_check_pressed(ord("R"))) {
    room_goto(Room2); 
}