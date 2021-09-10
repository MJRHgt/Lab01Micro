.model small
.data 
;declaracion de variables
cadena1 DB 'Nombre: Mario Roldan$'
cadena2 DB 'Carnet: 1117517$'
cadena3 DB 'Ejercicio 3$'
.stack
.code
	programa:
	;Inicializar el programa
	MOV AX, @DATA          ; Obtener direccion del segmento de datos
	MOV DS, AX             ; asignar al Data Segment la direccion de la linea anterior
	
	; Imprimir cadena1
	MOV DX, offset Cadena1
	MOV AH, 09h            ; parametro para imprimir cadenas
	INT 21h				   ; ejecuta la interrupcion
	
	; Imprimir caracteres
	MOV DL, 0Ah				; Imprimir Enter
	MOV AH, 02h
	INT 21h
	
	; Imprimir cadena1
	MOV DX, offset Cadena2	; Imprimir cadena 2
	MOV AH, 09h
	INT 21h
	
	; Imprimir caracteres
	MOV DL, 0Ah				; Imprimir Enter
	MOV AH, 02h
	INT 21h
	
	MOV DX, offset Cadena3	; Imprimir cadena 3
	MOV AH, 09h
	INT 21h
	
	; Imprimir caracteres
	MOV DL, 0Ah				; imprimir enter
	MOV AH, 02h
	INT 21h
	
	; Imprimir caracteres
	MOV DL, 4Bh				; Imprimir letra K
	MOV AH, 02h
	INT 21h
	
	MOV DL, 2Eh				; imprimir punto
	INT 21h
	
	MOV DL, 45h				; imprimir E
	INT 21h
	
	MOV DL, 2Eh				; Imprimir punto
	INT 21h
	
	MOV DL, 4ch				; imprimir L
	INT 21h
	MOV DL, 2Eh				; imprimir punto
	INT 21h
	MOV DL, 4ch				; imprimir L
	INT 21h
	
	
	;Finalizar el programa
	MOV AH,4CH			    ; Enviar parametro de interrupcion
	INT 21h                 ; Ejecuta la interrupcion de procesador utilizando el parametro de AH
	
	END programa
