if inicializar == false{
	scr_textos()
	inicializar = true
}

if keyboard_check_pressed(ord("Z")){
	if pagina < ds_grid_height(texto_grid) - 1{
		pagina++
	}else{
		instance_destroy()
	}
}
