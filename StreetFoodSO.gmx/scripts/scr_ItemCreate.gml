// This script generates random items from the ItemDB

// Set the randomization seed
randomize();

// Get a random number based on the total number of items in the ItemDB
item = floor(random(array_height_2d(ItemDB)));

// Create a random object from the ItemDB
if(ItemDB[item,0] != "")
{
    me = ItemDB[item,3];
    spawnX = room_width/2;
    spawnY = room_height/2;
    spawnHeight = sprite_get_height(object_get_sprite(me));
    spawnWidth = sprite_get_width(object_get_sprite(me));
    
    // Check to see if the new object is spawning on top of an existing one
    while(!position_empty(spawnX, spawnY))
    {
        spawnX += (spawnWidth + 16);
        //spawnY++;
    }
    
    // Create the instance
    instance_create(spawnX,spawnY,me);
}
// Display a failure message in the debug window
else
    show_debug_message("Can't make a: " + string(me));
