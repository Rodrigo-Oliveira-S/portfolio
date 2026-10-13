123456*
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA.
       AUTHOR. RODRIGO OLIVEIRA.
       DATE-WRITTEN. 2026-01-23.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

      *Aqui vou colocar as variáveis
       01 WS-LINHA     PIC X(37) VALUE ALL "=".
       01 WS-INICIO    PIC X(20) VALUE "CALCULADORA COBOL".
       01 WS-NUM1      PIC 9(7).
       01 WS-NUM2      PIC 9(7).
       01 WS-OPCAO     PIC 9(5).
       01 WS-RESULT    PIC -ZZZ,ZZ9.
       01 WS-TEXTO     PIC X(50).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      
      *Aqui vou colocar o que vai aparecer no topo
           DISPLAY WS-LINHA.
           DISPLAY WS-INICIO.
           DISPLAY WS-LINHA.

      *Aqui é pra adicionar os números
           DISPLAY "Digite o primeiro número: " WITH NO ADVANCING.            
           ACCEPT WS-NUM1.
  
           DISPLAY "Digite o segundo número: " WITH NO ADVANCING.
           ACCEPT WS-NUM2.
123456*
      *Aqui vou colocar as opções
           DISPLAY "Escolha a operação abaixo:"
           DISPLAY "1 - Soma"
           DISPLAY "2 - Subtração"
           DISPLAY "3 - Multiplicação"
           DISPLAY "4 - Divisão"

           DISPLAY "Opção: " WITH NO ADVANCING.
           ACCEPT WS-OPCAO.

           DISPLAY " ".
123456*
      *Aqui vou começar os cálculos
           IF WS-OPCAO = 1
               COMPUTE WS-RESULT = WS-NUM1 + WS-NUM2
           END-IF.

           IF WS-OPCAO = 2
               COMPUTE WS-RESULT = WS-NUM1 - WS-NUM2
           END-IF.

           IF WS-OPCAO = 3
               COMPUTE WS-RESULT = WS-NUM1 * WS-NUM2
           END-IF.

           IF WS-OPCAO = 4
               COMPUTE WS-RESULT = WS-NUM1 / WS-NUM2
           END-IF.

           DISPLAY "O Resultado é:" WS-RESULT.

           DISPLAY WS-LINHA.
123456*
       STOP RUN.
