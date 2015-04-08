// Randomly generate a recipe from the RecipeDB
randomize();

/*      First attempt at creating DB retrieval
pos = irandom(array_length_1d(RecipeDB2));
show_debug_message(string(RecipeDB2[pos]));
currentDish = ds_map_read(RecipeDB2,ds_list_find_value(RecipeDB2, pos))
*/

pos = random(array_height_2d(RecipeDB))   // Choose a location based on the number of items in the array

currentDish = RecipeDB[pos,0];    // Set variable to that dish's name
