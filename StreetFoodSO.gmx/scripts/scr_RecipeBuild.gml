// Assemble Ingredients to complete a recipe

// Set the maximum number of ingredients to be scanned
numIngredient = array_height_2d(myIngredients);

ingPosition = 0;

anObject = other.object_index;  // Define variable and set to index of item //instance_id;

// Scan the ItemDB
for(i = 0; i <= array_length_1d(ItemDB); i++)
{
    if(anObject == ItemDB[i,3])
    {   
        // Scan each ingredient in the recipe for a match to the current item
        for(j = 0; j < numIngredient; j++)
        {
            if(myIngredients[j,0] == ItemDB[i,0])
            {
                ingPosition = j                
                // detroy the currently held object
                with(other)
                {
                    instance_destroy();
                }
                
                myIngredients[j,0] = "";    // Remove the ingredient requirement from the list
                myIngredients[j,1] = 0;     // Set quantity to 0
            }
        }
        
        // Move all items in the ingredients list up by one position
        scr_ArrayRemoveContents(myIngredients,ingPosition);
    }
}






