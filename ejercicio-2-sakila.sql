-- EJERCICIO 2 BASE DE DATOS SAKILA

USE sakila;

-- Selecciona todos los nombres de las películas sin que aparezcan duplicados.
SELECT DISTINCT title AS titulo
FROM film;

-- Muestra los nombres de todas las películas que tengan una clasificación de "PG-13".film
SELECT title, rating
FROM film
WHERE rating = "PG-13";

-- Encuentra el título y la descripción de todas las pel culas que contengan la palabra "amazing" en su descripción.
SELECT title, description
FROM film
WHERE description LIKE "%amazing%";

-- Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos.
SELECT title,length
FROM film
WHERE length > 120 
ORDER BY length DESC;

-- Recupera los nombres de todos los actores.
SELECT first_name, last_name
FROM actor
ORDER BY last_name ASC;

-- Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE "%Gibson%";

-- Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20
SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id BETWEEN 10 AND 20;

-- Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su clasificación.
SELECT title, rating
FROM film
WHERE rating != "R" AND rating != "PG-13";

-- Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la clasificación junto con el recuento.