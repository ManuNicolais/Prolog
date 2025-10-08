%  Definir una regla para saber si un animal  puede volar.

s_ave(canario). 
es_ave(pinguino). 
no_vuela(pinguino). 
puede_volar(  X  ) :- es_ave(  X  ), \+ no_vuela(  X  ). 

%consulta de ejemplo:
% puede_volar(canario).
% true.
% puede_volar(pinguino).
% false.