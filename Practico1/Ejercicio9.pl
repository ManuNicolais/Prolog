% Un número es par si es divisible por 2.  Crea una regla "par" que lo verifique. 

par(  N  ) :-  0  is  N  mod  2.

%consulta de ejemplo:
% ?- par(4).
% true.