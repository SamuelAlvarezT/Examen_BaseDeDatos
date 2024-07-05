-- gama_producto
INSERT INTO gama_producto (gama, description_text, description_html, imagen) VALUES
    ('Electronica', 'Productos electronicos', '<p>Descripcion de productos electronicos</p>', 'electronica.png'),
    ('Hogar', 'Productos para el hogar', '<p>Descripcion de productos para el hogar</p>', 'hogar.png'),
    ('Jardin', 'Productos para el jardin', '<p>Descripcion de productos para el jardin</p>', 'jardin.png');

-- oficina
INSERT INTO oficina (codigo_oficina, ciudad, pais, region, codigo_postal, telefono, linea_direccion1, linea_direccion2) VALUES
    ('O001', 'Madrid', 'España', 'Madrid', '28001', '915678901', 'Calle Mayor, 1', '2º Piso'),
    ('O002', 'Barcelona', 'España', 'Cataluña', '08001', '934567890', 'Avenida Diagonal, 20', '5º Piso'),
    ('O003', 'Valencia', 'España', 'Comunidad Valenciana', '46001', '963456789', 'Plaza del Ayuntamiento, 3', '1º Piso');

-- empleado
INSERT INTO empleado (codigo_empleado, nombre, apellido1, apellido2, extension, email, codigo_oficina, codigo_jefe, puesto) VALUES
    (101, 'Ana', 'Garcia', 'Lopez', '101', 'ana.garcia@empresa.com', 'O001', NULL, 'Gerente de Ventas'),
    (102, 'Juan', 'Perez', 'Martinez', '102', 'juan.perez@empresa.com', 'O002', 101, 'Asesor de Ventas'),
    (103, 'Maria', 'Sanchez', 'Ruiz', '103', 'maria.sanchez@empresa.com', 'O003', 102, 'Asistente de Ventas');

-- cliente
INSERT INTO cliente (codigo_cliente, nombre_cliente, nombre_contacto, apellido_contacto, telefono, fax, linea_direccion1, linea_direccion2, ciudad, region, pais, codigo_postal, codigo_empleado_rep_ventas, limite_credito) VALUES
    (1, 'Cliente A', 'Luis', 'Fernandez', '611223344', '911223344', 'Calle de Alcala, 50', 'Bajo', 'Madrid', 'Madrid', 'Espana', '28014', 101, 15000.00),
    (2, 'Cliente B', 'Carlos', 'Gomez', '622334455', '912334455', 'Avenida de America, 12', '1º A', 'Barcelona', 'Cataluna', 'Espana', '08002', 102, 25000.00),
    (3, 'Cliente C', 'Laura', 'Diaz', '633445566', '913445566', 'Calle Colon, 15', '3º B', 'Valencia', 'Comunidad Valenciana', 'Espana', '46002', 103, 30000.00);

-- producto
INSERT INTO producto (codigo_producto, nombre, gama, dimensiones, proveedor, descripcion, cantidad_en_stock, precio_venta, precio_proveedor) VALUES
    ('P001', 'Televisor 40"', 'Electronica', '90x60x10', 'Samsung', 'Televisor de 40 pulgadas Full HD', 50, 400.00, 300.00),
    ('P002', 'Lavadora', 'Hogar', '60x85x60', 'Bosch', 'Lavadora de 8kg', 30, 600.00, 450.00),
    ('P003', 'Cortacesped', 'Jardin', '50x40x30', 'Honda', 'Cortacesped a gasolina', 20, 250.00, 200.00);

-- pedido
INSERT INTO pedido (codigo_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, codigo_cliente) VALUES
    (1001, '2024-06-01', '2024-06-10', '2024-06-08', 'En proceso', 'Entrega rapida solicitada', 1),
    (1002, '2024-06-02', '2024-06-11', '2024-06-09', 'Completado', 'Cliente habitual', 2),
    (1003, '2024-06-03', '2024-06-12', NULL, 'Pendiente', 'Entrega en espera de confirmacion', 3);

-- detalle_pedido
INSERT INTO detalle_pedido (codigo_pedido, codigo_producto, cantidad, precio_unidad, numero_linea) VALUES
    (1001, 'P001', 2, 400.00, 1),
    (1002, 'P002', 1, 600.00, 1),
    (1003, 'P003', 3, 250.00, 1);

-- pago
INSERT INTO pago (codigo_cliente, forma_pago, id_transaccion, fecha_pago, total) VALUES
    (1, 'Tarjeta de Credito', 'T001', '2024-06-05', 800.00),
    (2, 'PayPal', 'P002', '2024-06-06', 600.00),
    (3, 'Transferencia Bancaria', 'T003', '2024-06-07', 750.00);
