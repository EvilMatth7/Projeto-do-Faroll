#region
//Movimentação
var move_up = keyboard_check(vk_up)
var move_down = keyboard_check(vk_down)
var move_left = keyboard_check(vk_left)
var move_right = keyboard_check(vk_right)

hsp = (move_right - move_left) * spd
vsp = (move_down - move_up) * spd


#endregion
x += hsp
y += vsp