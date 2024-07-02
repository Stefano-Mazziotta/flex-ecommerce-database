-- 4. Listar los clientes que han seleccionado(comprado) más disenos
	-- Listar el nombre del cliente y el número de disenos que han seleccionado/comprado
SELECT u.name, COUNT(DISTINCT p.design_id) as total_purchases FROM customers c 
INNER JOIN users u ON c.user_id = u.id
INNER JOIN orders o ON c.id = o.customer_id
INNER JOIN order_products op ON o.id = op.order_id
INNER JOIN products p ON op.product_id = p.id
GROUP BY u.name
ORDER BY total_purchases DESC