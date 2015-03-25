// Create an item from the player's inventory
randomize();

 // Get a random number based on the total number of items in the player's inventory
 // Use the ItemDB if inventory is currently empty

item = floor(random(array_height_2d(stuff)));
    
show_debug_message("Item #: " + string(item));

/*
if(inventory[item,0] != "")
{
    me = stuff[item,3];
    instance_create(room_width/2,room_height/2,me);
    show_debug_message("I'm A: " + string(me));
}
else*/ if(stuff[item,0] != "")
{
    me = stuff[item,3];
    instance_create(room_width/2,room_height/2,me);
    show_debug_message("I'm A: " + object_get_name(stuff[item,3]));
}
else
    show_debug_message("Can't make a: " + string(me));
