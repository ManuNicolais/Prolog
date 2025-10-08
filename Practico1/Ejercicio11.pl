% Crea una regla "maximo" que devuelva elmayor entre dos números. 

maximo(X,Y,X) :- X >= Y, !. 
maximo(_,Y,Y). 

%consulta de ejemplo:
% ?- maximo(5,3,M).
% M = 5.  