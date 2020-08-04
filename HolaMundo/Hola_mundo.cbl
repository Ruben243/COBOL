000001* Mi primer programa en cobol
000002 identification division.
000003 program-id. Hola_mundo.                                          identification division OBLIGATORIA Contiene el nombre de programa (program-id)
                                                                        quien lo escribio y cuando se escribio
                                                                        y la fecha de compilacion
       
       environment division.                                            Informacion sobre las computadores que compilaran el programa e informacion
                                                                        sobre el mismo.Da un nombre de los archivos del programa y donde se guardaran(disco,ect)

       DATA DIVISION.                                                   Contiene informacion de detalles del archivo,registros,campos de registtro
                                                                        y variables de trabajo.

       procedure division.                                              Tiene todas las funciones que va hacer el programa,mostrar datos y demas.

           display "Hola mundo,Hola Linkedin".                          Display  muestra el texto por pantalla

           STOP "PAUSA".                                                Stop para el programa,hasta que le des enter
       
       STOP RUN.                                                        Indica que termina el programa