// Debug script to show important information while working

textString = string(argument0); // Value of the variable
//variableName = argument1; // Name of the variable
textX = x + 2;
textY = y + 2;

if (debug == true)
{
    draw_set_font(fnt_Test);
    draw_set_color(c_black);
    draw_text(textX, textY, /*variableName +*/ ": " + textString);
}

