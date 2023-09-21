-- שאלה 1
SELECT * 
FROM employees

-- שאלה 3
SELECT first_name, last_name, city 
FROM employees 
WHERE country LIKE 'USA' AND NOT city ILIKE 'Seattle'

-- שאלה 5
SELECT category_id, count(*) as "number of products"
FROM products
GROUP BY category_id
HAVING count(*) > 10
ORDER BY category_id

-- שאלה 6
SELECT c.category_name, count(*) as "number of products"
FROM products as p
INNER JOIN categories as c ON c.category_id = p.category_id
GROUP BY category_name
HAVING count(*) > 10

-- שאלה 8
SELECT e.first_name,e.last_name,t.territory_description
FROM employees as e
INNER JOIN employee_territories as et ON e.employee_id = et.employee_id
INNER JOIN territories as t on et.territory_id = t.territory_id

-- שאלת בונוס (9)
SELECT e.first_name,e.last_name, count(*) "amount of orders"
FROM orders as o
INNER JOIN employees as e 
ON e.employee_id = o.employee_id
GROUP BY e.employee_id
HAVING count(*) > 100
ORDER BY count(*) DESC