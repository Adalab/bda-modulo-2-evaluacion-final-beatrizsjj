# Evaluación SQL y Python

Este repositorio contiene la resolución de dos ejercicios de evaluación relacionados con Python, APIs y SQL.

## Contenido del proyecto

El proyecto está dividido en dos ejercicios:

### Ejercicio 1

En este ejercicio se extraen datos de una API de películas:

https://beta.adalab.es/resources/apis/pelis/pelis.json

A partir de esos datos, se realiza una limpieza básica con Python y se crea una base de datos en MySQL. Posteriormente, se insertan los datos extraídos en una tabla SQL y se realizan consultas sobre esa base de datos.

Los datos utilizados son:

- Título
- Año de lanzamiento
- Duración
- Género
- Contenido para adultos
- Subtítulos disponibles

### Ejercicio 2

En este ejercicio se trabaja con una base de datos ya definida (Sakila), que se puede descargar del repositorio (sakila_bd y sakila_data). El código SQL permite crear la base de datos y sus tablas en MySQL, insertar los datos correspondientes y realizar las consultas solicitadas en el enunciado.

## Tecnologías utilizadas

- Python
- Pandas
- Requests
- MySQL
- MySQL Connector
- Jupyter Notebook
- dotenv

## Cómo arrancar el proyecto

1. Clonar el repositorio
2. Instalar las librerías necesarias. Para ello ejecutar:
```bash
!pip install pandas requests mysql-connector-python python-dotenv
````

3. Crear un archivo .env con la contraseña de MySQL
4. Ejecutar los notebooks