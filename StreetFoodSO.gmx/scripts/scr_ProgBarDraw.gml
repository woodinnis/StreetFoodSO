// Draw a gradiated rectangle with a black outline

draw_rectangle_colour(x, y, x + 25, y + 10, c_yellow, c_lime, c_lime, c_yellow, false);
draw_rectangle_colour(x + 25, y, x + 50, y + 10, c_lime, c_red, c_red, c_lime, false);

draw_set_colour(c_black);
draw_rectangle(x, y, x + 50, y + 10, true);

