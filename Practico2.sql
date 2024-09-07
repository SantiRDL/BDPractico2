-- Crear tabla Usuario
CREATE TABLE Usuario (
    nombreUsuario VARCHAR(50) PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    password VARCHAR(50),
    fechaNacimiento DATE
);

-- Crear tabla Producto
CREATE TABLE Producto (
    idProducto INT PRIMARY KEY,
    nombreProducto VARCHAR(50),
    precioUnitario DECIMAL(10, 2)
);

-- Crear tabla Pedido
CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY,
    fechaSolicitud DATE,
    nombreUsuario VARCHAR(50),
    FOREIGN KEY (nombreUsuario) REFERENCES Usuario(nombreUsuario)
);

-- Crear tabla ProductoPedido
CREATE TABLE ProductoPedido (
    idPedido INT,
    idProducto INT,
    cantidad INT,
    PRIMARY KEY (idPedido, idProducto),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
);

-- Insertar datos en la tabla Usuario
INSERT INTO Usuario (nombreUsuario, nombre, apellido, password, fechaNacimiento) VALUES
('user1', 'Juan', 'Perez', 'password123', '1990-01-01'),
('user2', 'Maria', 'Gomez', 'password456', '1985-05-15');

-- Insertar datos en la tabla Producto
INSERT INTO Producto (idProducto, nombreProducto, precioUnitario) VALUES
(1, 'Producto A', 10.50),
(2, 'Producto B', 20.00);

-- Insertar datos en la tabla Pedido
INSERT INTO Pedido (idPedido, fechaSolicitud, nombreUsuario) VALUES
(1, '2023-10-01', 'user1'),
(2, '2023-10-02', 'user2');

-- Insertar datos en la tabla ProductoPedido
INSERT INTO ProductoPedido (idPedido, idProducto, cantidad) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 1, 1);

-- Consultas SQL para verificar la inserción de datos
SELECT * FROM Usuario;
SELECT * FROM Producto;
SELECT * FROM Pedido;
SELECT * FROM ProductoPedido;
