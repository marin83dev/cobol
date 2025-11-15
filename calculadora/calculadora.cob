
       identification division.
       program-id. CALCULADORA.

       data division.
       working-storage section.
       01 num1 pic 9(5).
       01 num2 pic 9(5).
       01 result pic s9(7)V9(2).
       01 option pic 9.

       procedure division.
       display "---------------------"
       display "  CALCULADORA COBOL  "
       display "---------------------"

       display "Introduce el primer numero: "
       accept num1

       display "Elige el segundo numero: "
       accept num2

       display "Elige operacion"
       display "1. Sumar"
       display "2. Restar"
       display "3. Multiplicar"
       display "4. Dividir"
       accept option

       evaluate option
           when 1
               compute result =num1 + num2
               display "Resultado: "result
           when 2
               compute result = num1 - num2
               display "Resultado: "result
           when 3
               compute result = num1 * num2
               display "Resultado: "result
           when 4
               if num2 = 0
                   display "No puedes dividir esto imbecil"
               else
                   compute result = num1 / num2
                   display "Resultado: "result
               end-if
           when other
               display "Operacion no valida"
           end-evaluate
           stop run.
           