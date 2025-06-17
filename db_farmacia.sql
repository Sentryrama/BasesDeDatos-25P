
-- Crear base de datos
CREATE DATABASE IF NOT EXISTS db_farmacia;
USE db_farmacia;

-- Proveedores
CREATE TABLE Proveedores (
    ID_proveedor INT PRIMARY KEY,
    nombre_proveedor VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(255)
);

-- Sucursales
CREATE TABLE Sucursales (
    ID_sucursal INT PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(100),
    direccion VARCHAR(255),
    telefono VARCHAR(20)
);

-- Empleados
CREATE TABLE Empleados (
    ID_empleado INT PRIMARY KEY,
    nombre VARCHAR(100),
    puesto VARCHAR(50),
    salario DECIMAL(10,2),
    ID_sucursal INT,
    FOREIGN KEY (ID_sucursal) REFERENCES Sucursales(ID_sucursal)
);

-- Productos
CREATE TABLE Productos (
    ID_producto INT PRIMARY KEY,
    nombre_producto VARCHAR(100),
    precio DECIMAL(10,2),
    cantidad_disponible INT,
    ID_proveedor INT,
    FOREIGN KEY (ID_proveedor) REFERENCES Proveedores(ID_proveedor)
);

-- Ventas
CREATE TABLE Ventas (
    ID_venta INT PRIMARY KEY,
    fecha DATE,
    ID_empleado INT,
    ID_sucursal INT,
    monto_total DECIMAL(10,2),
    FOREIGN KEY (ID_empleado) REFERENCES Empleados(ID_empleado),
    FOREIGN KEY (ID_sucursal) REFERENCES Sucursales(ID_sucursal)
);

-- Proveedores
INSERT INTO Proveedores VALUES
(1, 'Farmabien', '5551234567', 'Av. Reforma 100, CDMX'),
(2, 'SaludTotal', '5557654321', 'Insurgentes 200, CDMX'),
(3, 'MedicMex', '5544332211', 'Tlalpan 300, CDMX'),
(4, 'BioSalud', '5566778899', 'Monterrey 101, NL'),
(5, 'PharmaPlus', '5511223344', 'León 202, GTO'),
(6, 'MediExpress', '5599887766', 'Puebla 303, PUE'),
(7, 'Sanavida', '5577553311', 'Querétaro 505, QRO'),
(8, 'NutriPharma', '5544667788', 'Toluca 606, EDO'),
(9, 'SalusMed', '5533221100', 'Guadalajara 707, JAL'),
(10, 'NovaFarm', '5566447788', 'Cancún 808, QROO'),
(11, 'EcoFarm', '5512345678', 'Zacatecas 909, ZAC'),
(12, 'FarmaciaVida', '5588776655', 'Chihuahua 1010, CHI');

-- Sucursales
INSERT INTO Sucursales VALUES
(1, 'Sucursal Centro', 'CDMX', 'Reforma 123', '5550001111'),
(2, 'Sucursal Norte', 'CDMX', 'Norte 456', '5550002222'),
(3, 'Sucursal Sur', 'CDMX', 'Sur 789', '5550003333'),
(4, 'Sucursal Oriente', 'CDMX', 'Oriente 101', '5550004444'),
(5, 'Sucursal Poniente', 'CDMX', 'Poniente 202', '5550005555'),
(6, 'Sucursal Guadalajara', 'Guadalajara', 'Centro 303', '3330006666'),
(7, 'Sucursal Monterrey', 'Monterrey', 'Obrera 404', '8180007777'),
(8, 'Sucursal Puebla', 'Puebla', 'Centro 505', '2220008888'),
(9, 'Sucursal León', 'León', 'Campestre 606', '4770009999'),
(10, 'Sucursal Cancún', 'Cancún', 'Zona Hotelera 707', '9980000000'),
(11, 'Sucursal Querétaro', 'Querétaro', 'Centro 808', '4421234567'),
(12, 'Sucursal Toluca', 'Toluca', 'Av. Las Torres 909', '7221239876');

-- Empleados
INSERT INTO Empleados VALUES
(1, 'Juan Pérez', 'Cajero', 8000.00, 1),
(2, 'Ana López', 'Gerente', 15000.00, 1),
(3, 'Carlos Ruiz', 'Vendedor', 9000.00, 2),
(4, 'Lucía Gómez', 'Cajero', 8500.00, 2),
(5, 'Pedro Díaz', 'Vendedor', 8800.00, 3),
(6, 'María Sánchez', 'Gerente', 15500.00, 3),
(7, 'Luis Martínez', 'Cajero', 8200.00, 4),
(8, 'Laura Torres', 'Vendedor', 8700.00, 5),
(9, 'Jorge Ramírez', 'Cajero', 8100.00, 6),
(10, 'Sofía Herrera', 'Gerente', 16000.00, 7),
(11, 'Ernesto Vega', 'Vendedor', 8900.00, 8),
(12, 'Daniela Núñez', 'Cajero', 8300.00, 9);

-- Productos
INSERT INTO Productos VALUES
(1, 'Paracetamol', 15.50, 100, 1),
(2, 'Ibuprofeno', 22.00, 80, 2),
(3, 'Aspirina', 18.75, 60, 3),
(4, 'Antigripal', 35.00, 120, 4),
(5, 'Jarabe para la tos', 40.25, 90, 5),
(6, 'Suero oral', 20.00, 150, 6),
(7, 'Vitamina C', 25.50, 110, 7),
(8, 'Antibiótico', 50.00, 70, 8),
(9, 'Gel antibacterial', 30.00, 200, 9),
(10, 'Cubrebocas', 5.00, 500, 10),
(11, 'Crema antibiótica', 33.00, 85, 11),
(12, 'Lactobacilos', 27.50, 95, 12);

-- Ventas
INSERT INTO Ventas VALUES
(1, '2025-06-01', 1, 1, 150.00),
(2, '2025-06-01', 2, 1, 75.50),
(3, '2025-06-02', 3, 2, 90.00),
(4, '2025-06-02', 4, 2, 40.25),
(5, '2025-06-03', 5, 3, 130.00),
(6, '2025-06-03', 6, 3, 110.50),
(7, '2025-06-04', 7, 4, 95.00),
(8, '2025-06-04', 8, 5, 85.75),
(9, '2025-06-05', 9, 6, 125.00),
(10, '2025-06-05', 10, 7, 170.00),
(11, '2025-06-06', 11, 8, 145.00),
(12, '2025-06-06', 12, 9, 132.75);

SELECT * FROM Proveedores;
SELECT * FROM Sucursales;
SELECT * FROM Empleados;
SELECT * FROM Productos;
SELECT * FROM Ventas;
