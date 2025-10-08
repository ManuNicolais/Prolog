%Eliminar un elemento de la lista

%Ejemplo:
% ?- eliminar(3, [1,3,2,3,4], R).
% R = [1,2,4].

eliminar(_, [], []). % caso base 
eliminar(E, [E|T], R) :- eliminar(E, T, R). % si el elemento es igual, no lo incluyo en el resultado
eliminar(E, [H|T], [H|R]) :- H \= E, eliminar(E, T, R). % si el elemento no es igual, lo incluyo en el resultado

