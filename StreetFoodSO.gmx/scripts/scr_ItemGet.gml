// Get an item out of inventory

item = 0;
checkCount = 0;

// Check for an entry 
do
{
    item = irandom(array_height_2d(inventory)-1);
    checkCount++;   // Avoids an endless loop when clicking an empty inventory
}until(inventory[item,0] != "" || checkCount > array_height_2d(inventory))

// Check for a valid entry in the inventory
if(inventory[item,0] != "")
{
    // Check for a valid count of items
    if(inventory[item,1] > 0)
    {    
        // Spawn an intance of the item
        scr_ArrayItemSpawn(inventory,item);

        // Reduce the count
        inventory[item,1]--;
    }
    
    // Move items up one place in inventory
    scr_ArrayRemoveContents(inventory,item);
}
