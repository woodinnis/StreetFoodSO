// Generate a list of ingredients needed to complete this dish

numIngredient = array_length_2d(RecipeDB,pos);

dishPrice = 0;

for(i = 1; i < numIngredient; i++)
{
    j = i - 1;  // Allows for a 0-indexed array
    // Place each ingredient into an array
    if(RecipeDB[pos,i] != "")
    {
        myIngredients[j,0] = RecipeDB[pos,i];
        myIngredients[j,1] = 1;
        ingredientCount = i;    // Set the number of necessary ingredients to i;
    }
    else
        break;
}

// Set Price of dish based on ingredient count (should probably be changed in future)
dishPrice = ingredientCount * 10;
