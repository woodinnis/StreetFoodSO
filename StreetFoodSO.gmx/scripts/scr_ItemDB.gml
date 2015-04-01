// A database of Items the player can collect

globalvar ItemDB;    // Declare the array "ItemDB" as global

ItemDB[0,0] = "Toast";
ItemDB[0,1] = INGREDIENT;
ItemDB[0,2] = 10;
ItemDB[0,3] = obj_Toast;

ItemDB[1,0] = "Lettuce";
ItemDB[1,1] = INGREDIENT;
ItemDB[1,2] = 10;
ItemDB[1,3] = obj_Lettuce;

ItemDB[2,0] = "Tomato";
ItemDB[2,1] = INGREDIENT;
ItemDB[2,2] = 10;
ItemDB[2,3] = obj_Tomato;

ItemDB[3,0] = "Bacon";
ItemDB[3,1] = INGREDIENT;
ItemDB[3,2] = 10;
ItemDB[3,3] = obj_Bacon;

ItemDB[4,0] = "Mayonnaise";
ItemDB[4,1] = INGREDIENT;
ItemDB[4,2] = 10;
ItemDB[4,3] = obj_Mayo;
/* Commented out for testing
ItemDB[5,0] = "Fryer";
ItemDB[5,1] = EQUIPMENT;
ItemDB[5,2] = 100;
ItemDB[5,3] = obj_Fryer;

ItemDB[6,0] = "Griddle";
ItemDB[6,1] = EQUIPMENT;
ItemDB[6,2] = 100;
ItemDB[6,3] = obj_Griddle;
