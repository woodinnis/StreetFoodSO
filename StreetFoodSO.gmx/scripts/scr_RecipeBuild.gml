// Assemble Ingredients to complete a recipe

// Set the maximum number of ingredients to be scanned
numIngredient = array_length_1d(recipe);

anObject = other.object_index;  // Define variable and set to index of item //instance_id;

// Scan the ItemDB
for(i = 0; i <= array_length_1d(stuff); i++)
{
    if(anObject == stuff[i,3])
    {
        for(j = 1; j < numIngredient; j++)
        {
            if(recipe[0,j] == stuff[i,0])
                show_debug_message("You found one!");
        }
    }

    /* Verify the object has a valid entry in the ItemDB, and place it in inventory
    if(anObject == stuff[i,3])
    {
        scr_ItemPickup(stuff[i,0]);
        show_debug_message(object_get_name(anObject));

        // Destroy the object
        with(anObject)
            instance_destroy();

    }*/
}
