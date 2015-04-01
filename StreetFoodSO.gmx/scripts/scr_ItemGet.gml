// Get an item out of inventory

item = 0;
checkCount = 0;

// Check for an entry 
do
{
    item = floor(random(array_height_2d(inventory)));
    checkCount++;   // Avoids an endless loop when clicking an empty inventory
}until(inventory[item,0] != "" || checkCount > array_height_2d(inventory))

// Check for a valid entry in the inventory
if(inventory[item,0] != "")
{
    // Check for a valid count of items
    if(inventory[item,1] > 0)
    {
        me = inventory[item,0];
        show_debug_message(me);
        spawnWidth = sprite_get_width(object_get_sprite(me));
        spawnHeight = sprite_get_height(object_get_sprite(me));
        spawnX = x + (sprite_get_width(object_get_sprite(me)) + 64);
        spawnY = y + (sprite_get_height(object_get_sprite(me)) + 64);
        
        // Check to see if the new object is spawning on top of an existing one
        while(!position_empty(spawnX, spawnY))
        {
            spawnX += (spawnWidth + 16);
            //spawnY++;
        }
        
        // Check what is currently being stored in this position
        for(i = 0; i < array_height_2d(ItemDB); i++)
        {
            if(me == ItemDB[i,0])
            {
                // Create an instance of the object stored in inventory
                instance_create(spawnX,spawnY,ItemDB[i,3]);
            }
        }
        // Reduce the count
        inventory[item,1]--;
    }

    // If the count is now 0, move all items up one place in inventory
    if(inventory[item,1] == 0)
    {
        for(i = item; i < array_height_2d(inventory); i++)
        {
            if(i + 1 < array_height_2d(inventory))
            {
                inventory[i,0] = inventory[i + 1,0];
                inventory[i,1] = inventory[i + 1,1];
            }
        }
    }
}
