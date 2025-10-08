% Invertir una lista usando recursión.

invertir(Lista,Resultado) :- invertir_aux(Lista, [],Resultado). 
invertir_aux([],Acumulador,Acumulador). 
invertir_aux([Cabeza|Cola],Acumulador,Resultado) :- invertir_aux(Cola, [Cabeza|Acumulador],Resultado). 

%consulta de ejemplo:
% invertir([a,b,c,d], L).
% L = [d, c, b, a].