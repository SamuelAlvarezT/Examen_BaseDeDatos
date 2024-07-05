/*
DROP DATABASE IF EXISTS GARDEN;

CREATE Database GARDEN;

USE GARDEN;

CREATE TABLE gama_producto (
    gama VARCHAR(50) NOT NULL PRIMARY KEY,
    description_text TEXT NULL,
    description_html TEXT NULL,
    imagen VARCHAR(256) NULL
);

CREATE TABLE oficina (
    codigo_oficina VARCHAR(10) NOT NULL PRIMARY KEY,
    ciudad VARCHAR(30) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    region VARCHAR(50) NULL,
    codigo_postal VARCHAR(10) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    linea_direccion1 VARCHAR(50) NOT NULL,
    linea_direccion2 VARCHAR(50) NULL
);

CREATE TABLE empleado (
    codigo_empleado INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50) NULL,
    extension VARCHAR(10) NOT NULL,
    email VARCHAR(100) NOT NULL,
    codigo_oficina VARCHAR(10) NOT NULL,
    codigo_jefe INT NULL,
    puesto VARCHAR(50) NOT NULL,
    CONSTRAINT fk_empleado_oficina FOREIGN KEY (codigo_oficina) REFERENCES oficina(codigo_oficina),
    CONSTRAINT fk_empleado_jefe FOREIGN KEY (codigo_jefe) REFERENCES empleado(codigo_empleado)
);

CREATE TABLE cliente (
    codigo_cliente INT NOT NULL PRIMARY KEY,
    nombre_cliente VARCHAR(50) NOT NULL,
    nombre_contacto VARCHAR(30) NULL,
    apellido_contacto VARCHAR(30) NULL,
    telefono VARCHAR(15) NOT NULL,
    fax VARCHAR(15) NULL,
    linea_direccion1 VARCHAR(50) NOT NULL,
    linea_direccion2 VARCHAR(50) NULL,
    ciudad VARCHAR(50) NOT NULL,
    region VARCHAR(50) NULL,
    pais VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(10) NULL,
    codigo_empleado_rep_ventas INT NULL,
    limite_credito DECIMAL(15,2) NULL,
    CONSTRAINT fk_cliente_empleado FOREIGN KEY (codigo_empleado_rep_ventas) REFERENCES empleado(codigo_empleado)
);

CREATE TABLE producto (
    codigo_producto VARCHAR(15) NOT NULL PRIMARY KEY,
    nombre VARCHAR(70) NOT NULL,
    gama VARCHAR(50) NOT NULL,
    dimensiones VARCHAR(25) NULL,
    proveedor VARCHAR(50) NULL,
    descripcion TEXT NULL,
    cantidad_en_stock SMALLINT NOT NULL,
    precio_venta DECIMAL(15,2) NOT NULL,
    precio_proveedor DECIMAL(15,2) NULL,
    CONSTRAINT fk_producto_gama FOREIGN KEY (gama) REFERENCES gama_producto(gama)
);

CREATE TABLE pedido (
    codigo_pedido INT NOT NULL PRIMARY KEY,
    fecha_pedido DATE NOT NULL,
    fecha_esperada DATE NOT NULL,
    fecha_entrega DATE NULL,
    estado VARCHAR(15) NOT NULL,
    comentarios TEXT NULL,
    codigo_cliente INT NOT NULL,
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (codigo_cliente) REFERENCES cliente(codigo_cliente)
);

CREATE TABLE detalle_pedido (
    codigo_pedido INT NOT NULL,
    codigo_producto VARCHAR(15) NOT NULL,
    cantidad INT NOT NULL,
    precio_unidad DECIMAL(15,2) NOT NULL,
    numero_linea SMALLINT NOT NULL,
    PRIMARY KEY (codigo_pedido, codigo_producto),
    CONSTRAINT fk_detalle_pedido_pedido FOREIGN KEY (codigo_pedido) REFERENCES pedido(codigo_pedido),
    CONSTRAINT fk_detalle_pedido_producto FOREIGN KEY (codigo_producto) REFERENCES producto(codigo_producto)
);

CREATE TABLE pago (
    codigo_cliente INT NOT NULL,
    forma_pago VARCHAR(40) NOT NULL,
    id_transaccion VARCHAR(50) NOT NULL,
    fecha_pago DATE NOT NULL,
    total DECIMAL(15,2) NOT NULL,
    PRIMARY KEY (codigo_cliente, id_transaccion),
    CONSTRAINT fk_pago_cliente FOREIGN KEY (codigo_cliente) REFERENCES cliente(codigo_cliente)
);



*/

/*Consultas sobre una tabla , BASADO EN EL ANTERIOR TEXTO*/





