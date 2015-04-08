// Check the contents of an array, and move them up as they are removed

arrayName = argument0;
arrayPosition = argument1;

if(arrayName[@arrayPosition,1] == 0)
{
    for(i = arrayPosition; i < array_height_2d(arrayName); i++)
    {
        if(i + 1 < array_height_2d(arrayName))
        {
            arrayName[@i,0] = arrayName[@i + 1,0];
            arrayName[@i,1] = arrayName[@i + 1,1];
            arrayName[@i + 1,0] = "";
            arrayName[@i + 1,1] = 0;
        }
    }
}
