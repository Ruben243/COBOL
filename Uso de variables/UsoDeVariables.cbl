000001 IDENTIFICATION DIVISION.
       PROGRAM-ID. UsoDeVariables.
       

       ENVIRONMENT DIVISION.
       

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WKS-NOMBRE                   PICTURE A(30).                     77 INDICA QUE UNA VARIABLE ELEMENTA QUE NO PUEDE SER DIVIDIDA.NO PUEDE SER RENOMBRADA
       01 WKS-REGISTRO-EMPLEADO.                                         01 INDICA QUE PUEDE SER DIVIDIDA.LAS VARIABLES DIVIDIDAS NO LEVAN TIPO DE VARIABLE AL SER COMPUESTAS.NO PUEDE SER RENOMBRADA
           02 WKS-NOM-EMP.
               03 WKS-NOMBRE-TRAB      PICTURE A(20) VALUES "RUBEN".      VALOR POR DEFECTO
               03 WKS-APELLIDO-PATERNO PICTURE A(20) 
                                           VALUES "FERNANDEZ".
               03 WKS-APELLIDO-MATERNO PICTURE A(20)
                                           VALUES "PEREZ".
           02 WKS-EDAD                 PICTURE 9(02)
                                           VALUES 33.                    9 INDICA VARIABLE NUMERICA
           02 WKS-SALARIO              PICTURE 9(05)V99
                                            VALUES 300.22.               V99 O V9(02) INDICA QUE TIENE DOS DECIMALES  

       66 WKS-APELLIDOS-TRAB RENAMES WKS-APELLIDO-PATERNO 
     -  THRU WKS-APELLIDO-MATERNO.                                                      RENOMBRAR UNA VARIABLE
      
       01 WKS-BANDERA                  PIC 9(01).
           88 WKS-TRUE  VALUE 1.
           88 WKS-FALSE VALUE 0.
       77 GASTOS                       PIC 9(05)V9(2).
       77 WS-HORAS                     PIC 9(10).
       01 WS-DIRECCION                 PIC X(30)
                                           VALUE "CALLE JA 34".          X INDICA CAMPO ALFANUMERICO

       
       procedure division.
       000001-primer-seccion section.
       000001-miparrafo.
           DISPLAY "Bienvenido al 3 programa".
           DISPLAY "Programa de variables".
           DISPLAY "INTRODUCE TU NOMBRE".
           ACCEPT WKS-NOMBRE.
           DISPLAY "HOLA ",WKS-NOMBRE.
           DISPLAY "EDAD: ", WKS-EDAD.
           DISPLAY "NOMBRE: ",WKS-NOMBRE-TRAB.
           DISPLAY "APELLIDOS: ",WKS-APELLIDOS-TRAB.
           DISPLAY "DIRECCION: ", WS-DIRECCION.
           DISPLAY "SALARIO: "  WKS-SALARIO.
           DISPLAY "BANDERA: " WKS-BANDERA.
           STOP "PAUSA".
           


       stop run.
       