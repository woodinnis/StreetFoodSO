seconds-=1;
if seconds < 0// checks if seconds is less than 0
{
    seconds = 59;//resest seconds
    minutes -=1;// take one off minutes
}   
if minutes < 0 // check if minutes less than 0
{
    minutes = 59;// resiest minutes
    hours -=1;//take one of hours
}
alarm[0]=room_speed;//reset alarm
if seconds==0 && minutes==0 && hours==0 // check if countdown has reached 00:00:00

{
    // Do Something, for example@
    room_goto(room_Order);
   
}
