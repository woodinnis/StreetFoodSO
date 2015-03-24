// Create an inventory list, with all information

// DS Map for Soft and Hard in-game currencies
globalvar cash;     // Create a global variable to hold the cash DS Map

cash = ds_map_create();

ds_map_add(cash, "coin", 500);
ds_map_add(cash, "fame", 25);

// DS Map for inventory

globalvar inventory;// Create a global variable to hold the inventory DS Grid

inventory = ds_map_create();

// DS Grid for consumables
globalvar stuff;    // Create a global variable to hold the stuff DS Grid

stuff = ds_grid_create(5,4);

// Format: Item Name, Item type, Item Cost, Object
ds_grid_add(stuff, 0,0, "Toast");
ds_grid_add(stuff, 0,1, INGREDIENT);
ds_grid_add(stuff, 0,2, 10);
ds_grid_add(stuff, 0,3, obj_Toast);

ds_grid_add(stuff, 1,0, "Lettuce");
ds_grid_add(stuff, 1,1, INGREDIENT);
ds_grid_add(stuff, 1,2, 10);
ds_grid_add(stuff, 1,3, obj_Lettuce);

ds_grid_add(stuff, 2,0, "Tomato");
ds_grid_add(stuff, 2,1, INGREDIENT);
ds_grid_add(stuff, 2,2, 10);
ds_grid_add(stuff, 2,3, obj_Tomato);

ds_grid_add(stuff, 3,0, "Bacon");
ds_grid_add(stuff, 3,1, INGREDIENT);
ds_grid_add(stuff, 3,2, 10);
ds_grid_add(stuff, 3,3, obj_Bacon);

ds_grid_add(stuff, 4,0, "Mayonnaise");
ds_grid_add(stuff, 4,1, INGREDIENT);
ds_grid_add(stuff, 4,2, 10);
ds_grid_add(stuff, 4,3, obj_Mayo);

