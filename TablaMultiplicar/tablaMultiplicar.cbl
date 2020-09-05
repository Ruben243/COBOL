      ******************************************************************
      * Author:Ruben-GFP
      * Date:05/09/2020
      * Purpose:TABLAS DE MILTIPLICAR
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. tablaMultiplicar.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-CONTADOR      PIC 9(02) VALUE 1.
       77 WS-MULTIPLICADOR PIC 9(02) VALUE 1.
       77 WS-MULTIPLO      PIC 9(02) VALUE 1.
       77 WS-RESULTADO     PIC -Z9.
      * VARIABLES PARA EL RESULTADO FORMATEADO EN PANTALLA
       01 NUMEROS.
           05 MULTIPLO         PIC -Z9.
           05 FILLER           PIC X(03) VALUE"  *".
           05 MULTIPLICADOR    PIC -Z9.
           05 FILLER           PIC X(03) VALUE " = ".
           05 REST             PIC -Z9.
           05 FILLER           PIC X(03) VALUE "  ".
      * VARIABLES PARA LINEAS Y COLUMNAS
       77  WS-LINE   PIC 9(02) VALUE 4.
       77  WS-COL-1  PIC 9(02).
       77  WS-COL-2  PIC 9(02).
       77  WS-COL-3  PIC 9(02).
       77  BG-COLOR  PIC 9(01).


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      * LLAMADA A LA FUNCION DE SALUDO
           PERFORM 00000-SALUDO.
      * ESTABLECIMIENTO DE VALORES DE LAS VARIABLES
           SET BG-COLOR TO 1.
           SET WS-COL-1 TO 20.
           SET WS-COL-2 TO 25.
           SET WS-COL-3 TO 30.
      ******************************************************************
      * LLAMADA A LA FUNCION QUE REALIZA LOS CALCULOS
      * QUE INVOCARA A LA FUNCTION QUE MOSTRARA LA TABLA CON LOS VALORES
      * ESTABLECIDOS
      *
      *********** PRIMERA TABLA*****************************************
           PERFORM 00001-PRIMERA-TABLA.


      * EVALUAMOS EL VALOR DEL CONTADOR
      *
      *********** SEGUNDA TABLA*****************************************
           EVALUATE TRUE
           WHEN WS-CONTADOR > 10
      * ESTABLECIMIENTO DE LOS NUEVOS VALORES PARA LAS VARIABLES
               SET WS-COL-1 TO 40
               SET WS-COL-2 TO 45
               SET WS-COL-3 TO 50
               SET WS-LINE  TO 4
               SET BG-COLOR TO 4
      * SUMAMOS 1 AL MULTIPLO PARA CAMBIAR LA TABLA
               ADD 1        TO WS-MULTIPLO
      * DEVOLVEMOS EL MULTIPLO A 1
               SET WS-MULTIPLICADOR TO 1
      * DEVOLVEMOS EL CONTADOR A 1 PARA QUE VUELVA A EMPEZAR
               SET WS-CONTADOR TO 1
      * LLAMADA A LA FUNCTION CON LOS NUEVOS VALORES
               PERFORM 00001-PRIMERA-TABLA
      * ASIGNAMOS UN VALOR CONTROL AL CONTADOR
               SET WS-CONTADOR TO 21.


      *********** TERCERA TABLA*****************************************
      * EVALUAMOS EL VALOR DEL CONTADOR
           EVALUATE TRUE
           WHEN WS-CONTADOR > 20
      * ESTABLECIMIENTO DE LOS NUEVOS VALORES PARA LAS VARIABLES
               SET WS-COL-1 TO 60
               SET WS-COL-2 TO 65
               SET WS-COL-3 TO 70
               SET WS-LINE  TO 4
               SET BG-COLOR TO 1
      * SUMAMOS 1 AL MULTIPLO PARA CAMBIAR LA TABLA
               ADD 1        TO WS-MULTIPLO
      * DEVOLVEMOS EL MULTIPLO A 1
               SET WS-MULTIPLICADOR TO 1
      * DEVOLVEMOS EL CONTADOR A 1 PARA QUE VUELVA A EMPEZAR
               SET WS-CONTADOR TO 1
      * LLAMADA A LA FUNCTION CON LOS NUEVOS VALORES
               PERFORM 00001-PRIMERA-TABLA
      * ASIGNAMOS UN VALOR CONTROL AL CONTADOR
               SET WS-CONTADOR TO 31.


      *********** CUARTA TABLA*****************************************
      * LA DINAMICA ES LA MISMA,SE CAMBIA WHEN POR IF POR MERA CUESTION
      * DEL GUSTO DEL PROGRMADOR
      ******************************************************************
           IF WS-CONTADOR =31
               SET WS-COL-1 TO 80
               SET WS-COL-2 TO 85
               SET WS-COL-3 TO 90
               SET WS-LINE  TO 4
               SET BG-COLOR TO 4
               ADD 1        TO WS-MULTIPLO
               SET WS-MULTIPLICADOR TO 1
               SET WS-CONTADOR TO 1
               PERFORM 00001-PRIMERA-TABLA
               SET WS-CONTADOR TO 41.

      *********** QUINTA TABLA*****************************************
             IF WS-CONTADOR =41
               SET WS-COL-1 TO 20
               SET WS-COL-2 TO 25
               SET WS-COL-3 TO 30
               SET WS-LINE  TO 15
               SET BG-COLOR TO 4
               ADD 1        TO WS-MULTIPLO
               SET WS-MULTIPLICADOR TO 1
               SET WS-CONTADOR TO 1
               PERFORM 00001-PRIMERA-TABLA
               SET WS-CONTADOR TO 51.

      *********** SEXTA TABLA*****************************************
              IF WS-CONTADOR = 51
               SET WS-COL-1 TO 40
               SET WS-COL-2 TO 45
               SET WS-COL-3 TO 50
               SET WS-LINE  TO 15
               SET BG-COLOR TO 1
               ADD 1        TO WS-MULTIPLO
               SET WS-MULTIPLICADOR TO 1
               SET WS-CONTADOR TO 1
               PERFORM 00001-PRIMERA-TABLA.
               SET WS-CONTADOR TO 61.


      *********** SEPTIMA TABLA*****************************************
              IF WS-CONTADOR = 61
               SET WS-COL-1 TO 60
               SET WS-COL-2 TO 65
               SET WS-COL-3 TO 70
               SET WS-LINE  TO 15
               SET BG-COLOR TO 4
               ADD 1        TO WS-MULTIPLO
               SET WS-MULTIPLICADOR TO 1
               SET WS-CONTADOR TO 1
               PERFORM 00001-PRIMERA-TABLA.
               SET WS-CONTADOR TO 71.


      *********** OCTAVA TABLA*****************************************
              IF WS-CONTADOR = 71
               SET WS-COL-1 TO 80
               SET WS-COL-2 TO 85
               SET WS-COL-3 TO 90
               SET WS-LINE  TO 15
               SET BG-COLOR TO 1
               ADD 1        TO WS-MULTIPLO
               SET WS-MULTIPLICADOR TO 1
               SET WS-CONTADOR TO 1
               PERFORM 00001-PRIMERA-TABLA.
               SET WS-CONTADOR TO 1.

           STOP " ".


           STOP RUN.

      ********************* RUTINAS*************************



      * FUNCION QUE MUESTRA EL SALUDO Y ACCEPTA UN NUMERO POR TECLADO
           00000-SALUDO.
              DISPLAY " TABLA DE MULTIPLICAR " LINE 2 COLUMN 50
              BACKGROUND-COLOR 2.
              DISPLAY "INTRODUZCA UN NUMERO: " LINE 3 COLUMN 50.
      * SE CAPTURA EL VALOR EN MULTIPLO Y SE MUEVE POR UNA CUESTION
      * ESTETICA
              ACCEPT MULTIPLO                  LINE 3 COLUMN 71.
              MOVE MULTIPLO TO WS-MULTIPLO.


      * FUNCION QUE HARA LAS OPERACIONES MATEMATICAS Y EL BUCLE
           00001-PRIMERA-TABLA.
                PERFORM UNTIL WS-CONTADOR =11
                COMPUTE WS-RESULTADO = WS-MULTIPLO * WS-MULTIPLICADOR
                PERFORM 00002-MOSTRAR-TABLA
                ADD 1 TO WS-MULTIPLICADOR
                ADD 1 TO WS-CONTADOR
                END-PERFORM.


      *FUNCION QUE MOSTRARA POR PANTALLA LOS RESULTADOS
            00002-MOSTRAR-TABLA.
              MOVE WS-MULTIPLO      TO MULTIPLO.
              MOVE WS-MULTIPLICADOR TO MULTIPLICADOR.
              MOVE WS-RESULTADO     TO REST .
              ADD 1                 TO WS-LINE.
              DISPLAY NUMEROS LINE WS-LINE COLUMN WS-COL-1
              BACKGROUND-COLOR BG-COLOR.




       END PROGRAM tablaMultiplicar.
