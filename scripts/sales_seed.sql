-- customer
SELECT * FROM users u 

INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.customers
(user_id, created_at, updated_at)
VALUES(2, now(), NULL);

SELECT * FROM customers c 
SELECT * from product_types pt 

-- orders
	
select * from product_types pt 
SELECT * from designs d -- id 2 al 14
select * from products p 

INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.products
(design_id, product_type_id, created_at, updated_at)
VALUES
(2, 1, now(), NULL),
(2, 2, now(), NULL),
(2, 8, now(), NULL),
(3, 2, now(), NULL),
(3, 8, now(), NULL),
(3, 7, now(), NULL),
(3, 1, now(), NULL),
(4, 1, now(), NULL),
(4, 2, now(), NULL),
(5, 1, now(), NULL),
(5, 2, now(), NULL),
(5, 5, now(), NULL),
(5, 8, now(), NULL),
(6, 1, now(), NULL),
(6, 2, now(), NULL),
(7, 1, now(), NULL),
(7, 2, now(), NULL),
(7, 8, now(), NULL),
(7, 7, now(), NULL),
(8, 1, now(), NULL),
(8, 2, now(), NULL),
(9, 1, now(), NULL),
(9, 2, now(), NULL),
(9, 8, now(), NULL),
(10, 1, now(), NULL),
(10, 2, now(), NULL),
(11, 8, now(), NULL),
(11, 6, now(), NULL),
(12, 7, now(), NULL),
(12, 8, now(), NULL),
(13, 1, now(), NULL),
(13, 2, now(), NULL),
(13, 8, now(), NULL),
(14, 1, now(), NULL),
(14, 8, now(), NULL);



SELECT * from customers c 

INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.orders
(total_price, created_at, updated_at, customer_id)
VALUES
(23, now(), null, 1), -- dos remeras [x]
(15, '2024-06-25 21:49:04.000', null, 12), -- totebag + delantal [x] 
(12, '2024-06-27 21:49:04.000', null, 23), -- traje de bano [x]
(54.5, now(), null, 34), -- 3 remeras + 1 buzo [x]
(60, now(), null, 45), -- 3 buzos [x]
(18, now(), null, 56), -- 3 delantales [x]
(57.5, now(), null, 67), -- 5 remeras [X]
(200, now(), null, 78), -- 10 buzos [X]
(34.5, now(), null, 89), -- 3 remeras [x]
(45, now(), null, 90), -- 5 tote bag [x]
(11.5 , now(), null, 102); -- 1 remera [x]

-- order_products
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.order_products
(order_id, product_id, product_colour_id , product_type_size_id, quantity, created_at, updated_at)
VALUES 
(13, 40, 21, 4, 1, now(), NULL);

SELECT * from order_products op 