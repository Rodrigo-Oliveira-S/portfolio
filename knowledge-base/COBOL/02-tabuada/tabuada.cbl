       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABUADA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 NUMERO    PIC 9(2) VALUE ZEROS.
       77 CONTADOR  PIC 9(2).
       77 RESULTADO PIC ZZZ9.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "=========== TABUADA ==========="
           DISPLAY "Qual número quer multiplicar?".
           DISPLAY "==============================="
           ACCEPT NUMERO.
           DISPLAY "==============================="
           DISPLAY "TABUADA DO " NUMERO.
           PERFORM VARYING CONTADOR FROM 1 BY 1
                     UNTIL CONTADOR > 10
               COMPUTE RESULTADO = NUMERO * CONTADOR
               DISPLAY NUMERO " X " CONTADOR " = " RESULTADO
           END-PERFORM.
           STOP RUN.
