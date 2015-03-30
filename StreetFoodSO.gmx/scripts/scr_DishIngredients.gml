// Generate a list of ingredients needed to complete this dish

numIngredient = array_length_2d(recipe,pos);

for(i = 1; i < numIngredient; i++)
{
    j = i - 1;  // Allows for a 0-indexed array
    // Place each ingredient into an array
    if(recipe[pos,i] != "")
    {
        myIngredients[j] = recipe[pos,i];
        show_debug_message(myIngredients[j]);
    }
    else
        break;
    ingredientCount = i;    // Set the number of necessary ingredients to i;
}
