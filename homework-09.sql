--1
SELECT c1.city, c2.country
FROM city as c1
INNER JOIN country as c2 on c2.country_id = c1.country_id

--2
SELECT p.payment_id, c.first_name, c.last_name
FROM payment as p
INNER JOIN customer as c on c.customer_id = p.customer_id

--3
SELECT r.rental_id, c.first_name, c.last_name
FROM rental as r
INNER JOIN customer as c on c.customer_id = r.customer_id
