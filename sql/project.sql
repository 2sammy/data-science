SELECT film_title, category_name,COUNT(rent) AS rental_count
FROM
(SELECT film.title AS film_title,category.name AS category_name, rental.rental_id AS rent
FROM film
join film_category
ON film.film_id = film_category.film_id
join category
ON category.category_id = film_category.category_id
join inventory
ON inventory.film_id =film.film_id 
join rental
ON rental.inventory_id = inventory.inventory_id
WHERE category.name IN ('Animation','Children','Classics','Comedy', 'Family','Music')) AS sub
GROUP BY 1,2 
ORDER BY category_name


