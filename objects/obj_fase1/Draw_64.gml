draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_alpha(alpha);
draw_set_font(fonte);

draw_text(
    x_texto,
    y_texto,
    string_copy(texto, 1, floor(letras))
);

draw_set_alpha(1);
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
