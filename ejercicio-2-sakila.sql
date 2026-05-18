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
SELECT DISTINCT rating, COUNT(*) AS total_film_per_rating
FROM film
GROUP BY rating;

-- Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su
-- nombre y apellido junto con la cantidad de películas alquiladas.

SELECT c.customer_id, c.first_name, c.last_name, COUNT(*) AS films_per_customer
FROM customer c
LEFT JOIN rental r ON r.customer_id= c.customer_id
GROUP BY c.customer_id;


-- Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría 
-- junto con el recuento de alquileres.
SELECT c.name, COUNT(rental_id) AS total_rental
FROM category c
LEFT JOIN film_category fc ON c.category_id = fc.category_id
LEFT JOIN film f ON f.film_id = fc.film_id
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON r.inventory_id = i.inventory_id
GROUP BY c.name;

-- Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y
-- muestra la clasificación junto con el promedio de duración.
SELECT rating, AVG(length) AS length_avg
FROM film
GROUP BY rating;

-- Encuentra el nombre y apellido de los actores que aparecen en la película con title "Indian Love".
SELECT a.first_name, a.last_name
FROM actor a
LEFT JOIN film_actor fa ON fa.actor_id = a.actor_id
LEFT JOIN film f ON f.film_id = fa.film_id
WHERE title = "Indian Love";

-- Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción.
SELECT title, description
FROM film
WHERE description LIKE "%dog%" OR "%cat%";

-- Encuentra el título de todas las películas que fueron lanzadas entre el añoo 2005 y 2010.
SELECT title, release_year
FROM film
WHERE release_year BETWEEN 2005 AND 2010
ORDER BY release_year;
