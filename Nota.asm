início: 	LD [0]
		JN invalido
		JZ negativa  ; com esta parte do codigo sabemos que é maior, igual ou menor que 0
		JMP maior

maior:		LD [0]
		SUB 20
	 	JN valido    ; com esta parte sabemos que se o codigo codigo é maior, igual ou menor que 20, tirando logo daqui as notas invalidas maior que 20.
	 	JZ positiva
	 	JMP invalido

invalido:	LD 73
          	ST [10H]     ; notas inválidas (menor que 0)
	  	JMP fim

valido: 	LD [0]
		SUB 10
           	JN negativa    ; dentro dos numeros válidos (entre 0 e 20) separamos as notas positivas e negativas
		JMP positiva

positiva: 	LD 65
	   	ST [10H]      ; notas positivas (10 a 20)
		JMP fim

negativa: 	LD 82
	   	ST [10H]    ; notas negativas (0 a 10)
		JMP fim
			
fim:	   	JMP fim       
	   
	
	
	
	 	
	