-- Insertar datos en la tabla CATEGORIA
INSERT INTO CATEGORIA (codigo, nombre) VALUES
('C001', 'Electrónica'),
('C002', 'Ropa'),
('C003', 'Hogar');

-- Insertar datos en la tabla PRODUCTOS
INSERT INTO PRODUCTOS (id_categoria, nombre, precio, descripcion) VALUES
(1, 'Televisor', 1500000.00, 'Televisor 50 pulgadas 4K'),
(1, 'Smartphone', 800000.00, 'Smartphone de gama media'),
(2, 'Camiseta', 30000.00, 'Camiseta de algodón'),
(3, 'Sofá', 1200000.00, 'Sofá de 3 plazas en cuero');

-- Insertar datos en la tabla PROVEEDOR
INSERT INTO PROVEEDOR (telefono, direccion, correo, nombre, codigo) VALUES
('3101234567', 'Calle 123 #45-67', 'proveedor1@example.com', 'Proveedor Uno', 'P001'),
('3117654321', 'Carrera 12 #34-56', 'proveedor2@example.com', 'Proveedor Dos', 'P002');

-- Insertar datos en la tabla PROVEEDOR_PRODUCTOS
INSERT INTO PROVEEDOR_PRODUCTOS (id_proveedor, id_productos) VALUES
(1, 1), -- Proveedor 1 proporciona Televisor
(1, 2), -- Proveedor 1 proporciona Smartphone
(2, 3), -- Proveedor 2 proporciona Camiseta
(2, 4); -- Proveedor 2 proporciona Sofá

-- Insertar datos en la tabla CLIENTES
INSERT INTO CLIENTES (nombre, correo, contraseña) VALUES
('Juan Pérez', 'juan.perez@example.com', 'password1'),
('María Gómez', 'maria.gomez@example.com', 'password2');

-- Insertar datos en la tabla PEDIDOS
INSERT INTO PEDIDOS (id_clientes, fecha, cantidad, estado) VALUES
(1, '2024-09-01', 2, 'pendiente'),
(2, '2024-09-02', 1, 'enviado');

-- Insertar datos en la tabla PRODUCTOS_PEDIDOS
INSERT INTO PRODUCTOS_PEDIDOS (id_producto, id_pedidos) VALUES
(1, 1), -- Televisor en el pedido 1
(2, 1), -- Smartphone en el pedido 1
(3, 2); -- Camiseta en el pedido 2

/*
-- Seleccionar todos los productos y sus categorías
SELECT p.nombre AS producto, c.nombre AS categoria, p.precio
FROM PRODUCTOS p
JOIN CATEGORIA c ON p.id_categoria = c.id_categoria;

-- Seleccionar todos los pedidos realizados por un cliente específico
SELECT ped.id_pedidos, ped.fecha, ped.cantidad, ped.estado
FROM PEDIDOS ped
JOIN CLIENTES cli ON ped.id_clientes = cli.id_clientes
WHERE cli.nombre = 'Juan Pérez';

-- Seleccionar todos los productos proporcionados por un proveedor
SELECT pr.nombre AS proveedor, prod.nombre AS producto
FROM PROVEEDOR pr
JOIN PROVEEDOR_PRODUCTOS pp ON pr.id_proveedor = pp.id_proveedor
JOIN PRODUCTOS prod ON pp.id_productos = prod.id_productos
WHERE pr.nombre = 'Proveedor Tres';
*/

/*
-- Actualizar el precio de un producto
UPDATE PRODUCTOS
SET precio = 550000.00
WHERE nombre = 'Bicicleta';

-- Actualizar el estado de un pedido
UPDATE PEDIDOS
SET estado = 'entregado'
WHERE id_pedidos = 1;

-- Actualizar la dirección de un proveedor
UPDATE PROVEEDOR
SET direccion = 'Carrera 20 #45-67'
WHERE nombre = 'Proveedor Tres';
*/


/* Eliminar un producto
DELETE FROM PRODUCTOS
WHERE nombre = 'Bicicleta';

-- Eliminar un pedido
DELETE FROM PEDIDOS
WHERE id_pedidos = 2;

-- Eliminar un cliente
DELETE FROM CLIENTES
WHERE nombre = 'Carlos Martínez';
*


