Create database JEESECURE;

Use JEESECURE;

CREATE TABLE Clientes (
  ID_Cliente INT PRIMARY KEY IDENTITY(1,1),
  Nombre VARCHAR(50) NOT NULL,
  Apellido VARCHAR(50) NOT NULL,
  Correo_Electronico VARCHAR(100) NOT NULL,
  Telefono VARCHAR(20) NOT NULL,
  Direccion VARCHAR(200) NOT NULL,
  Ciudad VARCHAR(50) NOT NULL,
  Pais VARCHAR(50) NOT NULL,
  Codigo_Postal VARCHAR(10) NOT NULL,
  Fecha_Registro DATETIME NOT NULL
);


INSERT INTO Clientes (Nombre, Apellido, Correo_Electronico, Telefono, Direccion, Ciudad, Pais, Codigo_Postal, Fecha_Registro)
VALUES
('José', 'Almonte', 'josealmonte@gmail.com', '809-123-4567', 'Calle Duarte 123', 'Santo Domingo', 'República Dominicana', '10101', '2023-11-24'),
('Ana', 'Durán', 'anaduran@hotmail.com', '809-234-5678', 'Calle Sanchez 456', 'Santiago', 'República Dominicana', '51000', '2023-11-24'),
('Pedro', 'Martínez', 'pedromartinez@outlook.com', '809-345-6789', 'Calle Mella 789', 'La Romana', 'República Dominicana', '22000', '2023-11-24'),
('Carmen', 'Fernández', 'carmenfernandez@gmail.com', '809-456-7890', 'Calle Colon 123', 'Punta Cana', 'República Dominicana', '23000', '2023-11-24'),
('Luis', 'Gómez', 'luisgomez@hotmail.com', '809-567-8901', 'Calle Independencia 456', 'Puerto Plata', 'República Dominicana', '31000', '2023-11-24'),
('Miguel', 'Suárez', 'miguel.suarez@outlook.com', '809-678-9012', 'Calle Duarte 789', 'San Pedro de Macoris', 'República Dominicana', '24000', '2023-11-24'),
('Rosa', 'Pérez', 'rosapere4z@gmail.com', '809-789-0123', 'Calle Sanchez 123', 'Barahona', 'República Dominicana', '45000', '2023-11-24'),
('Roberto', 'García', 'robertogarcia2@hotmail.com', '809-890-1234', 'Calle Mella 456', 'San Francisco de Macoris', 'República Dominicana', '32000', '2023-11-24'),
('María', 'López', 'marialopez45@outlook.com', '809-901-2345', 'Calle Colon 789', 'La Vega', 'República Dominicana', '41000', '2023-11-24'),
('David', 'Rodríguez', 'david4rodriguez@gmail.com', '809-012-3456', 'Calle Independencia 123', 'Bonao', 'República Dominicana', '42000', '2023-11-24');







CREATE TABLE Productos (
  ID_Producto INT PRIMARY KEY IDENTITY(1,1),
  Nombre_Producto VARCHAR(100) NOT NULL,
  Descripcion VARCHAR(500) NOT NULL,
  Precio DECIMAL(10,2) NOT NULL,
  Costo DECIMAL(10,2) NOT NULL,
  Stock INT NOT NULL,
  Categoria VARCHAR(50) NOT NULL,
  Marca VARCHAR(50) NOT NULL,
  Fecha_Lanzamiento DATETIME NOT NULL
);

INSERT INTO Productos (Nombre_Producto, Descripcion, Precio, Costo, Stock, Categoria, Marca, Fecha_Lanzamiento)
VALUES
('JeeSecure Endpoint Protection', 'Protege equipos de endpoint contra malware, ransomware y ataques dirigidos.', 79.99, 39.99, 100, 'Endpoint Security', 'JeeSecure Solutions', '2023-11-21'),
('JeeSecure Email Security', 'Filtra y bloquea correos electrónicos maliciosos y phishing.', 49.99, 24.99, 150, 'Email Security', 'JeeSecure Solutions', '2023-11-22'),
('JeeSecure Web Security', 'Bloquea sitios web maliciosos y filtra el tráfico web.', 39.99, 19.99, 200, 'Web Security', 'JeeSecure Solutions', '2023-11-23'),
('JeeSecure Network Security', 'Monitorea y protege redes corporativas de intrusiones.', 99.99, 49.99, 50, 'Network Security', 'JeeSecure Solutions', '2023-11-24'),
('JeeSecure Vulnerability Management', 'Identifica y prioriza las vulnerabilidades de seguridad.', 69.99, 34.99, 75, 'Vulnerability Management', 'JeeSecure Solutions', '2023-11-25'),
('JeeSecure Data Loss Prevention', 'Previene la fuga de datos confidenciales.', 129.99, 64.99, 25, 'Data Loss Prevention', 'JeeSecure Solutions', '2023-11-26'),
('JeeSecure SIEM & Log Management', 'Centraliza y analiza logs de seguridad para una detección de amenazas avanzada.', 149.99, 74.99, 10, 'SIEM & Log Management', 'JeeSecure Solutions', '2023-11-27'),
('JeeSecure Managed Security Services (MSS)', 'Servicio gestionado de seguridad para monitoreo y respuesta a incidentes 24/7.', 199.99, 99.99, 5, 'Managed Security Services', 'JeeSecure Solutions', '2023-11-28'),
('JeeSecure Security Awareness Training', 'Capacitación en seguridad informática para empleados.', 49.99, 29.99, -1, 'Security Awareness Training', 'JeeSecure Solutions', '2023-11-29'), 
('JeeSecure Penetration Testing', 'Pruebas de penetración para identificar vulnerabilidades en aplicaciones y sistemas.', 249.99, 124.99, 3, 'Penetration Testing', 'JeeSecure Solutions', '2023-11-30');




