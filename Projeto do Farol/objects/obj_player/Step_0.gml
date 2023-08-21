#region
//Movimentação
var move_up = keyboard_check(vk_up)
var move_down = keyboard_check(vk_down)
var move_left = keyboard_check(vk_left)
var move_right = keyboard_check(vk_right)

hsp = (move_right - move_left) * spd
vsp = (move_down - move_up) * spd

//Colisão
if place_meeting(x + hsp, y, obj_wall)
{
	hsp = 0
}
if place_meeting(x, y + vsp, obj_wall)
{
	vsp = 0
}


x += hsp
y += vsp
#endregion