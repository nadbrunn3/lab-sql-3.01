USE sakila;

-- 1. Drop column `picture` from `staff`.

ALTER TABLE sakila.staff 
DROP COLUMN picture; 

SELECT * FROM sakila.staff;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

INSERT INTO sakila.staff (staff_id, first_name, last_name, address_id, email, store_id, username)
VALUES 					 (3, 'Tammy', 'Sanders', 79,  'TAMMY.SANDERS@sakilacustomer.org', 2, 'Tammy'	);

SELECT * FROM staff; 

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the `rental_date` column in the `rental` table.

# EXPLORE: 
SELECT film_id FROM sakila.film WHERE title = 'Academy Dinosaur';
SELECT customer_id FROM sakila.customer WHERE first_name = 'Charlotte'; 
SELECT inventory_id From sakila.inventory WHERE film_id = 1 and store_id = 1;
SELECT inventory_id, return_date FROM sakila.rental WHERE inventory_id in (1,2,3,4);
SELECT return_date FROM sakila.rental;
SELECT rental_id FROM sakila.rental ORDER BY rental_id DESC Limit 1; 

# staff_id = 1
# film_id = 1
# customer_id = 130 
# retnal_id = 16050
# inventory_id for Store 1 = 1,2,3,4

#INSERT

INSERT INTO sakila.rental (rental_id, rental_date, inventory_id, customer_id, staff_id)
VALUES 
			(16050, CURRENT_DATE(), 1, 130, 1 );
            
SELECT * FROM sakila.rental ORDER BY rental_id DESC LIMIT 3; 




