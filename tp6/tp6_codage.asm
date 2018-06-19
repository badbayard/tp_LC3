	.ORIG x3000

; Partie dédiée au code
	LEA R0,msg	; charge l'adresse du message à déchiffrer dans R0
	LD R1,cle	; charge la clé dans R1
	JSR dechiffre	; déchiffrement du message
	PUTS		; affiche la chaîne pointée par R0
	HALT		; rend la main à l'OS

; Fonction dechiffre
; Entrée : R0 contient l'adresse du message à déchiffrer
;          R1 contient la clé à utiliser pour déchiffrer
dechiffre:
	RET

; Partie dédiée aux données
cle:	.FILL x001A
msg:    .FILL x0052 ; début de la chaîne
	.FILL x007F
	.FILL x0076
	.FILL x0076
	.FILL x0075
	.FILL x003A
	.FILL x007B
	.FILL x007D
	.FILL x007B
	.FILL x0073
	.FILL x0074
	.FILL x003B
	.FILL x0000 ; caractère 0 final
	.END
