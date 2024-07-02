
-- Listar todos los artistas y sus diseños publicados.
-- 		Mostrar el nombre del artista y el nombre de sus diseños.

SELECT u.username as artist_name, d.description as design_name FROM artists a 
INNER JOIN users u ON u.id = a.user_id 
INNER JOIN designs d ON a.id = d.artist_id
