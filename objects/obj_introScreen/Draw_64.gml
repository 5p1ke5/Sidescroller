/// @description Draws intro.
draw_set_halign(fa_center);
draw_set_font(fnt_defaultLarge);

var _string = "";
var _height = string_height(_string);

draw_text_ext(window_get_width() / 2, 20, _string, _height, window_get_width());

draw_set_font(fnt_default);
draw_text(window_get_width() / 2, window_get_height() - 50, "Press Any Key to Continue");

draw_set_halign(fa_left);