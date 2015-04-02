// Place it in inventory as it passes over the inventory icon
//scr_ItemPickup(other);

anObject = argument0;

// Scan the ItemDB
for(i = 0; i < array_height_2d(ItemDB); i++)
{
    // Verify the object has a valid entry in the ItemDB, and place it in inventory
    if(anObject == ItemDB[i,3] && Cash > 0)
    {
        // Deduct the item's value from Cash
        Cash -= ItemDB[i,2];
        
        // Check the type of item being entered and perform actions accordingly
        switch(ItemDB[i,1])
        {
            case EQUIPMENT:
            {
                if(obj_Inventory.equipCount < obj_Inventory.maxEquip)
                {
                    obj_Inventory.equipCount++;
                    scr_ItemPickup(ItemDB[i,0]);
                }
                break;
            }
            case INGREDIENT:
            {
                scr_ItemPickup(ItemDB[i,0]);
                break;
            }
        }
    }
}
