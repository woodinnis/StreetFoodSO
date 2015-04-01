// Basic Click & Drag script for moving objects around the play area

target = argument0;

if device_mouse_check_button(0,mb_left)
{
    target.x = mouse_x;
    target.y = mouse_y;
}
