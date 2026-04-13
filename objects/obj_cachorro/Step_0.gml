var alvo = noone;

// distância até cada player
var d1 = 999999;
var d2 = 999999;

if (instance_exists(obj_player)) {
    d1 = point_distance(x, y, obj_player.x, obj_player.y);
}

if (instance_exists(obj_player2)) {
    d2 = point_distance(x, y, obj_player2.x, obj_player2.y);
}

// escolhe o mais perto
if (d1 < d2) {
    alvo = obj_player;
} else {
    alvo = obj_player2;
}

// persegue se estiver no alcance
if (alvo != noone && point_distance(x, y, alvo.x, alvo.y) < alcance) {
    move_towards_point(alvo.x, alvo.y, velocidade);
	sprite_index = spr_cachorro_run
	    if (alvo.x < x) {
        image_xscale = 1; // olha pra esquerda
    } else {
        image_xscale = -1;  // olha pra direita
    }
}
