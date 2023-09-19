function scr_textos(){
	switch npc_nome{
		case "npc":
			ds_grid_add_text("OI.", spr_retrato_player, 0, "MATTEO")
			ds_grid_add_text("TCHAU.", spr_retrato_npc, 1, "NPC")
			ds_grid_add_text("NÂO.", spr_retrato_player, 0, "MATTEO")
			ds_grid_add_text("É ISSO AI.", spr_retrato_npc, 1, "NPC")
		break
	}
}

function ds_grid_add_row(){
	///@arg ds_grid
 
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);
}

function ds_grid_add_text(){
	///@arg texto
	///@arg retrato
	///@arg lado
	///@arg nome
 
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
} 
