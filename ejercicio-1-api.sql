CREATE SCHEMA peliculas_evaluacion;
USE peliculas_evaluacion;
CREATE TABLE Peliculas (
id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(300) NOT NULL,
anio INT NOT NULL,
duracion INT NOT NULL,
genero VARCHAR(100) NOT NULL,
adultos BOOLEAN NOT NULL,
subtitulos VARCHAR (100) 
);

-- Cuántas películas tienen una duración superior a 120 minutos?
SELECT *
FROM peliculas
WHERE duracion >120
ORDER BY duracion;

--  Cuántas películas incluyen subtítulos en español?
SELECT *
FROM peliculas
WHERE subtitulos LIKE '%es%';

--  Cuántas películas tienen contenido adulto?
SELECT *
FROM peliculas
WHERE adultos = True;

--  Cuál es la película más antigua registrada en la base de datos?
SELECT *
FROM peliculas
ORDER BY anio ASC
LIMIT 1;

-- Muestra el promedio de duración de las películas agrupado por género.
SELECT genero, AVG(duracion)
FROM peliculas
GROUP BY genero;

--  Cuántas películas por año se han registrado en la base de datos? Ordena de mayor a menor.
SELECT anio, COUNT(anio) AS peliculas_por_anio
FROM peliculas
GROUP BY anio
ORDER BY anio DESC;

--  Cuál es el año con más películas en la base de datos
SELECT anio, COUNT(anio) AS peliculas_por_anio
FROM peliculas
GROUP BY anio
ORDER BY peliculas_por_anio DESC
LIMIT 1;

-- Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno.
SELECT genero, COUNT(titulo) AS peliculas_por_genero
FROM peliculas
GROUP BY genero;

-- Muestra todas las películas cuyo título contenga la palabra "Godfather" (puedes usar cualquier palabra)
SELECT *
FROM peliculas
WHERE titulo LIKE "%Godfather%";