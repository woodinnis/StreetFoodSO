item = floor(random(array_height_2d(inventory)));

// Check for a valid entry in the inventory
if(inventory[item,0] != "")
{
    me = inventory[item,0];
    
    // Check what is currently being stored in this position
    for(i = 0; i < array_height_2d(stuff); i++)
    {
        if(me == stuff[i,0])
        {
            // Create an instance of the object stored in inventory
            instance_create(room_width/2,room_height/2,stuff[i,3]);
            show_debug_message("I'm A: " + string(me));        
        }
    }      
    // Mark the inventory position as empty
    inventory[item,0] = "";
}
else
    show_debug_message("Can't find a: " + string(item));
