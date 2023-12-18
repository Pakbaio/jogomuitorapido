if colision == 1 and dialog == 1{ // desenha a caixa do dialogo e o dialogo

	var gui_width = display_get_gui_width(); // pega a largura da sala
	var gui_height = display_get_gui_height(); // pega a altura da sala

	var x1 = (gui_width/gui_width) + 4; // pega o valor minimo da tela e adiciona mais 4 pixels
	var y1 = gui_height / 1.3; // divide a altura da tela 
	
	var x2 = gui_width  - 5; // pega o valor maximo da largura e subtrai
	var y2 = gui_height - 5; // pega o valor maximo da altura e subtrai
	
	draw_set_color(c_white); 
	draw_rectangle(x1 - 5, y1-5,x2 + 5,y2 + 5,0) // desenha a margem 
	draw_set_color(c_black);
	draw_rectangle(x1,y1,x2,y2,0); // desenha o quadrado de fala

	draw_set_color(c_white); // ceta a cor para branco 
	draw_set_font(fDialog); // ceta a fonte 
	draw_set_halign(fa_left); // ceta o começo horizontal da fonte
	draw_set_valign(fa_top); // ceta o começo vertical da fonte
	
	var _text = string_copy(text,0,indice); // copia o texto escolido e manda letra por letra 
	
	
	draw_text_scribble_ext(x1 + 20,y1 + 15,_text,x2 -30); // escreve na tela

	draw_set_font(-1); // volta a fonte para a padrão
	draw_set_color(-1); // volta a cor para a padrão
}
	
if dialog == 1 and prox == 1{ // desenha o w no final do dialogo
	draw_sprite_ext(sWButton,sprite,x2 - 20,y2,2,2,0,c_white,1)
}