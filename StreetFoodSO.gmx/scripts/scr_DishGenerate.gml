// Randomly generate a recipe from the RecipeDB
randomize();

pos = random(array_height_2d(RecipeDB))   // Choose a location based on the number of items in the array

currentDish = RecipeDB[pos,0];    // Set variable to that dish's name
