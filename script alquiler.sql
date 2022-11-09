CREATE DATABASE IF NOT EXISTS Alquiler_de_coches DEFAULT CHARACTER SET utf8 ;
USE Alquiler_de_coches ;

CREATE TABLE IF NOT EXISTS Cliente (
 Codcliente INT NOT NULL,
 Dni VARCHAR(45) NULL,
 Nombre VARCHAR(45) NULL,
 Tlf VARCHAR(45) NULL,
 Cliente_Codcliente INT NOT NULL,
 PRIMARY KEY (Codcliente),
 FOREIGN KEY (Codcliente) REFERENCES Cliente (Codcliente)
 )ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Garaje (
 Codgaraje INT NOT NULL,
 Ubicacion VARCHAR(45) NULL,
 PRIMARY KEY ( Codgaraje )

 )ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Coche (
 Codcoche INT NOT NULL,
 Matricula VARCHAR(45) NULL,
 Garaje_Codgaraje INT NOT NULL,
 PRIMARY KEY ( Codcoche ),
 FOREIGN KEY (Codgaraje) REFERENCES garaje (Codgaraje)
 )ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Reserva (
 Codreserva INT NOT NULL,
 Fecha_reserva VARCHAR(45) NULL,
 Fecha_devolucion VARCHAR(45) NULL,
 Precio VARCHAR(45) NULL,
 Cliente_Codcliente INT NOT NULL,
 Coche_Codcoche INT NOT NULL,
 PRIMARY KEY ( Codreserva ),
 FOREIGN KEY (Codcliente) REFERENCES Cliente (Codcliente)
 )ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Agencia (
 Codagencia INT NOT NULL,
 Nombre VARCHAR(45) NULL,
 Ubicacion VARCHAR(45) NULL,
 Agenciacol VARCHAR(45) NULL,
 Reserva_Codreserva INT NOT NULL,
 PRIMARY KEY ( Codagencia ),
 FOREIGN KEY (Codreserva) REFERENCES reserva (Codreserva)
 )ENGINE = InnoDB;
 
 CREATE TABLE intermedio (
 Codcoche INT NOT NULL,
 Codreserva INT NOT NULL,
 PRIMARY KEY (Codcoche, Codreserva)
 )