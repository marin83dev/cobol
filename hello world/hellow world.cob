       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.
       DATA DIVISION.
       working-storage SECTION.
       01 nombre_usario PIC A(30).
       
       PROCEDURE DIVISION.
           DISPLAY "Introduce tu nombre: ".
           accept nombre_usario.
           DISPLAY "Hola, "nombre_usario "!"
           STOP RUN.
           