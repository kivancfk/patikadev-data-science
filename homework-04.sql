--1
SELECT DISTINCT
replacement_cost
FROM film

--2
SELECT COUNT(*)
FROM (SELECT DISTINCT replacement_cost FROM film) as result

--3
SELECT COUNT(*)
FROM film
WHERE title LIKE 'T%' and rating = 'G'

--4
SELECT COUNT(*)
FROM country
WHERE length(country) = 5
--WHERE country LIKE '_____' #this where clause is an alternative but not efficient solution

--5
SELECT COUNT(*)
FROM city
WHERE city ILIKE '%r'
