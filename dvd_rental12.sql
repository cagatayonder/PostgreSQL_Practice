1)
//Find avg legth
SELECT ROUND(AVG(length),3) FROM film;

SELECT COUNT(length) FROM film 
WHERE length >ANY
(SELECT length FROM film
WHERE length > 115.272);

2)
SELECT ROUND(MAX(rental_rate),3) FROM film;

SELECT COUNT(rental_rate) FROM film 
WHERE rental_rate = ALL
(SELECT rental_rate FROM film
WHERE rental_rate = 4.99);

3)
SELECT title,replacement_cost,rental_rate FROM film
WHERE rental_rate = ANY 
(
	SELECT MIN(rental_rate) FROM film
) AND replacement_cost = ANY
(
	SELECT MIN(replacement_cost) FROM film
)
ORDER BY title;

4)
SELECT customer_id FROM payment
WHERE amount = ALL 
(
	SELECT MAX(amount) FROM payment
) 
ORDER BY customer_id;

