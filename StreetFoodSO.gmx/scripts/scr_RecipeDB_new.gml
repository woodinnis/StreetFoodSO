// A Test of a ds_grid as a new form of recipe database.
// A ds_list would hold recipe names, and the primary code would access ingredients, cooked/raw status, and counts through that

BaconToast = ds_grid_create(4,3);

ds_grid_add(BaconToast, "Toast", COOKED, 1);
ds_grid_add(BaconToast, "Mayonnaise", RAW, 1);
ds_grid_add(BaconToast, "Bacon", COOKED, 3);

RecipeDB2[0] = BaconToast;

