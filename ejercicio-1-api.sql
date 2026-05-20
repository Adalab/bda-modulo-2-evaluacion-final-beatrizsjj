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

-- 1. Cuántas películas tienen una duración superior a 120 minutos?
SELECT *
FROM peliculas
WHERE duracion >120
ORDER BY duracion;

SELECT COUNT(*) AS peliculas_duracion_mas120
FROM peliculas
WHERE duracion >120;

--  2.Cuántas películas incluyen subtítulos en español?
SELECT COUNT(*) AS total_subtitulos_es
FROM peliculas
WHERE subtitulos LIKE '%es%';

SELECT *
FROM peliculas
WHERE subtitulos LIKE '%es%';

--  3.Cuántas películas tienen contenido adulto?
SELECT *
FROM peliculas
WHERE adultos = True;

SELECT COUNT(*) AS pelis_contenido_adulto
FROM peliculas
WHERE adultos = True;

--  4.Cuál es la película más antigua registrada en la base de datos?
SELECT *
FROM peliculas
ORDER BY anio ASC
LIMIT 1;

SELECT *
FROM peliculas
WHERE anio = (
SELECT MIN(anio)
FROM peliculas);

-- 5.Muestra el promedio de duración de las películas agrupado por género.
SELECT genero, AVG(duracion)
FROM peliculas
GROUP BY genero;

--  6.Cuántas películas por año se han registrado en la base de datos? Ordena de mayor a menor.
SELECT anio, COUNT(anio) AS peliculas_por_anio
FROM peliculas
GROUP BY anio
ORDER BY anio DESC;

--  7.Cuál es el año con más películas en la base de datos
SELECT anio, COUNT(anio) AS peliculas_por_anio
FROM peliculas
GROUP BY anio
ORDER BY peliculas_por_anio DESC
LIMIT 2;


-- 8. Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno.
SELECT genero, COUNT(titulo) AS peliculas_por_genero
FROM peliculas
GROUP BY genero;

-- 9.Muestra todas las películas cuyo título contenga la palabra "Godfather" (puedes usar cualquier palabra)
SELECT *
FROM peliculas
WHERE titulo LIKE "%Godfather%";