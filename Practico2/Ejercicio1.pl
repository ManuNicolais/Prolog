%Suma de elementos de una lista
    %Ejemplo:
    % ?- suma([1,2,3,4], S).
    % S = 10.

suma([], 0).
suma([Cabeza|Cola], S) :- suma(Cola, S1), S is Cabeza + S1.

%consulta de ejemplo:
% ?- suma([1,2,3,4], S).
% S = 10.