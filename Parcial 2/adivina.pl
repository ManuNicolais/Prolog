%
%1. Adivina el número
%El sistema piensa un número dentro de un rango (ej: 1 a 100).
%El jugador propone un número y el sistema responde con pistas:
%“Es mayor”
%“Es menor”
%“¡Correcto!”
%Requiere reglas de comparación y control de intentos.
%

% ================================
%  Juego: Adivina el numero (con puntajes)
% ================================

main :-
    nl,
    write('================================'), nl,
    write('      BIENVENIDO AL JUEGO       '), nl,
    write('        ADIVINA EL NUMERO        '), nl,
    write('================================'), nl, nl,
    write('INSTRUCCIONES:'), nl,
    write('- Pense en un numero entre 1 y 100.'), nl,
    write('- Escribi solo un numero seguido de un punto, por ejemplo: 45.'), nl,
    write('- El mejor jugador es el que tiene menos intentos.'), nl,
    write('- Al final se mostrara la tabla de puntajes.'), nl, nl,
    write('Comencemos...'), nl, nl,
    write('Por favor, escribe tu nombre (entre comillas, terminado con punto): '), nl,
    read(Nombre),
    random_between(1, 100, NumeroSecreto),
    jugar(NumeroSecreto, 0, Nombre).

% ----------------------------------------
% Predicado principal del juego
% ----------------------------------------
jugar(NumeroSecreto, Intentos, Nombre) :-
    write('Introduce tu numero: '),
    read(N),
    (   validar_numero(N) ->
        NuevoIntento is Intentos + 1,
        verificar(N, NumeroSecreto, NuevoIntento, Nombre)
    ;   nl, write('Entrada invalida. Ingresa un numero entre 1 y 100.'), nl, nl,
        jugar(NumeroSecreto, Intentos, Nombre)
    ).

% ----------------------------------------
% Validar numero
% ----------------------------------------

validar_numero(N) :- integer(N), N >= 1, N =< 100.

% ----------------------------------------
% Comparaciones y mensajes
% ----------------------------------------
verificar(N, NumeroSecreto, Intentos, Nombre) :-
    N =:= NumeroSecreto, !,
    nl,
    write('Correcto, solo te tomo '), write(Intentos), write(' intentos.'), nl,
    guardar_puntaje(Nombre, Intentos),
    mostrar_puntajes,
    write('===================================='), nl,
    write('         FIN DE LA PARTIDA          '), nl,
    write('Para volver a jugar, escriba "main."'), nl,
    write('===================================='), nl.


verificar(N, NumeroSecreto, Intentos, Nombre) :-
    N < NumeroSecreto, !,
    write('Intento '), write(Intentos), write(': el numero secreto es mayor.'), nl, nl,
    jugar(NumeroSecreto, Intentos, Nombre).

verificar(N, NumeroSecreto, Intentos, Nombre) :-
    N > NumeroSecreto, !,
    write('Intento '), write(Intentos), write(': el numero secreto es menor.'), nl, nl,
    jugar(NumeroSecreto, Intentos, Nombre).

% ----------------------------------------
% Guardar puntaje en archivo
% ----------------------------------------
guardar_puntaje(Nombre, Intentos) :-
    open('puntajes.txt', append, Stream),
    write(Stream, Nombre), write(Stream, ' '), write(Stream, Intentos), nl(Stream),
    close(Stream).

% ----------------------------------------
% Mostrar tabla de puntajes ordenada
% ----------------------------------------
mostrar_puntajes :-
    nl, write('=== TABLA DE PUNTAJES ==='), nl,
    open('puntajes.txt', read, Stream),
    leer_todos_puntajes(Stream, Lista),
    close(Stream),
    sort(2, @=<, Lista, Ordenada),
    mostrar_lista(Ordenada), nl.

leer_todos_puntajes(Stream, []) :-
    at_end_of_stream(Stream), !.
leer_todos_puntajes(Stream, [(Nombre, Puntaje)|Resto]) :-
    read_line_to_string(Stream, Linea),
    split_string(Linea, " ", "", [NStr, PStr]),
    atom_string(Nombre, NStr),
    number_string(Puntaje, PStr),
    leer_todos_puntajes(Stream, Resto).

mostrar_lista([]).
mostrar_lista([(N, P)|Resto]) :-
    write(N), write(' - '), write(P), write(' intentos'), nl,
    mostrar_lista(Resto).

