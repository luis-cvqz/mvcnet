DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda;

CREATE TABLE fabricante (
    id INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE producto (
    id INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio DOUBLE NOT NULL,
    id_fabricante INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_fabricante) REFERENCES fabricante(id)
);

INSERT INTO fabricante (nombre) VALUES
    ('Asus'),
    ('Lenovo'),
    ('Hewlett-Packard'),
    ('Samsung'),
    ('Seagate'),
    ('Crucial'),
    ('Gigabyte'),
    ('Huawei'),
    ('Xiaomi');

INSERT INTO producto (nombre, precio, id_fabricante) VALUES 
    ('Disco duro SATA3 1TB', 86.99, 5),
    ('Memoria RAM DDR4 8GB', 120, 6),
    ('Disco SSD 1 TB', 150.99, 4),
    ('GeForce GTX 1050Ti', 185, 7),
    ('GeForce GTX 1080 Xtreme', 755, 6),
    ('Monitor 24 LED Full HD', 202, 1),
    ('Monitor 27 LED Full HD', 245.99, 1),
    ('Portátil Yoga 520', 559, 2),
    ('Portátil Ideapd 320', 444, 2),
    ('Impresora HP Deskjet 3720', 59.99, 3),
    ('Impresora HP Laserjet Pro M26nw', 180, 3);