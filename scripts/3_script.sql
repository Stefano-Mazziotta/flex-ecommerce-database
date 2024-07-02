-- Encontrar los 3 artistas con los disenos más recientes
	-- Mostrar el nombre del artista y el created_at mas reciente

SELECT 
	a.name as artist_name,
	d.description as design_name,
	d.created_at as desing_created_at 
FROM artists a
INNER JOIN designs d ON a.id = d.artist_id
ORDER BY d.created_at DESC
LIMIT 3


