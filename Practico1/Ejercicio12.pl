% Escribe una regla en Prolog que dupliquecada elemento de una lista.

duplicar([], []). 
duplicar([Cabeza|Cola], [Cabeza,Cabeza|ColaDuplicada]) :- 
duplicar(Cola,ColaDuplicada). 

%consulta de ejemplo:
% ?- duplicar([a,b,c], L).
% L = [a, a, b, b, c, c].