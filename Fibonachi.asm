Inicio: LD [0]
	SUB 2
	JZ menor
	JN menor
	JMP var

menor: 	LD 0
	ST [10H]
	JMP fim

var: 	LD 0     ; VARIAVEL A
	ST [01H]
	LD 1     ; VARIAVEL B
	ST [02H]
	LD 0     ; VARIAVEL C
	ST [10H]
	LD [0]
	ST [03H]
	JMP maior

maior:  LD [03H]
	SUB 1
	ST [03H] 
	LD [03H]
       JZ conta
	LD [10H]  ; VARIAVEL C
       ADD [01H]  ; SOMO A
       ADD [02H]  ; SOMO B
       ST [04H]	  ;guardo num 4ªvariavel
       LD [02H]   ; carrego B
       ST [01H]	  ;A passa a ter o valor de b
       LD [04H]   ;carrego a 4ªvariavel
       ST [02H]	  ;B vai ser o valor da soma anterior 	 
       JMP maior	  	
 	 	 
conta: LD [04H]  ;valor total da soma
       ST [10H]  ;guardar esse valor na memoria 10H
       JMP fim

fim: JMP fim 	 	   