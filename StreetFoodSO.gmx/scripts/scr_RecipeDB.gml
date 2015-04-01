// A Database of recipes the player can assemble

globalvar RecipeDB;   // Declare RecipeDB as a global array

// Recipes have up to 4 ingredients (at this time)
// Recipes are entered in the following format:
// Name
// Ingredient 1 - required
// Ingredient 2 - required
// Ingredient 3 - Optional
// Ingredient 4 - Optional
//
// All fields must have an entry. But optional entries may be left blank ("")

RecipeDB[0,0] = "Tomato & Toast";
RecipeDB[0,1] = "Toast";
RecipeDB[0,2] = "Tomato";
RecipeDB[0,3] = "";
RecipeDB[0,4] = "";

RecipeDB[1,0] = "BLT";
RecipeDB[1,1] = "Toast";
RecipeDB[1,2] = "Bacon";
RecipeDB[1,3] = "Lettuce";
RecipeDB[1,4] = "Tomato";
