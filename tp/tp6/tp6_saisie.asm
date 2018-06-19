	  .ORIG x3000
; Programme principal
main:     LD R6,spinit  ; on initialise le pointeur de pile
          HALT

; routine mul10 : effectue R1 <- R1 * 10
; paramètre donnée-résultat : R1 (on note n la valeur d'entrée de R1)
; registre temporaire (écrasé par l'appel) : R2
mul10:    ADD R2,R1,R1   ; R2 <- 2*n
          ADD R2,R2,R1   ; R2 <- 3*n
          ADD R2,R2,R1   ; R2 <- 4*n
          ADD R2,R2,R1   ; R2 <- 5*n
          ADD R2,R2,R1   ; R2 <- 6*n
          ADD R2,R2,R1   ; R2 <- 7*n
          ADD R2,R2,R1   ; R2 <- 8*n
          ADD R2,R2,R1   ; R2 <- 9*n
          ADD R1,R2,R1   ; R2 <- 10*n
          RET

; routine saisie : pour saisir un entier naturel décimal.
; paramètre résultat : R1
; registres temporaires (écrasés par l'appel) : R0, R2
saisie:   ADD R6,R6,#-1  ; on réserve un emplacement sur la pile
          STR R7,R6,0    ; on sauvegarde l'adresse de retour R7
          AND R1,R1,0    ; R1 <- 0
          GETC           ; R0 <- lecture d'un caractère
          OUT            ; affiche le caractère tapé
loops:    ADD R2,R0,-10  ; R2 <- R0 - '\n'
          BRz endloops   ; si R0 = '\n', on sort de la boucle
          LD R2,carzero  ; R2 <- '0'
          NOT R2,R2
          ADD R2,R2,1    ; R2 = - '0'
          ADD R0,R0,R2   ; R0 <- R0 - '0'
          JSR mul10      ; R1 <- R1 * 10 (R2 est écrasé)
          ADD R1,R1,R0   ; R1 <- R1 * 10 + R0
          GETC           ; R0 <- lecture d'un caractère
          OUT            ; affiche le caractère tapé
          BR loops       ; retour au début de boucle
endloops: LDR R7,R6,0    ; on restaure le registre R7
          ADD R6,R6,#1   ; on restaure le pointeur de pile
          RET
; Constantes pour la routine saisie :
carzero:  .FILL 48       ; code ascii du caractère '0'

; routine aff : pour afficher n étoiles.
; paramètre donnée : R1
; registre temporaire (écrasé par l'appel) : R0, R2
aff:
          RET
; Constantes pour la routine aff :
caretoile: .FILL 42       ; code ascii du caractère '*'
carcr:     .FILL 10       ; code ascii du retour chariot

; Gestion de la pile
spinit:   .FILL stackend
          .BLKW #256
stackend: .BLKW #1      ; adresse du fond de la pile
          .END

