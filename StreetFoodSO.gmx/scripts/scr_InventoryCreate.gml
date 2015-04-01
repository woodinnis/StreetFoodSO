// Creation code and Basic Variables settings

showinv = false;        // Is inventory visible
globalvar maxInvSlots;  // Maximum number of inventory slots
globalvar inventory;    // Declare inventory as a global variable

maxInvSlots = 10;       // Set maxInvSlots

equipCount = 0;         // Number of pieces of equipment being held
maxEquip = 4;           // Maximum number of pieces of equipment

// Create inventory slots
for(i=0; i < maxInvSlots; i++)
{
    inventory[i,0] = "";
    inventory[i,1] = 0;
}
