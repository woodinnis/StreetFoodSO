// Generate a list of ingredients needed to complete this dish

numIngredient = array_length_2d(RecipeDB,pos);

for(i = 1; i < numIngredient; i++)
{
    j = i - 1;  // Allows for a 0-indexed array
    // Place each ingredient into an array
    if(RecipeDB[pos,i] != "")
    {
        myIngredients[j,0] = RecipeDB[pos,i];
        myIngredients[j,1] = 1;
    }
    else
        break;
    ingredientCount = i;    // Set the number of necessary ingredients to i;
}
