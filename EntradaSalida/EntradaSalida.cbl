000001 IDENTIFICATION DIVISION.
       program-id. ENTRADA-SALIDA.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WKS-NOMBRE PICTURE A(30).                                     77 NUMERO DE NIVEL.BUENA COSTUMBRE PONER A LA DIVISION DONDE PERTENECE LA VARIABLE
                                                                        CLAPSULA PICTURE A MARCATIPO VARIABLE ALFABETICA Y (LONGITUD)

       PROCEDURE DIVISION.
           DISPLAY "BIENVENIDO AL PROGRAMA".
           DISPLAY "INTRODUCE TU NOMBRE:".
           accept WKS-NOMBRE.                                           ACCEPT PARA DECIR DONDE SE GUARDARA LA INFORMACION
           DISPLAY "TU NOMBRE ES: ",WKS-NOMBRE                          MOSTRAR LA IFNORMACION POR PANTALLA
           STOP "PAUSA"

           STOP RUN.