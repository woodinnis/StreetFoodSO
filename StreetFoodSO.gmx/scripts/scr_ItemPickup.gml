// Add items to the inventory 

for(i = 0; i < maxInvSlots; i++)
{
    show_debug_message("Slot" + string(i));
    
    // If slot i is empty, place item into empty slot, and set i to maxInvSlots, ending the loop
    if(inventory[i,0] == "")
    {
        show_debug_message("Im in slot: " + string(i));
        inventory[i,0] = argument0;
        i = maxInvSlots;
    }
}
