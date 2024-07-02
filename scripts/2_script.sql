-- Encontrar los diseños más populares.
 -- Obtener el nombre del diseño y el número de veces que ha sido seleccionado por los clientes. Limitar a los primeros 5

SELECT d.description, count(*) as total_selected FROM designs d
INNER JOIN products p ON d.id = p.design_id
INNER JOIN order_products op ON p.id = op.product_id
group by d.description 
order by total_selected desc
LIMIT 5;