--1
SELECT COUNT(*)
FROM film
WHERE length > (
       SELECT AVG(length)
       FROM film
);

--2
SELECT COUNT(*)
FROM film
WHERE rental_rate = (
        SELECT MAX(rental_rate)
        FROM film
);

--3
SELECT title
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
      AND
      replacement_cost = (SELECT MIN(replacement_cost) FROM film);
      
--4
SELECT p.customer_id, c.first_name, c.last_name, COUNT(p.customer_id) 
FROM payment as p
LEFT JOIN customer as c on c.customer_id = p.customer_id
GROUP BY p.customer_id, c.first_name, c.last_name
HAVING COUNT(p.customer_id) = 
(
    SELECT MAX(count) 
    FROM (SELECT customer_id, COUNT(customer_id) count FROM payment GROUP BY customer_id) 
    AS max_customer
);
