/*spawns the spikes and gives them the instance ID
 so when the spike finishes it's animation and is deleted it can change the value  of  "release" of the right obj_pressureHazard instance*/
var spikes = instance_create_layer(x, y, "Instances_Hazards", obj_pressureHazard_spikes);
spikes.parent_id = id; // tells obj_pressureHazard_spikes who created it

