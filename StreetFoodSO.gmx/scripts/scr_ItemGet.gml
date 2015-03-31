// Get an item out of inventory

item = 0;

// Check for an entry 
while(inventory[item,0] == "")
    item = floor(random(array_height_2d(inventory)));

// Check for a valid entry in the inventory
if(inventory[item,0] != "")
{
    // Check for a valid count of items
    if(inventory[item,1] > 0)
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
            }
        }
        // Reduce the count
        inventory[item,1]--;
    }

    // If the count is now 0, mark the position as empty
    if(inventory[item,1] == 0)   
        inventory[item,0] = "";
}
