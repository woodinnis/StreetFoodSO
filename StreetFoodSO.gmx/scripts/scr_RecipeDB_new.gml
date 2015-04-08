// A Test of a ds_grid as a new form of recipe database.
/* A ds_list would hold recipe names, and the primary code would access ingredients, cooked/raw status, and counts through that

globalvar BaconToast;

BaconToast = ds_grid_create(4,3);

ds_grid_add(BaconToast, "Bacon & Toast");
ds_grid_add(BaconToast, "Toast");
ds_grid_add(BaconToast, "Mayonnaise");
ds_grid_add(BaconToast, "Bacon");

ds_list_add(RecipeDB2,BaconToast);

