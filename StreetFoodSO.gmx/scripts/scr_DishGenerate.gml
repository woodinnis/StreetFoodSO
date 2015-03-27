// Randomly generate a recipe from the RecipeDB
randomize();

isDish = true;

globalvar currentDish;

pos = random(array_height_2d(recipe))   // Choose a location based on the number of items in the array

currentDish = recipe[pos,0];    // Set variable to that dish's name
