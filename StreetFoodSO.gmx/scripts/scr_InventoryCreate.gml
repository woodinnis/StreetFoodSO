// Creation code and Basic Variables settings

showinv = false;        // Is inventory visible
globalvar maxInvSlots;  // Maximum number of inventory slots
globalvar inventory;    // Declare inventory as a global variable

maxInvSlots = 10;       // Set maxInvSlots

// Create inventory slots
for(i=0; i < maxInvSlots; i++)
{
    inventory[i,0] = "";
}
