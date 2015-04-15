// Instructions to perform on each iteration of Alarm[0]

// Reset the collision boolean to false
equipCollided = false;

// If the cooked variable is less than 10 increment by 1 and reset Alarm[0]
if(cooked < 10)
{
    if(place_meeting(x,y,obj_EquipParent))
    {
        cooked++;
        show_debug_message(cooked);
        alarm[0] = room_speed * 2;
    }
}
// Change the sprite to the burnt image
else
{
    show_debug_message("I'M BURNT!");
    scr_IngredientCooked();
}

    

