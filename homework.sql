-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name) as count
FROM actor
WHERE last_name = 'Wahlberg';

-- A) Their are 2 actors with the last name of Wahlberg


-- 2. How many payments were made between $3.99 and $5.99?

SELECT COUNT(payment_id) as count
FROM payment
WHERE amount BETWEEN 3.99 and 5.99

-- A) Their are 5602 payments made it that range


-- 3. What film does the store have the most of? (search in inventory)

SELECT title, inventory.film_id, COUNT(*) AS filmCount
FROM inventory
JOIN film ON inventory.film_id = film.film_id
GROUP BY inventory.film_id, film.title
ORDER BY filmCount DESC;

-- A) There are many titles tied for the highest of 8 copys in the inventory


-- 4. How many customers have the last name ‘William’?

SELECT last_name, COUNT(*) as count
FROM customer
WHERE last_name = 'William'
GROUP BY last_name

-- A) there are no last names of William

-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(*) as count
FROM payment
GROUP BY staff_id
ORDER BY staff_id DESC
LIMIT 1;

-- A) The employee with the id of 2 had the most rentals

-- 6. How many different district names are there?

SELECT COUNT(DISTINCT(district)) as uniqueDistricts
FROM address;

-- A) There are 378 unique districts

-- 7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT title, film_actor.film_id, COUNT(*) as count
FROM film_actor
JOIN film ON film_actor.film_id = film.film_id
GROUP BY title, film_actor.film_id
ORDER BY count DESC
LIMIT 1


-- A) Lambs Cincinatti has the most actors

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(*) FROM customer
WHERE last_name LIKE '%es' AND store_id = 1




-- A) There are 21 customers last names that end in 'es'


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

SELECT COUNT(*) as above250Rentals FROM payment
WHERE customer_id
BETWEEN 380 and 430
HAVING COUNT(rental_id) > 250

-- A) The amount of payments is 1257 that have 250 rentals and ids between 380 and 430




-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT COUNT(DISTINCT(rating)) AS uniqueRatings FROM film;

SELECT rating, COUNT(*) as movieCount FROM film
GROUP BY rating
ORDER BY movieCount DESC
LIMIT 1

-- A) There are 13 categories and PG-13 is the most common at 223 movies.
-- PS I dont know if i was supposed to do this on in one query but i couldnt figure it out






