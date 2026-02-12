-- Crear base de datos
CREATE DATABASE IF NOT EXISTS techstore;
USE techstore;

-- Tabla: categorias
CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255)
);

-- Tabla: proveedores
CREATE TABLE proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(150),
    direccion VARCHAR(255)
);

-- Tabla: productos
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    categoria_id INT,
    proveedor_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id) ON DELETE SET NULL,
    FOREIGN KEY (proveedor_id) REFERENCES proveedores(id) ON DELETE SET NULL
);

-- Datos iniciales (opcionales)
INSERT INTO categorias (nombre, descripcion) VALUES
('Laptops', 'Portátiles de diferentes marcas'),
('Smartphones', 'Teléfonos móviles'),
('Accesorios', 'Periféricos y accesorios tecnológicos');

INSERT INTO proveedores (nombre, telefono, email, direccion) VALUES
('TechWorld', '600123456', 'contacto@techworld.com', 'Calle Mayor 12'),
('GigaTech', '611987654', 'ventas@gigatech.com', 'Avenida Central 45');

INSERT INTO productos (nombre, precio, stock, categoria_id, proveedor_id) VALUES
('Laptop Acer Nitro 5', 899.99, 10, 1, 1),
('iPhone 14', 1099.00, 5, 2, 2),
('Ratón Logitech G203', 29.99, 25, 3, 1);

