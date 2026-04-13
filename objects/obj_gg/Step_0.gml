switch (estado) {


    case 0:
        if (letras1 < string_length(texto1)) {
            letras1 += vel_digitar;
        } else {
            estado = 1;
        }
    break;


    case 1:
        if (letras2 < string_length(texto2)) {
            letras2 += vel_digitar;
        } else {
            estado = 2;
            alarm[0] = room_speed * 5;

        }
    break;


    case 2:

    break;


    case 3:
        y_texto -= 1.5;
        alpha -= 0.02;
        if (alpha <= 0) {
            instance_destroy();
        }
    break;
}
