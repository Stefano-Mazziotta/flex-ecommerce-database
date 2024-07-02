-- users
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.users
(name, surname, email, username, password, created_at, updated_at)
VALUES('Valentin', 'Orzusa', 'valenorzu@gmail.com', 'valtillo', 'password_hashed123', now(), NULL);

SELECT * FROM users u 

-- user_address
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.user_address
(city, zip_code, street, street_number, floor, user_id)
VALUES('Rosario', '2000', 'corrientes', 416, NULL, 2);

SELECT * FROM user_address ua 

-- roles
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.roles
(name, created_at, updated_at)
VALUES('admin', NOW(), NULL), ('public_user', NOW(), NULL);

SELECT * FROM roles r 

-- user_roles
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.user_roles
(user_id, role_id, created_at, updated_at)
VALUES(1, 2, now(), NULL);

SELECT * FROM user_roles ur 

-- user_sessions
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.user_sessions
(id, user_id, auth_token, auth_token_expiration, created_at, updated_at)
VALUES(0, 2, '1pTJhC8jJMgrHzL5VXEx7jYDcL6RIu1sE', '2024-06-30 00:13:58.000', now(), NULL);

SELECT * FROM user_sessions us 

