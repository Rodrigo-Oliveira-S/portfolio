       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONTADOR.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 CONTADOR  PIC 9(7) VALUE 1.
       77 MAXIMO    PIC 9(7).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "======= CONTADOR COBOL ======="
           DISPLAY "Até que número deseja contar? ".
           DISPLAY "==============================".
           ACCEPT MAXIMO.
           MOVE 1 TO CONTADOR.
           
           PERFORM UNTIL CONTADOR > MAXIMO
               DISPLAY "CONTAGEM: " CONTADOR
               ADD 1 TO CONTADOR
           END-PERFORM.
           DISPLAY "FIM DA CONTAGEM.".
           STOP RUN.