CREATE TABLE Ventas (
  ID_Venta INT PRIMARY KEY IDENTITY(1,1),
  ID_Cliente INT FOREIGN KEY REFERENCES Clientes(ID_Cliente),
  ID_Producto INT FOREIGN KEY REFERENCES Productos(ID_Producto),
  Fecha_Venta DATETIME NOT NULL,
  Cantidad INT NOT NULL,
  Total DECIMAL(10,2) NOT NULL,
  Metodo_Pago VARCHAR(50) NOT NULL,
  Estado VARCHAR(50) NOT NULL,
  Numero_Guia VARCHAR(50) NULL,
  Fecha_Entrega DATETIME NULL
);

INSERT INTO Ventas (ID_Cliente, ID_Producto, Fecha_Venta, Cantidad, Total, Metodo_Pago, Estado)
VALUES
(1, 1, '2023-11-21', 1, 79.99, 'Tarjeta de crédito', 'Pagado'),
(2, 2, '2023-11-22', 2, 99.98, 'Transferencia bancaria', 'En espera'),
(3, 3, '2023-11-23', 1, 39.99, 'Efectivo', 'Pagado'),
(4, 4, '2023-11-24', 3, 299.97, 'PayPal', 'En proceso'),
(5, 5, '2023-11-25', 2, 139.98, 'Tarjeta de débito', 'Pagado'),
(6, 6, '2023-11-26', 1, 129.99, 'Efectivo', 'Entregado'),
(7, 7, '2023-11-27', 5, 749.95, 'Tarjeta de crédito', 'En proceso'),
(8, 8, '2023-11-28', 1, 199.99, 'Transferencia bancaria', 'Pagado'),
(9, 9, '2023-11-29', 10, 499.90, 'PayPal', 'En espera'),
(10, 10, '2023-11-30', 2, 499.98, 'Tarjeta de débito', 'Pagado');


CREATE TABLE Usuarios (
  ID_Usuario INT PRIMARY KEY IDENTITY(1,1),
  Nombre_Usuario VARCHAR(50) NOT NULL,
  Contraseña VARCHAR(50) NOT NULL,
  Rol VARCHAR(50) NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  Apellido VARCHAR(50) NOT NULL,
  Correo_Electronico VARCHAR(100) NOT NULL,
  Telefono VARCHAR(20) NOT NULL,
  Fecha_Registro DATETIME NOT NULL,
  Estatus VARCHAR(50) NOT NULL
);

INSERT INTO Usuarios (Nombre_Usuario, Contraseña, Rol, Nombre, Apellido, Correo_Electronico, Telefono, Fecha_Registro, Estatus)
VALUES
('jgonzalez', 'Segure123', 'Administrador', 'José', 'Gonzalez', 'josegonzalez@gmail.com', '809-123-4567', '2023-11-20', 'Activo'),
('amartinez', 'ElFuerte876', 'Vendedor', 'Ana', 'Martinez', 'anamartinez@gmail.com', '809-234-5678', '2023-11-21', 'Activo'),
('psanchez', 'Clave1234', 'Cliente', 'Pedro', 'Sanchez', 'pedrosanchez@jeesecure.com', '809-345-6789', '2023-11-22', 'Activo'),
('cluisa', 'secretoSeguro987', 'Almacenero', 'Carmen', 'Luisa', 'carmenluisa@hotmail.com', '809-456-7890', '2023-11-23', 'Activo'),
('jdiaz', 'claveConfiable567', 'Contador', 'Juan', 'Diaz', 'juandiaz@outlook.com', '809-567-8901', '2023-11-24', 'Activo'),
('mrodriguez', 'Clave098', 'Gestor de Inventario', 'María', 'Rodriguez', 'maria.rodriguez@gmail.com', '809-678-9012', '2023-11-25', 'Activo'),
('aperalta', 'contraseñaSegura345', 'Gerente', 'Ana', 'Peralta', 'anaperalta@gamil.com', '809-789-0123', '2023-11-26', 'Activo'),
('lfernandez', 'noCompartoClave123', 'Supervisor', 'Luis', 'Fernandez', 'luisfernandez@gmail.com', '809-890-1234', '2023-11-27', 'Activo'),
('sgomez', 'claveFuerte7890', 'Cliente VIP', 'Sara', 'Gómez', 'saragomez@hotmail.com', '809-901-2345', '2023-11-28', 'Activo'),
('dcastillo', 'Regular3232', 'Atención al Cliente', 'David', 'Castillo', 'davidcastillo@gmail.com.com', '809-012-3456', '2023-11-29', 'Activo');



CREATE TABLE Carrito (
  ID_Carrito INT PRIMARY KEY IDENTITY(1,1),
  ID_Usuario INT FOREIGN KEY REFERENCES Usuarios(ID_Usuario),
  ID_Producto INT FOREIGN KEY REFERENCES Productos(ID_Producto),
  Cantidad INT NOT NULL,
  Fecha_Agregado DATETIME NOT NULL
);

INSERT INTO Carrito (ID_Usuario, ID_Producto, Cantidad, Fecha_Agregado)
VALUES
(1, 1, 1, '2023-11-21 10:23:00'),
(2, 2, 2, '2023-11-22 11:15:00'),
(3, 3, 1, '2023-11-23 12:07:00'),
(4, 4, 3, '2023-11-24 13:59:00'),
(5, 5, 2, '2023-11-25 14:41:00'),
(6, 6, 1, '2023-11-26 15:33:00'),
(7, 7, 5, '2023-11-27 16:25:00'),
(8, 8, 1, '2023-11-28 17:17:00'),
(9, 9, 10, '2023-11-29 18:09:00'),
(10, 10, 2, '2023-11-30 19:01:00');