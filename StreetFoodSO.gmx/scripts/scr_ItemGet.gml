item = floor(random(array_height_2d(inventory)));

// Check for a valid entry in the inventory
if(inventory[item,0] != "")
{
    me = inventory[item,0];
    spawnX = room_width/2;
    spawnY = room_height/2;
    spawnHeight = sprite_get_height(object_get_sprite(me));
    
    // Check to see if the new object is spawning on top of an existing one
    while(!position_empty(spawnX, spawnY))
    {
        spawnX++;
        spawnY++;
    }
    
    // Check what is currently being stored in this position
    for(i = 0; i < array_height_2d(stuff); i++)
    {
        if(me == stuff[i,0])
        {
            // Create an instance of the object stored in inventory
            instance_create(spawnX,spawnY,stuff[i,3]);
            show_debug_message("I'm A: " + string(me));        
        }
    }      
    // Mark the inventory position as empty
    inventory[item,0] = "";
}
else
    show_debug_message("Can't find a: " + string(item));
