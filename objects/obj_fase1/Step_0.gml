switch (estado) {

   
    case 0:
        if (letras < string_length(texto)) {
            letras += vel_digitar;
        } else {
            estado = 1;
            alarm[0] = room_speed * 2; 
        }
    break;

  
    case 1:
      
    break;


    case 2:
        y_texto -= 1.5;
        alpha -= 0.02;
        if (alpha <= 0) {
            instance_destroy();
        }
    break;
}
