% Sistema de Recomendación de viajes según clima preferido
% Consulta:

%?- recomendar_viaje(calor, R).
%R = "Miami".

viaje(calor, "Miami").
viaje(frio, "Bariloche").
viaje(templado, "Madrid").
viaje(lluvioso, "Londres").
viaje(nieve, "Esquel").

recomendar_viaje(Clima, R) :- viaje(Clima, R).