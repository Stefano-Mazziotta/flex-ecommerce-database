-- artist
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.artists
(user_id, created_at, updated_at)
VALUES(1, now(), NULL);

-- design
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.designs
(description, image_url, created_at, updated_at, artist_id)
VALUES('Marvel Squad', 'aws.s3/MSquad.jpg', now(), null, 1),
('Universal world', 'aws.s3/UWorld.jpg', '2023-11-24 10:29:27.000', null, 1),
('Marvel Squad', 'aws.s3/Msquad.jpg', now(), null, 2),
('Walter Grey', 'aws.s3/WGrey.jpg', now(), null, 2),
('Cold play', 'aws.s3/Msquad.jpg', now(), null, 2),
('Nations', 'aws.s3/Msquad.jpg', now(), null, 3),
('Future concept', 'aws.s3/Msquad.jpg', now(), null, 3),
('Film photography', 'aws.s3/Msquad.jpg', now(), null, 3),
('Rosario city', 'aws.s3/Msquad.jpg', now(), null, 4),
('Scaloneta', 'aws.s3/Msquad.jpg', now(), null, 4),
('Bobma', 'aws.s3/Msquad.jpg', now(), null, 5),
('street concept', 'aws.s3/Msquad.jpg', now(), null, 5),
('colors everywhere', 'aws.s3/colorseverywhere.jpg', now(), null, 5);

-- product types
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.product_types
(name, price, created_at, updated_at)
VALUES
	('postal', 5, now(), NULL),
	('sticker', 2.5, now(), NULL),
	('camisa denim', 10, now(), NULL),
	('traje de baño', 12, now(), NULL),
	('tote bag', 9, now(), NULL),
	('delantal', 6, now(), NULL),
	('bandanas', 3, now(), NULL),
	('gorras', 8, now(), NULL);

INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.product_type_sizes
(product_type_id, size_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(5, 2),
(5, 3),
(7, 2),
(8, 1),
(8, 2),
(8, 3);


-- product
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.products
(design_id, product_type_id, created_at, updated_at)
VALUES (1, 1, now(), NULL), (1, 2, now(), NULL);