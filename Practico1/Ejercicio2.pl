% Dos personas son amigas si les gusta la  misma comida. 
gusta(juan, pizza). 
gusta(pedro, pizza). 
gusta(maria, pasta). 

amigos(X, Y) :- gusta(X, Comida), gusta(Y, Comida), X \=Y.

%consulta de ejemplo:
% amigos(juan, maria).
% false.
% amigos(juan, pedro).
% true.