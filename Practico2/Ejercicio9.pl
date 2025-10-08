% Sistema de recomendación de cursos

% Consulta:

% ?- recomendar_curso(programacion, R).
% R = "Python Basico".

curso(programacion, "Python Basico").
curso(programacion, "Java Intermedio").
curso(disenio, "UX/UI").
curso(ia, "Machine Learning").

recomendar_curso(Area, R) :- curso(Area, R).