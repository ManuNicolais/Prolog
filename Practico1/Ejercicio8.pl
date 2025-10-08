% Encontrar el número mayor en una lista. 

max_lista([H|T],H):-max_lista(T,M_Cola),H>=M_Cola. 
max_lista([H|T],M_Cola):-max_lista(T,M_Cola),H<M_Cola. 
max_lista([X],X). 
maximo(Lista,Max):-max_lista(Lista,Max). 

%consulta de ejemplo:
% ?- maximo([3,1,4,1,5,9,2,6,5,3,5], M).
% M = 9.