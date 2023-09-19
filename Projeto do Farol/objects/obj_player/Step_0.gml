#region //Movimentação
var move_up = keyboard_check(vk_up)
var move_down = keyboard_check(vk_down)
var move_left = keyboard_check(vk_left)
var move_right = keyboard_check(vk_right)

hsp = (move_right - move_left) * spd
vsp = (move_down - move_up) * spd
#endregion
#region //Colisão
if place_meeting(x + hsp, y, obj_wall)
{
	hsp = 0
}
if place_meeting(x + vsp, y, obj_wall)
{
	vsp = 0	
}

#endregion
x += hsp
y += vsp

#region // Dialogo
if distance_to_object(obj_par_npc) <= 5 {
	if keyboard_check_pressed(ord("Z"))
	{
		var _npc = instance_nearest(x, y, obj_par_npc) 
		var _dialogo = instance_create_layer(x, y, "dialogo", obj_dialogo)
		_dialogo.npc_nome = _npc.nome;
	}
}
#endregion
