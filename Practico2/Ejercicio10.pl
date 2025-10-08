% Sistema de Recomendación de deportes según condición física

% Consulta:
%?- recomendar_deporte(resistencia, R).
%R = "Maraton" ;
%R = "Natacion".

deporte(resistencia, "Maraton").
deporte(resistencia, "Natacion").
deporte(fuerza, "Levantamiento De Pesas").
deporte(rapidez, "100 metros planos").

recomendar_deporte(Condicion, R) :- deporte(Condicion, R).