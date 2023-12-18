controls(); //puxa as variaveis de controles 
falas(); // puxa as falas dos personagens





#region // só para deixar mais bonito
	#region // sistema de fala

	if (place_meeting(x,y,oPlayer)){ // se o player estiver colidindo 
			colision = 1;
	}else{ // caso não esteja
			colision = 0;
			dialog = 0;
			indice = 0;
			fala = 0;
			prox = 0;
	
	} 

	if (colision == 1 and wKey){ // ativa o dialogo
		dialog = 1;
		
		} // ativa o dialogo 

	if (prox == 1 and wKey){ // se o dialogo acabar eu consigo passar 
	
		prox = 0;
		indice = 0;
	
		if (fala == mx_fala -1){
			dialog = 0
			fala = 0
		}
		else{
			fala += 1
		}
	

	}


	if dialog == 1{
		
		oPlayer.mx_hspd = 0;

	#endregion
#endregion
		#region // falas

		switch(Int_value){
			#region // corredor / cozinha
	
				case sPortaInt:
					text = porta[fala];
					mx_fala = array_length(porta);
				break;
				
				case sMesinhacorre:
					text = mesinhacorre[fala];
					mx_fala = array_length(mesinhacorre);			
				break;
				
				case sQuadro:
					text = quadro[fala];
					mx_fala = array_length(quadro);
				break;
				
				case sGeladeira:
					text = geladeira[fala];
					mx_fala = array_length(geladeira);
				break;
				
			#endregion
			
			#region // quarto 
			
				case sCama:
					text = cama[fala];
					mx_fala = array_length(cama);
				break;
			
				case sUrsinho:
					text = ursinho[fala];
					mx_fala = array_length(ursinho);
				break;
				
				case sCabeceira:
					text = cabeceira[fala];
					mx_fala = array_length(cabeceira);
				break;
				
				
			#endregion
			
			#region // Banheiro 
			
				case sBanheira:
					text = banheira[fala]
					mx_fala = array_length(banheira)
				break;
				
				case sPrivada:
					text = privada[fala]
					mx_fala = array_length(privada)
				break;

			
			
			#endregion 
		}
	
	
		#endregion
#region // para deixar mais bonito tbm

		if (indice >= string_length(text)){
		prox = 1
		} // se a frase acabar

		if (indice <= string_length(text)){ // escreve a frase
			indice += vel_txt
		
			var _char = string_char_at(text,indice)
		
			//tocando o som da voz
		
			//checando se o valor de indice é redondo
			if (indice = round(indice)){
				if (_char != " "){ 
					audio_play_sound(voice,0,0,,,pitch)
				}
			}

		}
	
		if (keyboard_check_pressed(vk_space) and dialog == 1){ // acelera o dialogo caso eu aperte espaço
				indice = string_length(text);
		}

}else{
	oPlayer.mx_hspd = 2;
}

#endregion



if (sprite > 10) {sprite = 0}; // reseta o valor da sprite 
