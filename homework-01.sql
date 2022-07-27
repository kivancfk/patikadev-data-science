--1
SELECT title, description
FROM film

--2
SELECT *
FROM film
WHERE length > 60 and length < 75

--3
SELECT *
FROM film
WHERE rental_rate = 0.99 and (replacement_cost = 12.99 or replacement_cost = 28.99)

--4
SELECT last_name
FROM customer
WHERE first_name = 'Mary'

-- query result: Mary Smith 

--5
SELECT *
FROM film
WHERE length < 50 and (rental_rate != 2.99 and rental_rate != 4.99)
