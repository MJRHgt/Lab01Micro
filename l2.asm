.model small			; Modelo para ejecutables
.code					; Inicia el segmento de codigo

programa:				; Etiqueta para el inicio del programa
		Mov AX,@DATA	; Se obtiene la direccion de inicio
		Mov DS,AX		; Se asigna al registro data segment 
		Mov AX,0000h	; Se inicializa el acumulador
		Mov BX,0000h	; Se inicializa el registro BX
		Mov AL,1		; Se asigna el valor a la parte baja del registro AX
		Mov BL,15h		; Se asigna el valor a la parte baja del registro BX
		Add AL,BL		; Se suman los dos registros
		Mov DL,AL		; El resultado 
		Mov AH,02		; Se asigna el valor arte alta del acumulador
		Int 21h			; Se invoca a la 
		Mov AH,4CH		; fin
		int 21h			; 

End programa