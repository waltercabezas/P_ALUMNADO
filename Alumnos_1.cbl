        IDENTIFICATION DIVISION.
        PROGRAM-ID.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 WSC-ESTADOS.
        05 WSC-EDAD-MINIMA  PIC 99 VALUE 18.
        05 WSC-ESTADO-SECUND  PIC X VALUE 'T'.
        05 WSC -ESTADO-CARRERA-OK.
            10 WSC-TERMINADO    PIC X VALUE 'T'.
            10 WSC-ENCURSO      PIC X VALUE 'C'.

        01 WSV-VARIANTES.
        05 WS-POSTULANTES.
            10 WSV-POSTU1.
                15 WSV-NOMBRE1        PIC X(5) VALUE  'PEDRO'.
                15 WSV-EDAD1          PIC 99 VALUE 15.
                15 WSV-SECUNDARIO1    PIC X VALUE 'N'.
                15 WSV-CARRERA1       PIC X VALUE 'N'.
            10 WSV-POSTU2.
                15 WSV-NOMBRE2        PIC X(6) VALUE 'WALTER'.
                15 WSV-EDAD2          PIC 99 VALUE 25.
                15 WSV-SECUNDARIO2    PIC X VALUE 'T'.
                15 WSV-CARRERA2       PIC X VALUE 'T'.
            10 WSV-POSTU3
                15 WSV-NOMBRE3        PIC X(04) VALUE 'LULU'.
                15 WSV-EDAD3          PIC 99 VALUE 19.
                15 WSV-SECUNDARIO3    PIC X VALUE 'T'.
                15 WSV-CARRERA3       PIC X VALUE 'N'.

        05 WSV-POSTU-AUX.
            10 WSV-NOMBRE-AUX     PIC X(06).
            10 WSV-EDAD-AUX          PIC 99.
            10 WSV-SECUNDARIO-AUX    PIC X.
            10 WSV-CARRERA-AUX       PIC X.

       PROCEDURE DIVISION.
        00-CONTROL.
       DISPLAY 'EJERCICIO1: ALUMNADO'.
       DISPLAY '------------------------------------------------------'.

       MOVE WSV-POSTU1 TO WSV-POSTU-AUX.
       PERFORM 20-EVALUAR.

       MOVE WSV-POSTU2 TO WSV-POSTU-AUX.
       PERFORM 20-EVALUAR.

       MOVE WSV-POSTU3 TO WSV-POSTU-AUX.
       PERFORM 20-EVALUAR.

       STOP RUN.
        00-CONTROL-END.
       EXIT.


       20-EVALUAR.
            IF (WSV-EDAD-AUX >= WSC-EDAD-MINIMA AND WSV-SECUNDARIO-AUX
                EQUAL WSC-ESTADO-SECUND
                 WSV-CARRERA-AUX EQUAL WSC-TERMINADO OR WSV-CARRERA-AUX
                 EQUAL WSC-ENCURSO ) )
              DISPLAY WSV-NOMBRE-AUX 'EL ALUMNO CUMPLE LOS REQUISITOS'
            ELSE
                DISPLAY WSV-NOMBRE-AUX 'EL ALUMNO NO CUMPLE CON LOS
                        REQUISITOS'.
            END-IF.

                 DISPLAY '-------------------------------------------'.

            INITIALIZE  WSV-POSTU-AUX.

       20-EVALUAR-END.
       EXIT.
