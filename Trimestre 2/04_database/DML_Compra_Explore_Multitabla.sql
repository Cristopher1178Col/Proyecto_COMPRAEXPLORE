-- Inserciones (Insertar en varias tablas relacionadas)
-- Insertar un nuevo proveedor
INSERT INTO PROVEEDOR (telefono, direccion, correo, nombre, codigo)
VALUES ('3100000000', 'Calle 123 #45-67', 'proveedor@correo.com', 'Proveedor ABC', 'PROV001');

-- Insertar un producto en la tabla PRODUCTOS
INSERT INTO PRODUCTOS (id_categoria, nombre, precio, descripcion)
VALUES (1, 'Televisor', 1500000, 'Televisor 4K de 50 pulgadas');

-- Asociar el proveedor con el producto en la tabla PROVEEDOR_PRODUCTOS
INSERT INTO PROVEEDOR_PRODUCTOS (id_proveedor, id_productos)
VALUES (1, 1); -- 1 es el id del proveedor y 1 es el id del producto

-- Insertar un nuevo cliente
INSERT INTO CLIENTES (nombre, correo, contraseña)
VALUES ('Juan Pérez', 'juanperez@correo.com', 'hashedpassword123');

-- Insertar un nuevo pedido para el cliente
INSERT INTO PEDIDOS (id_clientes, fecha, cantidad, estado)
VALUES (1, '2024-09-14', 3, 'pendiente'); -- 1 es el id del cliente

-- Asociar productos con el pedido en PRODUCTOS_PEDIDOS
INSERT INTO PRODUCTOS_PEDIDOS (id_producto, id_pedidos)
VALUES (1, 1); -- 1 es el id del producto y 1 es el id del pedido

-- Actualización (Modificar datos en varias tablas relacionadas)
-- Actualizar el nombre de un proveedor relacionado con un producto específico
UPDATE PROVEEDOR P
JOIN PROVEEDOR_PRODUCTOS PP ON P.id_proveedor = PP.id_proveedor
SET P.nombre = 'Proveedor XYZ'
WHERE PP.id_productos = 1;

-- Eliminación (Borrar datos de varias tablas relacionadas)
-- Eliminar un producto y sus relaciones con los proveedores
DELETE FROM PRODUCTOS 
WHERE id_productos = 1;

-- Eliminar el pedido y sus asociaciones con productos
DELETE FROM PEDIDOS 
WHERE id_pedidos = 1;

-- Selección (Consultar datos de varias tablas relacionadas)
-- Seleccionar productos con su categoría
SELECT P.nombre AS producto, C.nombre AS categoria 
FROM PRODUCTOS P
JOIN CATEGORIA C ON P.id_categoria = C.id_categoria;

-- Seleccionar pedidos con el nombre del cliente
SELECT PE.id_pedidos, PE.fecha, CL.nombre AS cliente, PE.estado
FROM PEDIDOS PE
JOIN CLIENTES CL ON PE.id_clientes = CL.id_clientes;
