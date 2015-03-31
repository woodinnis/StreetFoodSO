// Create a new instance of obj_Dish every few seconds

// Set starting coordinates
dishX = x;

// Adjust coordinates for each new instance
dishX = x + (sprite_get_width(spr_Dish)/2);

// Test coordinates until an open position is found
while(position_meeting(dishX,y,self))
{
    // If no obj_Dish is at this position, create the instance
    if(!position_meeting(dishX,y,obj_Dish))
    {
        instance_create(dishX,y,obj_Dish);
        break;
    }
    else
        dishX += (sprite_get_width(spr_Dish));
}
    
// Reset the timer
alarm[0] = room_speed * (10 / Level);
