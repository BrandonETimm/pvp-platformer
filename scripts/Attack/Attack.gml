var hitNow = ds_list_create();
var hits = instance_place_list(x,y,oPlayers,hitNow,false);
connected = false;
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		var hitID = hitNow[| i]; 
		if (hitID.state != PLAYERSTATE.DEAD && ds_list_find_index(hit,hitID) == -1 && hitID != id && ((!hitID.invinc && (cSelected != 0 || state == PLAYERSTATE.DASHING)) || (hitID.state == PLAYERSTATE.DASHING && cSelected == 0 && state == PLAYERSTATE.SPECIAL)))
		{
			ds_list_add(hit,hitID);
			hitID.state = PLAYERSTATE.DEAD;
			connected = true;
		}
	}
}
ds_list_destroy(hitNow);
return connected;