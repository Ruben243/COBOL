      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. cajero.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT TICKET ASSIGN TO "../CLIENTE-TICKET.TXT"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
        FD TICKET.
         01 CLI-TICKET.
             02 NOMBRE PIC A(10).
             02 FILLER PIC A(10) VALUE "    ".
             02 CUENTA PIC 9(11) VALUE 12345678910.
             02 FILLER PIC A(10) VALUE "    ".
             02 SALDO  PIC -ZZZZ9.
       WORKING-STORAGE SECTION.
       77 WS-NOMBRE PIC A(10) VALUE "RUBEN".
       77 WS-CUENTA PIC 9(11) VALUE 12345678910.
       77 WS-SALDO PIC S9(5) VALUE 01000.

       77 WS-REINTEGRO PIC S9(5).
       77 WS-OPCION PIC S9(1).
       77 WS-RES    PIC -ZZZZ9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM 00001-inicio UNTIL WS-OPCION=4.

            STOP "PAUSE".

           STOP RUN.


           00001-inicio.
               DISPLAY " " BLANK SCREEN.
               DISPLAY "BIENVENIDO GRACIAS POR USAR NUESTROS SERVICIOS"
               LINE 2 COLUMN 20 BACKGROUND-COLOR IS 2.
               DISPLAY "QUE OPERACION DESEA HACER:" LINE 3 COLUMN 20
               BACKGROUND-COLOR IS 2.
               DISPLAY "1-SACAR EFECTIVO"LINE 4 COLUMN 20
               BACKGROUND-COLOR IS 5.
               DISPLAY "2-INGRESAR EFECTIVO" LINE 5 COLUMN 20
               BACKGROUND-COLOR IS 5.
               DISPLAY "3-IMPRIMIR TICKET" LINE 6 COLUMN 20
               BACKGROUND-COLOR IS 5.
               DISPLAY "4-SALIR" LINE 7 COLUMN 20
               BACKGROUND-COLOR IS 5.
               ACCEPT WS-OPCION LINE 8 COLUMN 20.

               EVALUATE WS-OPCION
                WHEN 1
                   PERFORM 00002-REINTEGRO


                WHEN 2
                 PERFORM 00003-INGRESO

                WHEN 3
                  PERFORM 00005-IMPRIMIR.


           00002-REINTEGRO.
               DISPLAY "CUANTO DINERO QUIRE SACAR?" LINE 9 COLUMN 20
               BACKGROUND-COLOR IS 1.
               ACCEPT WS-REINTEGRO LINE 10 COLUMN 20.
               IF WS-REINTEGRO > WS-SALDO
                   DISPLAY "SALDO INSUFICIENTE" LINE 11 COLUMN 20
                   BACKGROUND-COLOR IS 4
                   STOP" PULSE UNA TECLA PARA CONTINUAR"
               ELSE
                   SUBTRACT WS-REINTEGRO FROM WS-SALDO GIVING WS-RES
                   PERFORM 00004-MOSTRAR.

           00003-INGRESO.
               DISPLAY "CUANTO DINERO QUIRE INGRESAR?" LINE 9 COLUMN 20
               BACKGROUND-COLOR IS 1.
               ACCEPT WS-REINTEGRO LINE 10 COLUMN 20.
               ADD WS-REINTEGRO TO WS-SALDO GIVING WS-RES.
               PERFORM 00004-MOSTRAR.


           00004-MOSTRAR.
                   DISPLAY "EL SALDO ES " LINE 11 COLUMN 20,
                   WS-RES LINE 11 COLUMN 35 BACKGROUND-COLOR IS 2.
                   MOVE WS-RES TO WS-SALDO.
                   STOP "PULSE UNA TECLA PARA CONTINUAR".

           00005-IMPRIMIR.
               OPEN OUTPUT TICKET
               MOVE WS-RES TO SALDO.
               MOVE WS-NOMBRE TO NOMBRE.
               MOVE WS-CUENTA TO CUENTA.
               WRITE CLI-TICKET.
               CLOSE TICKET.
               DISPLAY "ARCHIVO CREADO CORRECTAMENTE"LINE 11 COLUMN 20
               BACKGROUND-COLOR IS 2.
               STOP "PULSE UNA TECLA PARA CONTINUAR".



       END PROGRAM cajero.
