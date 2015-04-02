// Only draw the timer and time remaining in room_Test

show_hours=string_repeat("0", 2-string_length(string(hours)))+string(hours);//if single digit add a leading 0
show_minutes=string_repeat("0", 2-string_length(string(minutes)))+string(minutes);//if single digit add a leading 0
show_seconds=string_repeat("0", 2-string_length(string(seconds)))+string(seconds);//if single digit add a leading 0

draw_text(room_width/2, y + 16, "TIME REMAINING");
draw_text(room_width/2,y + 32,"Time: " + show_hours + ":" + show_minutes + ":" + show_seconds);//draw variables

