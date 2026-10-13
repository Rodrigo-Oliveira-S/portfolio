       IDENTIFICATION DIVISION.
       PROGRAM-ID. MEDIA-NOTAS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 NOTA1     PIC 9(3)V9.
       77 NOTA2     PIC 9(3)V9.
       77 NOTA3     PIC 9(3)V9.
       77 NOTA4     PIC 9(3)V9.
       77 MEDIA     PIC 9(2)V9.
       77 RESULTADO PIC X(20).

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "=== CALCULO DE MEDIA ESCOLAR ===".
           DISPLAY "================================".
           DISPLAY "Digite a primeira nota: ".
           ACCEPT NOTA1.
           DISPLAY "Digite a segunda nota: ".
           ACCEPT NOTA2.
           DISPLAY "Digite a terceira nota: ".
           ACCEPT NOTA3.
           DISPLAY "Digite a quarta nota: ".
           ACCEPT NOTA4.

           COMPUTE MEDIA = (NOTA1 + NOTA2 + NOTA3 + NOTA4) / 4.

           IF MEDIA >= 7 THEN
               MOVE "APROVADO" TO RESULTADO
           ELSE
               IF MEDIA >= 5 THEN
                   MOVE "RECUPERACAO" TO RESULTADO
               ELSE
                   MOVE "REPROVADO" TO RESULTADO
           END-IF.

           DISPLAY "MEDIA: " MEDIA.
           DISPLAY "RESULTADO: " RESULTADO.
           STOP RUN.
