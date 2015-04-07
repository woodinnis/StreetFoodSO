// A Database of recipes the player can assemble

globalvar RecipeDB;   // Declare RecipeDB as a global array

// Recipes must have a minimum of 2 ingredients
//
// Recipes are entered in the following format:
// Name
// Ingredient 1 - required
// Ingredient 2 - required
// Ingredient + - Optional

RecipeDB[0,0] = "Tomato & Toast";
RecipeDB[0,1] = "Toast";
RecipeDB[0,2] = "Tomato";


RecipeDB[1,0] = "BLT";
RecipeDB[1,1] = "Toast";
RecipeDB[1,2] = "Bacon";
RecipeDB[1,3] = "Lettuce";
RecipeDB[1,4] = "Tomato";

RecipeDB[2,0] = "Tuna Sandwich";
RecipeDB[2,1] = "Tuna";
RecipeDB[2,2] = "Mayonnaise";
RecipeDB[2,3] = "Cheese";
RecipeDB[2,4] = "Toast";
RecipeDB[2,5] = "Tomato";
