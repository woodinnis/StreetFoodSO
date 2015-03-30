// Assemble Ingredients to complete a recipe

// Set the maximum number of ingredients to be scanned
numIngredient = array_length_1d(myIngredients);

anObject = other.object_index;  // Define variable and set to index of item //instance_id;

// Scan the ItemDB
for(i = 0; i <= array_length_1d(stuff); i++)
{
    if(anObject == stuff[i,3])
    {   
        // Scan each ingredient in the recipe for a match to the current item
        for(j = 0; j < numIngredient; j++)
        {
            if(myIngredients[j] == stuff[i,0])
            {
                // detroy the currently held object
                with(other)
                {
                    instance_destroy();
                }
                
                myIngredients[j] = "";   // Remove the ingredient requirement from the list
            }
        }
    }
}
