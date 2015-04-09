// If there are more than 0 items in inventory begin the process
if(inventorySize > 0)
{
    // Loop through all items in inventory
    for(i = 0; i > inventorySize; i++)
    {
        // If more than 0 of an item exists in inventory continue
        if(inventory[i,1] > 0)
        {
            // If Left Mouse Button is pressed, spawn the item at 
            if(device_mouse_check_button_pressed(0,mb_left));
                scr_ArrayItemSpawn(inventory, i);
        }
    }
}
