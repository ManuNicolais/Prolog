% 2. Producto de elementos de una lista
    

producto([], 1).
producto([Cabeza|Cola], P) :- producto(Cola, P1), P is Cabeza * P1.
%consulta de ejemplo:
% ?- producto([2,3,4], P).
    % P = 24.