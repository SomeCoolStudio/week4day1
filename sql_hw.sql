SELECT *  
FROM actor
WHERE last_name ='Wahlberg';

SELECT *
FROM payment 
WHERE amount between 3.99 and 5.99;

SELECT film_id , count(*) AS "Total Copies" 
FROM inventory  
GROUP BY film_id;

SELECT first_name, last_name
FROM customer
WHERE last_name ='William';

SELECT staff_id , count(*) AS "Rentals Sold" 
FROM rental  
GROUP BY staff_id;

SELECT count(district) AS "Total Districts"
FROM address;

SELECT film_id , count(*) AS "Total Actors" 
FROM film_actor
GROUP BY film_id;

SELECT count(last_name) AS "Total With Last Name ending in 'es'" 
FROM customer
WHERE last_name LIKE '%es';

SELECT amount 
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount  HAVING count(amount) > 250;

SELECT count(DISTINCT rating) AS "Total rating categories" 
FROM film;

SELECT rating, count(rating) AS "Total movies for rating" 
FROM film
GROUP BY rating;