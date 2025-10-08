% Sistema de Recomendación de películas por género

% Consulta ejemplo:

% ?- recomendar_pelicula(ciencia_ficcion, P).
% P = "Matrix" ;
% P = "Inception".

%debo apretar " ; " luego del primer resultado

pelicula(ciencia_ficcion, "Matrix").
pelicula(ciencia_ficcion, "Inception").
pelicula(drama, "Forrest Gump").
pelicula(comedia, "La Mascara").

recomendar_pelicula(Genero, P) :- pelicula(Genero, P).