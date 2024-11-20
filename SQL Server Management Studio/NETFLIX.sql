CREATE DATABASE BASEDEDATOS
use BASEDEDATOS

-- tabla Usuario
CREATE TABLE Usuario (
    usuarioId INT PRIMARY KEY ,
    nombre VARCHAR(50) NOT NULL,
    paterno VARCHAR(50) NOT NULL,
    materno VARCHAR(50),
    correo VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(15)
);

-- tabla TipoSuscripcion
CREATE TABLE TipoSuscripcion (
    tipoSuscripcionId TINYINT PRIMARY KEY,
    tipoSuscripcionNombre VARCHAR(50) NOT NULL,
    costo DECIMAL(10, 2) NOT NULL
);

-- tabla Cuenta
CREATE TABLE Cuenta (
    cuentaId INT PRIMARY KEY ,
    usuarioId INT NOT NULL,
    tipoSuscripcionId TINYINT NOT NULL,
    fechaInicio DATE NOT NULL,
    fechaFin DATE,
    tarjetaCredito VARCHAR(16),
    FOREIGN KEY (usuarioId) REFERENCES Usuario(usuarioId),
    FOREIGN KEY (tipoSuscripcionId) REFERENCES TipoSuscripcion(tipoSuscripcionId)
);

-- tabla Perfiles
CREATE TABLE Perfiles (
    perfilId INT PRIMARY KEY ,
    usuarioId INT NOT NULL,
    nombrePerfil VARCHAR(50) NOT NULL,
    imagenPerfil VARCHAR(100),
    FOREIGN KEY (usuarioId) REFERENCES Usuario(usuarioId)
);

--TipoSuscripcion
INSERT INTO "TipoSuscripcion"
VALUES ('01','Basico','109');
INSERT INTO "TipoSuscripcion"
VALUES ('02','Estandar','149');
INSERT INTo "TipoSuscripcion"
VALUES ('03','Premium','199');
INSERT INTO "TipoSuscripcion"
VALUES ('04','Ultra','239');

-- Usuario
INSERT INTO Usuario
VALUES ('01','Yahir','Guzman','Espinoza','yahirge04@gmail.com','8342742898')
INSERT INTO Usuario
VALUES ('02','Jose','Perez','Martinez','josee@gmail.com','8345722818');
INSERT INTO Usuario
VALUES ('03','Armando','Guzman','Perez','armando68@gmail.com','8341542880');
INSERT INTO Usuario
VALUES ('04','Miguel','Hernandez','Garza','miguelhdz@gmail.com','8342641191');
INSERT INTO Usuario
VALUES ('05','Arturo','Perez','Vega','arturopv2004@gmail.com','8352112782');

--Cuenta
INSERT INTO Cuenta
VALUES ('01','01','02','2024-11-11','2024-12-11','1234567812345678');
INSERT INTO Cuenta
VALUES ('02','02','01','2024-11-09','2024-12-09','1234567812345678');
INSERT INTO Cuenta
VALUES ('03','03','04','2024-11-08','2024-12-08','1234567812345678');
INSERT INTO Cuenta
VALUES ('04','04','03','2024-11-12','2024-12-12','1234567812345678');
INSERT INTO Cuenta
VALUES ('05','05','03','2024-11-01','2024-12-01','1234567812345678');

--Perfiles

INSERT INTO Perfiles
VALUES ('01','01','Yahir','imagen');
INSERT INTO Perfiles
VALUES ('02','02','Jose','imagen');
INSERT INTO Perfiles
VALUES ('03','03','Armando','imagen');
INSERT INTO Perfiles
VALUES ('04','04','Miguel','imagen');
INSERT INTO Perfiles
VALUES ('05','05','Arturo','imagen');










