// Basic Click & Drag script for moving objects around the play area

takeme = argument0;     // The object being clicked on

// If screen is being touched, move object around the screen
// until the button is released
if(device_mouse_check_button(0,mb_left))
{
       takeme.x = device_mouse_x(0);
       takeme.y = device_mouse_y(0);
}
