%  Definir un predicado que concatene dos  listas. 

concatena([],L,L). 
concatena([X|L1],L2, [X|L3]) :- concatena(L1,L2,L3). 

%consulta de ejemplo:
% ?- concatena([a,b],[c,d],L).
% L = [a, b, c, d].