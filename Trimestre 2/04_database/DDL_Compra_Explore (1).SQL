-- 01. Mostrar BBDDs
SHOW DATABASES;

-- 02. Usar BBDD
USE Compra_Explore;

-- 03. Eliminar BBDD
DROP DATABASE Compra_Explore;

-- 04. Mostrar Tablas
SHOW TABLES;

-- 05. Mostrar Columnas
SHOW COLUMNS FROM CATEGORIA;
DESCRIBE PRODUCTOS;

-- 06. Agregar Columna
ALTER TABLE CLIENTES ADD telefono VARCHAR(10);

-- 07. Renombrar Columna
ALTER TABLE PRODUCTOS CHANGE nombre nombre_producto VARCHAR(45);

-- 08. Eliminar Columna
ALTER TABLE PROVEEDOR DROP codigo;

-- 09. Agregar Valor x Defecto Columna
ALTER TABLE CLIENTES ALTER nombre SET DEFAULT 'Cliente Sin Nombre';

-- 10. Eliminar Valor x Defecto Columna
ALTER TABLE CLIENTES ALTER nombre DROP DEFAULT;

-- 11. Mostrar Creación Tabla
SHOW CREATE TABLE PEDIDOS;

-- 12. Eliminar Restricción
ALTER TABLE PRODUCTOS_PEDIDOS DROP CONSTRAINT fk_PRODUCTOS_PEDIDOS;

-- 13. Eliminar Índice
ALTER TABLE PRODUCTOS DROP INDEX idx_producto_nombre;

-- 14. Eliminar Llave Primaria
ALTER TABLE CLIENTES DROP PRIMARY KEY;

-- 15. Limpiar Registros
TRUNCATE TABLE PRODUCTOS;

-- 16. Eliminar Tabla
DROP TABLE PROVEEDOR_PRODUCTOS;

-- 17. Crear Tabla
CREATE TABLE NUEVA_TABLA (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

-- 18. Renombrar Tabla
RENAME TABLE CLIENTES TO USUARIOS;

-- 19. Crear Llave Primaria
ALTER TABLE CLIENTES ADD PRIMARY KEY (id_clientes);

-- 20. Crear Índice Campo
CREATE INDEX idx_nombre ON CATEGORIA(nombre);

-- 21. Crear Índice Multicampo
CREATE INDEX idx_producto_precio ON PRODUCTOS(nombre, precio);

-- 22. Crear Índice Único
CREATE UNIQUE INDEX idx_cliente_correo ON CLIENTES(correo);

-- 23. Crear Restricción
ALTER TABLE PEDIDOS ADD CONSTRAINT fk_PEDIDOS_CLIENTES1 
FOREIGN KEY (id_clientes) REFERENCES CLIENTES(id_clientes) ON DELETE CASCADE ON UPDATE CASCADE;

