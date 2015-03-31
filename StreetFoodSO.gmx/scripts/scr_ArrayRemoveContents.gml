// Check the contents of an array, and move them up as they are removed

iAmArray = argument0;
atPosition = argument1;

//if(iAmArray[atPosition,1] == 0)
//{
    for(i = atPosition; i < array_height_2d(iAmArray); i++)
    {
        if(i + 1 < array_height_2d(iAmArray))
        {
            show_debug_message("Like A MOFO!");
            iAmArray[i,0] = iAmArray[i + 1,0];
            iAmArray[i,1] = iAmArray[i + 1,1];
        }
    }
//}
