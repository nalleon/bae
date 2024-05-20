
CREATE TABLE cliente (
id_cliente INTEGER PRIMARY KEY,
nombre TEXT,
apellido TEXT,
direccion TEXT
);

INSERT INTO cliente (nombre, apellido, direccion) VALUES
('Juan', 'González', 'Calle Principal 123'),
('María', 'Martínez', 'Avenida Central 456'),
('Pedro', 'Sánchez', 'Plaza Mayor 789');

CREATE TABLE libro (
codigo INTEGER PRIMARY KEY,
titulo TEXT,
autor TEXT,
editorial TEXT,
precio REAL,
fecha_publicacion DATE
);
INSERT INTO libro (titulo, autor, editorial, precio, fecha_publicacion)
VALUES
('El aleph', 'Borges', 'Planeta', 15.50, '1949-01-01'),
('Martin Fierro', 'Jose Hernandez', 'Emece', 22.90, '1872-01-01'),
('Antologia poetica', 'J.L. Borges', 'Planeta', 39, '1967-01-01'),
('Aprenda PHP', 'Mario Molina', 'Emece', 19.50, '2022-01-01'),
('Cervantes y el quijote', 'Bioy Casare- J.L. Borges', 'Paidos', 35.40, '1999-01-01'),
('El Manual de PHP', 'J.C. Paez', 'Paidos', 19, '2020-01-01'),
('Harry Potter y la piedra filosofal', 'J.K. Rowling', 'Paidos', 45.00, '1997-01-01'),
('Harry Potter y la camara secreta', 'J.K. Rowling', 'Paidos', 46.00, '1998-01-01'),
('Alicia en el pais de las maravillas', 'Lewis Carroll', 'Paidos', 36.00, '1865-01-01');

CREATE TABLE venta (
id_venta INTEGER PRIMARY KEY,
id_cliente INTEGER,
codigo_libro INTEGER,
fecha_venta DATE,
cantidad INTEGER,
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (codigo_libro) REFERENCES libro(codigo)
);
INSERT INTO venta (id_cliente, codigo_libro, fecha_venta, cantidad) VALUES
(1, 1, '2024-01-15', 2),
(2, 7, '2024-02-10', 1),
(3, 3, '2024-01-20', 3),
(1, 5, '2024-02-05', 1),
(2, 2, '2024-01-30', 2),
(3, 8, '2024-02-15', 1);

