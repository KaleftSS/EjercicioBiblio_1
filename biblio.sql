CREATE TABLE autor (
  id_autor int(20) PRIMARY KEY NOT NULL,
  nombre varchar(20) DEFAULT NULL
);

CREATE TABLE libro (
  id_libro int(20) PRIMARY KEY NOT NULL,
  titulo varchar(20) DEFAULT NULL,
  editorial varchar(20) DEFAULT NULL,
  id_autor int(11) DEFAULT NULL,
  FOREIGN KEY (id_autor) REFERENCES autor(id_autor) ON DELETE CASCADE
);

CREATE TABLE libro_prestamo (
  id_libro_prestamo int(20) PRIMARY KEY NOT NULL,
  id_prestamo int(11) DEFAULT NULL,
  id_libro int(11) DEFAULT NULL,
  FOREIGN KEY (id_libro) REFERENCES libro (id_libro) ON DELETE CASCADE

);

CREATE TABLE multa (
  id_multa int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  penalizacion int(20) DEFAULT NULL
);

CREATE TABLE prestamo (
  id_prestamo int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  diashabiles int(20) DEFAULT NULL,
  id_multa int(11) DEFAULT NULL,
  FOREIGN KEY (id_multa) REFERENCES multa (id_multa) ON DELETE CASCADE
);

CREATE TABLE usuario(
  id_usuario int(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nombre_usuario varchar(20) DEFAULT NULL,
  edad int(3) DEFAULT NULL,
  numero_cont int(10) DEFAULT NULL,
  id_prestamo int(11) DEFAULT NULL,
  FOREIGN KEY (id_prestamo) REFERENCES prestamo (id_prestamo) ON DELETE CASCADE

)

INSERT INTO autor (id_autor, nombre) VALUES
(1, 'Gabriel García Márquez.'),
(2, 'Candelario Obeso.'),
(3, 'Rafael Pombo.'),
(4, 'Virginia Woolf'),
(5, 'José Eustasio Rivera');

INSERT INTO libro (id_libro, titulo, editorial, id_autor) VALUES
(1, 'Base', 'Norma', 1),
(2, 'De ', 'Norma', 2),
(3, 'Datos', 'Norma', 3),
(4, 'Biblioteca', 'Norma', 4),
(5, 'Primer punto', 'Norma', 5);

INSERT INTO libro_prestamo (id_libro_prestamo, id_prestamo, id_libro) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

INSERT INTO multa (id_multa, penalizacion) VALUES
(1, 10),
(2, 11),
(3, 12),
(4, 13),
(5, 14);

INSERT INTO prestamo (id_prestamo, diashabiles, id_multa) VALUES
(1, 5, 1),
(2, 5, 2),
(3, 5, 3),
(4, 5, 4),
(5, 5, 5);

INSERT INTO usuario (id_usuario, nombre_usuario, edad, numero_cont, id_prestamo) VALUES
(1, 'Felipe', 20, 123, 1),
(2, 'Diego', 18, 344, 2),
(3, 'Willian', 18, 356, 3),
(4, 'Nicol', 21, 321, 4),
(5, 'Kaleft', 19, 395, 5);

UPDATE autor SET nombre = 'Juan' WHERE id_autor = 1;
UPDATE autor SET nombre = 'Dani' WHERE id_autor = 2;
UPDATE autor SET nombre = 'Teo' WHERE id_autor = 3;
UPDATE autor SET nombre = 'Kin' WHERE id_autor = 4;
UPDATE autor SET nombre = 'Fun' WHERE id_autor = 5;

UPDATE libro SET titulo = 'Coco' WHERE id_libro = 1;
UPDATE libro SET titulo = 'Fresa' WHERE id_libro = 2;
UPDATE libro SET titulo = 'Mango' WHERE id_libro = 3;
UPDATE libro SET titulo = 'Manzana' WHERE id_libro = 4;
UPDATE libro SET titulo = 'Pera' WHERE id_libro = 5;

UPDATE libro_prestamo SET id_libro_prestamo = 25 WHERE id_libro = 1;
UPDATE libro_prestamo SET id_libro_prestamo = 24 WHERE id_libro = 2;
UPDATE libro_prestamo SET id_libro_prestamo = 22 WHERE id_libro = 3;
UPDATE libro_prestamo SET id_libro_prestamo = 10 WHERE id_libro = 4;
UPDATE libro_prestamo SET id_libro_prestamo = 12 WHERE id_libro = 5;

DELETE FROM autor WHERE id_autor = 1;
DELETE FROM autor WHERE id_autor = 2;
DELETE FROM autor WHERE id_autor = 3;
DELETE FROM autor WHERE id_autor = 4;
DELETE FROM autor WHERE id_autor = 5;
