// Place it in inventory as it passes over the inventory icon
//scr_ItemPickup(other);

anObject = other.object_index;  // Define variable and set to index of item //instance_id;

// Scan the ItemDB
for(i = 0; i <= array_length_1d(stuff); i++)
{
    // Verify the object has a valid entry in the ItemDB, and place it in inventory
    if(anObject == stuff[i,3])
    {
        scr_ItemPickup(stuff[i,0]);

        // Destroy the object
        with(anObject)
            instance_destroy();
    }
}
