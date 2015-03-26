// A Database of recipes the player can assemble

globalvar recipe;   // Declare recipe as a global array

// Recipes have up to 4 ingredients (at this time)
// Recipes are entered in the following format:
// Name
// Ingredient 1 - required
// Ingridient 2 - required
// Ingredient 3 - Optional
// Ingredient 4 - Optional
//
// All fields must have an entry. But optional entries may be left blank ("")

recipe[0,0] = "Tomato & Toast";
recipe[0,1] = "Toast";
recipe[0,2] = "Tomato";
recipe[0,3] = "";
recipe[0,4] = "";

recipe[1,0] = "BLT";
recipe[1,1] = "Toast";
recipe[1,2] = "Bacon";
recipe[1,3] = "Lettuce";
recipe[1,4] = "Tomato";
