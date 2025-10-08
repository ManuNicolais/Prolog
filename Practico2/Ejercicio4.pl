%Insertar un elemento en una lista en la posición N
% Ejemplo:
% ?-  insertar(99, 2, [10,20,30,40], R).
% R = [10,20,99,30,40].

%forma 1
insertar(Elem, 1, Lista, [Elem|Lista]).
insertar(Elem, N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    insertar(Elem, N1, T, R).

%lo mismo escrito de otra forma
insertar2(E, 1, L, [E|L]).
insertar2(E, N, [C|R], [C|R1]) :- N > 1, N1 is N - 1, insertar2(E, N1, R, R1). 

