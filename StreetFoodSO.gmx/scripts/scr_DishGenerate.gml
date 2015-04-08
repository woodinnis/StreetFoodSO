// Randomly generate a recipe from the RecipeDB
randomize();

/*      First attempt at creating DB retrieval
pos = irandom(ds_list_size(RecipeDB2));
//show_debug_message(pos);
currentDish = ds_list_find_value(RecipeDB2, pos)
numIngredient = ds_grid_width(currentDish);

show_debug_message(string(currentDish));

*/
pos = random(array_height_2d(RecipeDB))   // Choose a location based on the number of items in the array

currentDish = RecipeDB[pos,0];    // Set variable to that dish's name
