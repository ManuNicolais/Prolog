%Verificar si una lista es palíndro1mo

% Consulta Ejemplo:
%?- palindromo([r,a,d,a,r]).
%true.
%?- palindromo([1,2,3]).
%false.

palindromo([]).
palindromo([_]).
palindromo(Lista) :- append([Cabeza|Resto], [Cabeza], Lista), palindromo(Resto).

% Otra forma de hacerlo usando reverse/2
palindromoRevese(L) :- reverse(L, L).


