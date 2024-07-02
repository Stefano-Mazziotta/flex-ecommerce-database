-- Encontrar los disenos que coincidan con una palabre clave especifica
-- Permitir que los clientes busquen disenos utilizando una palabra clave
-- mostrar el nombre del diseno y el nombre del artista que lo publicó
SELECT d.description as design_name, a.name as artist_name FROM designs d 
INNER JOIN artists a ON d.artist_id = a.id 
INNER JOIN design_tags dt ON d.id = dt.id_design 
INNER JOIN tags t ON dt.id_tag = t.id  
WHERE t.name LIKE '%nint%'
