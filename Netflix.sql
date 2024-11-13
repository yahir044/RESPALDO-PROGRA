CREATE DATABASE NETFLIX
USE NETFLIX

CREATE TABLE "Perfiles"(
    "perfilId" INT NOT NULL,
    "usuarioId" INT NOT NULL,
    "nombrePerfil" VARCHAR(50) NOT NULL,
    "imagenPerfil" VARCHAR(1524) NOT NULL
);

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


CREATE TABLE "Tipo Suscripcion"(
    "tipoSuscripcionId" TINYINT NOT NULL,
    "tipoSuscripcionNombre" VARCHAR(50) NOT NULL,
    "costo" DECIMAL(8, 2) NOT NULL
);

INSERT INTO "Tipo Suscripcion"
VALUES ('01','Basico','109');
INSERT INTO "Tipo Suscripcion"
VALUES ('02','Estandar','149');
INSERT INTo "Tipo Suscripcion"
VALUES ('03','Premium','199');
INSERT INTO "Tipo Suscripcion"
VALUES ('04','Ultra','239');

ALTER TABLE
    "Tipo Suscripcion" ADD CONSTRAINT "tipo suscripcion_tiposuscripciontinyint_primary" PRIMARY KEY("tipoSuscripciontinyint");
CREATE TABLE "Usuario"(
    "usuarioId" INT NOT NULL,
    "nombre" VARCHAR(50) NOT NULL,
    "paterno" VARCHAR(50) NOT NULL,
    "materno" VARCHAR(50) NOT NULL,
    "correo" VARCHAR(20) NOT NULL,
    "telefono" VARBINARY(MAX) NOT NULL
);

INSERT INTO Perfiles
VALUES ('01','Yahir','Guzman','Espinoza','yahirge04@gmail.com','8342742898')
INSERT INTO Perfiles
VALUES ('02','Jose','Perez','Martinez','josee@gmail.com','8345722818');
INSERT INTO Perfiles
VALUES ('03','Armando','Guzman','Perez','armando68@gmail.com','8341542880');
INSERT INTO Perfiles
VALUES ('04','Miguel','Hernandez','Garza','miguelhdz@gmail.com','8342641191');
INSERT INTO Perfiles
VALUES ('05','Arturo','Perez','Vega','arturopv2004@gmail.com','8352112782');

ALTER TABLE
    "Usuario" ADD CONSTRAINT "usuario_usuarioid_primary" PRIMARY KEY("usuarioId");
CREATE TABLE "Cuenta"(
    "usuarioId" INT NOT NULL,
    "tipoSuscripcion" TINYINT NOT NULL,
    "fechaInicio" DATE NOT NULL,
    "fechaFin" DATE NOT NULL,
    "tarjetaCredito" VARBINARY(MAX) NOT NULL
);

INSERT INTO Cuenta
VALUES ('01','02','2024-11-11','2024-12-11','1234567812345678');
INSERT INTO Cuenta
VALUES ('02','01','2024-11-09','2024-12-09','1234567812345678');
INSERT INTO Cuenta
VALUES ('03','04','2024-11-08','2024-12-08','1234567812345678');
INSERT INTO Cuenta
VALUES ('04','03','2024-11-12','2024-12-12','1234567812345678');
INSERT INTO Cuenta
VALUES ('05','03','2024-11-01','2024-12-01','1234567812345678');
ALTER TABLE
    "Cuenta" ADD CONSTRAINT "cuenta_usuarioid_foreign" FOREIGN KEY("usuarioId") REFERENCES "Usuario"("usuarioId");
ALTER TABLE
    "Cuenta" ADD CONSTRAINT "cuenta_tiposuscripcion_foreign" FOREIGN KEY("tipoSuscripcion") REFERENCES "Tipo Suscripcion"("tipoSuscripciontinyint");
ALTER TABLE
    "Perfiles" ADD CONSTRAINT "perfiles_usuarioid_foreign" FOREIGN KEY("usuarioId") REFERENCES "Usuario"("usuarioId");