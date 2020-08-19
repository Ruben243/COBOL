000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. calculadora.

       ENVIRONMENT DIVISION.
       

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WS-NUM1          PIC S9(05)V99.                                S INDICA QUE MUESTRA EL SIGNO POSITIVO O NEGATIVO
       77 WS-NUM2          PIC S9(05)V9(02).
       77 WS-RESULTADO     PIC S9(10)V99.
      *77 WS-RESULTADO2    PIC S9(10)V99.
       77 WS-OPCION        PIC A(01).
       77 WS-ELECCION      PIC 9(1).
       77 WS-RES-FORMAT    PIC -ZZZZZZZZZ9.99.                           - LE DA FORMATO AL VALOR POSITIVO O NEGATIVO LA Z INDICA SI ESTA A CERO NO A LA IZQUIERDA NO LA MUESTRA

       PROCEDURE DIVISION.
       00001-MI-SECCION SECTION.
       00001-MAIN.
          PERFORM 00000-CALCULADORA UNTIL WS-ELECCION=2.                 UNTIL ES WHILE    
                                                                         OTRO FORMA PARA LOS COMPARADORES IF: 
                                                                         X GREATER THAN  Y
                                                                         X LESS Y
                                                                         X EQUAL Y O X EQUALS Y 
                                                                         X NOT EQUAL Y 
                                                                         (X GREATER THAN Y) OR (X EQUAL Y)
                                                                         (X LESS THAN Y) OR (X EQUAL Y)


       STOP RUN.
      *******************RUTINAS *********************************

       00000-CALCULADORA.
           DISPLAY "1-USAR LA CALCULADORA,2-SALIR" erase line.
           ACCEPT WS-ELECCION LINE 3.

           IF WS-ELECCION= 1
               PERFORM 00001-PEDIR-DATOS                                 PERFORM LLAMA A LA RUTINA 00001-PEDIR-DATOS.
               PERFORM 00002-EJECUTAR-OPERACIONES
              
           ELSE
               IF WS-ELECCION NOT = 2
                  DISPLAY "OPERACION INVALIDA".


       00001-PEDIR-DATOS.
           DISPLAY "CALCULADORA" LINE 4.
           DISPLAY "DAME EL NUMERO 1" LINE 5.
           ACCEPT WS-NUM1 LINE 6.
           DISPLAY "DAME EL NUMERO 2" LINE 7.
           ACCEPT WS-NUM2 LINE 8.
           DISPLAY "INDICA LA OPERACION A REALIZAR:S=SUMA,
      -  "R=RESTA,M=MULTIPLICACION,D=DIVISION" LINE 9 COLUMN 1.
           ACCEPT WS-OPCION LINE 10. 
       



       00002-EJECUTAR-OPERACIONES.
            IF WS-OPCION = "S" OR "s"                                          COMPARADORES IF: < , > NOT= , NOT >(MENOR O IGUAL),NOT < (IGUAL O MAYOR)
                ADD WS-NUM1 TO WS-NUM2  GIVING WS-RESULTADO              SUMA DE NUMEROS:ADD INDICA SUMA Y TO INDICA EL NUMERO QUE SE LE SUMA Y SE LO ASIGNAS A RESULTADO CON GIVING
                                                                         IMPORTANTE! EN LOS IF LA UNICA SENTENCIA QUE LLEVA . 
                                                                         ES LA ULTIMA,AHI MARCA EL FIN DEL IF

            ELSE IF WS-OPCION = "R" or "r"
                SUBTRACT WS-NUM1 FROM WS-NUM2 GIVING WS-RESULTADO        SUBTRACT INDICA RESTA FROM AL NUMERO QUE SE LE SUSTRAE GIVING LO ASIGNA A RESULTADO
            
           
           ELSE IF WS-OPCION = "M" OR "m"
               MULTIPLY WS-NUM1 BY WS-NUM2 GIVING WS-RESULTADO           MULTIPLY INDICA MULTIPLIACION BY EL NUMERO QUE SE MULTIPLICA GIVING LO ASIGNA A RESULTADO
             

           ELSE IF WS-OPCION = "D" OR "d"
                DIVIDE WS-NUM1 INTO WS-NUM2 GIVING WS-RESULTADO          DIVIDE INDICA DIVISION INTO EL NUMERO A DIVIDIR Y GIVING LO ASIGNA A RESULTADO
              
           ELSE
                DISPLAY "OPERACION INVALIDAD,VERIFIQUE" LINE 11.


           IF WS-OPCION= "S" OR "s" OR "R" OR "r" OR "M" OR "m" 
      -         OR "D" OR "d"
               MOVE WS-RESULTADO TO WS-RES-FORMAT
               DISPLAY WS-RES-FORMAT LINE 11.
            
          
         STOP "PRESIONE CUALQUIER TECLA PARA CONTINUAR".