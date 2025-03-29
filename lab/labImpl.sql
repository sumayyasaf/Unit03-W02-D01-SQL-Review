--->CREATE TABLE
CREATE TABLE customer_orders (
                                 order_id SERIAL PRIMARY KEY,
                                 customer_name VARCHAR(200) NOT NULL,
                                 order_date DATE NOT NULL,
                                 total_amount DECIMAl(10, 2) NOT NULL,
                                 customer_dob DATE NOT NULL
);
---> INSERT statements
INSERT INTO customer_orders (customer_name, order_date, total_amount, customer_dob) VALUES
                                                                                        ('Alice Johnson', '2024-02-10', 250.50, '1990-06-15'),
                                                                                        ('Bob Smith', '2024-03-15', 500.00, '1985-08-22'),
                                                                                        ('Charlie Brown', '2024-04-20', 120.75, '1995-12-05'),
                                                                                        ('Diana Prince', '2023-12-25', 700.30, '1988-04-18'),
                                                                                        ('Ethan Hunt', '2024-01-05', 320.40, '1992-09-30'),
                                                                                        ('Frank Castle', '2023-11-12', 80.00, '1981-03-14'),
                                                                                        ('Grace Harper', '2024-02-28', 150.25, '1997-07-25'),
                                                                                        ('Harry Potter', '2024-05-03', 999.99, '2000-05-30'),
                                                                                        ('Ivy Walker', '2024-01-17', 455.75, '1993-11-02'),
                                                                                        ('Jack Reacher', '2023-10-30', 650.60, '1986-01-10');

--->Retrieve all columns from the table
SELECT * FROM customer_orders;

--->Select all orders placed before March 1, 2024
SELECT * FROM customer_orders WHERE order_date < '2024-03-01';

--->Select all orders placed after January 15, 2024
SELECT * FROM customer_orders WHERE order_date > '2024-01-15';

---> Find the highest order total
SELECT MAX(total_amount) AS highest_order_total FROM customer_orders;

--->Find the lowest order total
SELECT MIN(total_amount) AS lowest_order_total FROM customer_orders;

--->Calculate the average order total
SELECT AVG(total_amount) AS average_order_total FROM customer_orders;

--->Retrieve customer names and total order amounts, renaming the columns for better readability
SELECT customer_name AS "customer names", total_amount AS "order amounts" FROM customer_orders;

--->Calculate the age of each customer based on their date of birth (customer_dob)
SELECT customer_name, EXTRACT(YEAR FROM AGE(customer_dob)) AS age FROM customer_orders;

---> Find orders where the customer’s name contains "john", regardless of letter case
SELECT * FROM customer_orders WHERE LOWER(customer_name) LIKE '%john%';

--->Select all customers who spent more than $400
SELECT * FROM customer_orders WHERE total_amount > '400';

--->Count the total number of orders placed
SELECT COUNT(*) AS total_orders FROM customer_orders;

---> Retrieve all orders placed in the year 2023
SELECT * FROM customer_orders WHERE EXTRACT(YEAR FROM order_date) = 2023;

--->Calculate the total revenue from all orders
SELECT SUM(total_amount) AS total_revenue FROM customer_orders;

---> Retrieve all orders placed in February 2024
SELECT * FROM customer_orders WHERE order_date BETWEEN '2024-02-01' AND '2024-02-29';

---> Select all customers born before 1990
SELECT * FROM customer_orders WHERE customer_dob < '1990-01-01';

