// Draw the menus to the current screen
draw_self();

buttonText = argument0;

if(ISeeYou == true)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(x,y,buttonText);
}
