// Removes items from the inventory and puts them into play

// Scan the inventory
for(i = 0; i < maxInvSlots; i++)
{
    // If item already exists in inventory add to its count    
    if(inventory[i,0] == argument0)
    {
        inventory[i,1]++;
        i = maxInvSlots;
    }
    // If item does not currently exist in inventory place it at position i    
    else if(inventory[i,0] == "")
    {
        inventory[i,0] = argument0;
        inventory[i,1] = 1;
        i = maxInvSlots;
    }
}
