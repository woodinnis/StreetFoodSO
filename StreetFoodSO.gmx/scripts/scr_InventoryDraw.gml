// A basic set of UI elements for the inventory system

myCount = "";

for(i = 0; i < maxInvSlots; i++)
{
    if(inventory[i,1] > 0)
        myCount = " x " + string(inventory[i,1]);
    else
        myCount = "";
        
    draw_text(x,y+50 + (16 * i),inventory[i,0] + myCount);
}
