var perto = false;

// Player 1
if (instance_exists(obj_player)) {
    var d1 = point_distance(x, y, obj_player.x, obj_player.y);
    if (d1 <= distancia_max) perto = true;
}

// Player 2
if (instance_exists(obj_player2)) {
    var d2 = point_distance(x, y, obj_player2.x, obj_player2.y);
    if (d2 <= distancia_max) perto = true;
}

// Ajuste do alpha (fade)
if (perto) {
    alpha_atual = min(alpha_atual + 0.1, 1);
} else {
    alpha_atual = max(alpha_atual - 0.1, 0);
}
