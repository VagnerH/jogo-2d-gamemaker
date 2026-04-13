draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_alpha(alpha);


draw_set_font(Font1);
draw_text(
    x_texto,
    y_texto,
    string_copy(texto1, 1, floor(letras1))
);


draw_set_font(Font2);
draw_text(
    x_texto,
    y_texto + espaco,
    string_copy(texto2, 1, floor(letras2))
);


draw_set_alpha(1);
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
