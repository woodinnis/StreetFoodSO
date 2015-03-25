// Add items to the inventory 

for(i = 0; i < maxInvSlots; i++)
{
    // If slot i is empty, place item into empty slot, and set i to maxInvSlots, ending the loop
    if(inventory[i,0] == "")
    {
        show_debug_message("Im in slot: " + i);
        inventory[i,0] = argument0;
        i = maxInvSlots;
    }
}
