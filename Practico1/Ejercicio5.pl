%  Calcular la longitud de una lista. 

longitud([],  0  ). 
longitud([  _  |  Cola  ],  N  ) :- 
longitud(  Cola  ,  N1  ), 
N  is  N1  +  1. 

%consulta de ejemplo:
% ?- longitud([a,b,c,d], L).
% L = 4.