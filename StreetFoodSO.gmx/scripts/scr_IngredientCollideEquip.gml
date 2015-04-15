// Instructions to execute when a collision with obj_EquipParent occurs

// If an ingredient meets a piece of equipment and the equipCollided bool is set to false,
// set the bool to true, and begin the alarm[0] Event
if(place_meeting(x,y, other) && equipCollided == false)
{
    equipCollided = true;
    alarm[0] = room_speed * 2;
}




