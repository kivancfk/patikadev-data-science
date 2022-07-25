--1
SELECT *
FROM film
WHERE replacement_cost between 12.99 and 16.99

--2
SELECT first_name, last_name
FROM actor
WHERE first_name in ('Penelope', 'Nick', 'Ed')

--3
SELECT *
FROM film
WHERE rental_rate in (0.99, 2.99, 4.99) and replacement_cost in (12.99, 15.99, 28.99)
