      ******************************************************************
      * Author:Ruben Gines
      * Date:03/09/202 01:35
      * Purpose:probar borrar pantalla y formateado
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. pruebas.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-SALUDO PIC A(25) VALUE " BIENVENIDO AL PROGRAMA ".
       01 WS-DATOS-PERSONALES.
          05 WS-NOMBRE PIC A(10).
          05 WS-APELLIDOS PIC A(10).
       77 WS-OPCION PIC A(01).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM 00001-LIMPIA UNTIL WS-OPCION="S".
            STOP " ".
            STOP RUN.

           00001-LIMPIA.
      *         BLANK SCREEN en un display vacio borra la pantalla y
      *         coloca el cursos al principio y se imprime todo otra vez
      *         en el mismo sito
                DISPLAY " " BLANK SCREEN.
                DISPLAY WS-SALUDO BACKGROUND-COLOR IS 2
                LINE 1 COLUMN 30.
                PERFORM 00002-DATOS.
                PERFORM 00003-MOSTRAR.

           00002-DATOS.
               DISPLAY "INTRODUCE TU NOMBRE: " LINE 3 COLUMN 15.
               ACCEPT WS-NOMBRE LINE 3 COLUMN  40 BACKGROUND-COLOR IS 1.
               DISPLAY "INTRODUCE TU APELLIDO" LINE 5 COLUMN 15 .
               ACCEPT WS-APELLIDOS LINE 5 COLUMN 40
               BACKGROUND-COLOR IS 1.
           00003-MOSTRAR.
               DISPLAY "TU NOMBRE ES: "LINE 7
               COLUMN 15 ,WS-DATOS-PERSONALES LINE 7
               COLUMN 40  BACKGROUND-COLOR IS 1.

               DISPLAY "DESEAS CONTINUAR (S-SALIR): " LINE 9 COLUMN 15.
               ACCEPT WS-OPCION LINE 9 COLUMN 45 BACKGROUND-COLOR IS 1.

       END PROGRAM pruebas.
