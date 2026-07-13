if(arrayIndex < array_length(maps) -1){
    arrayIndex++;
}else {
	arrayIndex = 0;
}
global.selectedMap = maps[arrayIndex];
if(room == Room_start){
    obj_changeRoomButton.targetRoom = global.selectedMap;
}
