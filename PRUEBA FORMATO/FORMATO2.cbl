*************************
      * Author:RUBEN GINES
      * Date:02-09-2020
      * Purpose:PROBAR FORMATO CON FILLERY COLORES
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FORMATO2.
       DATA DIVISION.
       FILE SECTION.
      *NO USADA DE MOMENTO

       WORKING-STORAGE SECTION.

      * FILLER VALUE SPACE SE PUEDEUSAR PARA COLOR TEXTO,NO SIRVE CON COLORES
      *FILLER VALUE SEGUIDO DE TEXTO CREA UN TEXTO EN PANTALLA
       01 WS-TITULO.
           05 FILLER PIC X(30) VALUE SPACES.
           05 FILLER PIC X(24) VALUES "BIENVENIDO AL PROGRAMA".

      *VARIABLE COMPUESTA POR FILLER CON ESPACIOS Y TEXTO Y DEFINICION DE VARIABLESQUE LA COMPONEN
       01 WS-DATOS-PERSONALES.
           05 FILLER PIC X(15) VALUE SPACES.
           05 FILLER PIC X(08) VALUE "NOMBRE: ".
           05 WS-NOMBRE PIC A(11).
           05 FILLER PIC X(09) VALUE SPACES.
           05 FILLER PIC X(10) VALUE "APELLIDO: ".
           05 WS-APELLIDO PIC A(15).


       01 WS-DATOS.
           05 FILLER PIC X(15) VALUE SPACES.
           05 FILLER PIC X(05) VALUE "DNI: ".
           05 WS-DNI PIC X(09).
           05 FILLER PIC X(14) VALUE SPACES.
           05 FILLER PIC X(20) VALUE "FECHA DE NACIMIENTO".
           05 WS-FECHA-NACIMIENTO.
               10 WS-DIA PIC 9(02).
               10 FILLER PIC X(01) VALUE "/".                            SE DARA FORMATO DE SALIDA A LA FECHA
               10 WS-MES PIC 9(02).
               10 FILLER PIC X(01) VALUE "/".
               10 WS-ANIO PIC 9(04).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY WS-TITULO LINE 2.

      * LLAMADAS A LAS RUTINAS QUE SE EJECUTAN EN ORDEN
           PERFORM 00000-NOMBRE.
           PERFORM 00001-DATOS.
           PERFORM 00002-MOSTRAR.

           STOP RUN.

      *RUTINA QUE PEDIRA AL USUARIO SU NOMBRE Y APELLIDOS,MOSTRANDO Y FONDO AZUL
           00000-NOMBRE.
               DISPLAY "INTRODUCE TU NOMBRE" LINE 3.
               ACCEPT WS-NOMBRE LINE 4 BACKGROUND-COLOR IS 1.
               DISPLAY "INTRODUCE TU APELLIDO" LINE 5 .
               ACCEPT WS-APELLIDO LINE 6 BACKGROUND-COLOR IS 1.


      *RUTINA QUE PEDIRA AL USUARIO SU DNI Y SU FECHA DE NACIMIENTO,MOSTRARA FONDO AZUL
           00001-DATOS.
               DISPLAY "INTRODUCE TU DNI" LINE 7.
               ACCEPT WS-DNI LINE 8 BACKGROUND-COLOR IS 1.
               DISPLAY "INTRODUCE TU FECHA DE NACIMIENTO"LINE 9.
               ACCEPT WS-DIA LINE 10 BACKGROUND-COLOR 1.
               ACCEPT WS-MES LINE 10 BACKGROUND-COLOR 1.
               ACCEPT WS-ANIO LINE 10 BACKGROUND-COLOR 1.

      *RUTINA QUE MOSTRARA LOS DATOS DEL USUARIO
           00002-MOSTRAR.
               DISPLAY WS-DATOS-PERSONALES LINE 14.
               DISPLAY WS-DATOS LINE 15.
               STOP " PULSA INTRO PARA SALIR".