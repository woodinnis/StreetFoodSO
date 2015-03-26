// This script generates random items from the ItemDB

// Set the randomization seed
randomize();

// Get a random number based on the total number of items in the ItemDB

item = floor(random(array_height_2d(stuff)));
    
show_debug_message("Item #: " + string(item));

// Create a random object from the ItemDB
if(stuff[item,0] != "")
{
    me = stuff[item,3];
    spawnX = room_width/2;
    spawnY = room_height/2;
    spawnHeight = sprite_get_height(object_get_sprite(me));
    
    // Check to see if the new object is spawning on top of an existing one
    while(!position_empty(spawnX, spawnY))
    {
        spawnX++;
        spawnY++;
    }
    
    // Create the instance
    instance_create(spawnX,spawnY,me);
    show_debug_message("At: " + string(spawnX) + ", " + string(spawnY));
    show_debug_message("I'm A: " + object_get_name(stuff[item,3]));
}
// Display a failure message in the debug window
else
    show_debug_message("Can't make a: " + string(me));
