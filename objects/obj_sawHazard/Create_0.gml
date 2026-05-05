//move_speed  = 3
//stop_time = 60 
//(both variables already present in variable definitions)
min_xPos = 192;
max_xPos = 1216;
alarm[0]  =stop_time;
stop_state = true;



movedir = irandom_range(0 , 1);
if (movedir == 0){movedir = -1};