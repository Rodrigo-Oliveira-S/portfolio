       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONVERSOR-TEMP.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 OPCAO     PIC 9.
       77 CELSIUS   PIC 9(3)V9.
       77 FAHRENHEIT PIC 9(3)V9.
       77 RESULTADO PIC 9(4)V9.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "CONVERSOR DE TEMPERATURA".
           DISPLAY "========================".
           DISPLAY "1 - CELSIUS PARA FAHRENHEIT".
           DISPLAY "2 - FAHRENHEIT PARA CELSIUS".
           DISPLAY "========================".
           DISPLAY "ESCOLHA UMA OPCAO: ".
           ACCEPT OPCAO.
           DISPLAY "========================"

           IF OPCAO = 1 THEN
               DISPLAY "DIGITE A TEMPERATURA EM CELSIUS: "
               ACCEPT CELSIUS
               COMPUTE RESULTADO = (CELSIUS * 9 / 5) + 32
               DISPLAY CELSIUS "°C = " RESULTADO "°F"
           ELSE
               IF OPCAO = 2 THEN
                   DISPLAY "DIGITE A TEMPERATURA EM FAHRENHEIT: "
                   ACCEPT FAHRENHEIT
                   COMPUTE RESULTADO = (FAHRENHEIT - 32) * 5 / 9
                   DISPLAY FAHRENHEIT "°F = " RESULTADO "°C"
               ELSE
                   DISPLAY "OPCAO INVALIDA"
               END-IF
           END-IF.

           STOP RUN.
