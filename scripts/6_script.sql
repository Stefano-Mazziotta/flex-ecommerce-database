-- Listado de clientes inactivos.
-- Listar clientes que no han iniciado sesión durante un período de tiempo específico, indicando su inactividad.
SELECT 
    u.username, 
    us.auth_token_expiration,
    DATEDIFF(CURRENT_DATE, us.auth_token_expiration) AS days_inactive
FROM 
    customers c
INNER JOIN 
    users u ON c.user_id = u.id
INNER JOIN 
    user_sessions us ON u.id = us.user_id
HAVING 
	days_inactive > 0
ORDER BY 
    us.auth_token_expiration ASC;