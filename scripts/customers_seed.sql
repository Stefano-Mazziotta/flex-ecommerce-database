-- Insertar usuarios en la tabla 'users'
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.users
(id,name, surname, email, username, password, created_at, updated_at)
VALUES
(100, 'Juan', 'Pérez', 'juan.perez@example.com', 'juanperez', 'password1', '2024-06-27 12:00:00', NULL),
(200, 'María', 'García', 'maria.garcia@example.com', 'mariagarcia', 'password2', '2024-06-27 12:01:00', NULL),
(300, 'Luis', 'Martínez', 'luis.martinez@example.com', 'luismartinez', 'password3', '2024-06-27 12:02:00', NULL),
(400, 'Ana', 'López', 'ana.lopez@example.com', 'analopez', 'password4', '2024-06-27 12:03:00', NULL),
(500, 'Carlos', 'Rodríguez', 'carlos.rodriguez@example.com', 'carlosrodriguez', 'password5', '2024-06-27 12:04:00', NULL),
(600, 'Laura', 'Fernández', 'laura.fernandez@example.com', 'laurafernandez', 'password6', '2024-06-27 12:05:00', NULL),
(700, 'Javier', 'Gómez', 'javier.gomez@example.com', 'javiergomez', 'password7', '2024-06-27 12:06:00', NULL),
(800, 'Sofía', 'Díaz', 'sofia.diaz@example.com', 'sofiadiaz', 'password8', '2024-06-27 12:07:00', NULL),
(900, 'Miguel', 'Sánchez', 'miguel.sanchez@example.com', 'miguelsanchez', 'password9', '2024-06-27 12:08:00', NULL),
(1000, 'Elena', 'Ramírez', 'elena.ramirez@example.com', 'elenaramirez', 'password10', '2024-06-27 12:09:00', NULL);

SELECT * FROM user_address ua 

-- Insertar direcciones en la tabla 'user_address'
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.user_address
(id, city, zip_code, street, street_number, floor, user_id)
VALUES
(100, 'Buenos Aires', 'C1001', 'Avenida Corrientes', 1, '1A', 100),
(200, 'Córdoba', 'X5000', 'Avenida Colón', 2, '2B', 200),
(300, 'Rosario', 'S2000', 'Bulevar Oroño', 3, '3C', 300),
(400, 'Mendoza', 'M5500', 'Avenida San Martín', 4, '4D', 400),
(500, 'La Plata', 'B1900', 'Calle 12', 5, '5E', 5),
(600, 'San Miguel de Tucumán', 'T4000', 'Avenida Mate de Luna', 6, '6F', 600),
(700, 'Mar del Plata', 'B7600', 'Avenida Pedro Luro', 7, '7G', 700),
(800, 'Salta', 'A4400', 'Calle Balcarce', 8, '8H', 800),
(900, 'Santa Fe', 'S3000', 'Bulevar Gálvez', 9, '9I', 900),
(1000, 'San Juan', 'J5400', 'Avenida Libertador', 10, '10J', 1000);

-- Insertar sesiones en la tabla 'user_sessions'
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.user_sessions
(id, user_id, auth_token, auth_token_expiration, created_at, updated_at)
VALUES
(100, 100, 'A1B2C3D4E5', '2024-07-01 12:00:00', '2024-06-27 12:00:00', NULL),
(200, 200, 'F6G7H8I9J0', '2024-07-01 12:01:00', '2024-06-27 12:01:00', NULL),
(300, 300, 'K1L2M3N4O5', '2024-07-01 12:02:00', '2024-06-27 12:02:00', NULL),
(400, 400, 'P6Q7R8S9T0', '2024-07-01 12:03:00', '2024-06-27 12:03:00', NULL),
(500, 500, 'U1V2W3X4Y5', '2024-07-01 12:04:00', '2024-06-27 12:04:00', NULL),
(600, 600, 'Z6A7B8C9D0', '2024-07-01 12:05:00', '2024-06-27 12:05:00', NULL),
(700, 700, 'E1F2G3H4I5', '2024-07-01 12:06:00', '2024-06-27 12:06:00', NULL),
(800, 800, 'J6K7L8M9N0', '2024-07-01 12:07:00', '2024-06-27 12:07:00', NULL),
(900, 900, 'O1P2Q3R4S5', '2024-07-01 12:08:00', '2024-06-27 12:08:00', NULL),
(1000, 1000, 'T6U7V8W9X0', '2024-07-01 12:09:00', '2024-06-27 12:09:00', NULL);

-- Insertar clientes en la tabla 'customers'
INSERT INTO TP_FLASHCOOKIE_MZT_ORZ.customers
(id, user_id, created_at, updated_at)
VALUES
(12, 100, '2024-06-27 12:00:00', NULL),
(23, 200, '2024-06-27 12:01:00', NULL),
(34, 300, '2024-06-27 12:02:00', NULL),
(45, 400, '2024-06-27 12:03:00', NULL),
(56, 500, '2024-06-27 12:04:00', NULL),
(67, 600, '2024-06-27 12:05:00', NULL),
(78, 700, '2024-06-27 12:06:00', NULL),
(89, 800, '2024-06-27 12:07:00', NULL),
(90, 900, '2024-06-27 12:08:00', NULL),
(102, 1000, '2024-06-27 12:09:00', NULL);
