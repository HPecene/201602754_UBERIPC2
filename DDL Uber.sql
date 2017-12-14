DROP DATABASE UBER;

CREATE DATABASE UBER;

USE UBER;

CREATE TABLE cliente(
	dpiCliente INT PRIMARY KEY,
	nombre CHAR(50),
	direccion CHAR(50),
	telefono CHAR(50),
	usuario CHAR(50),
	clave CHAR(50)
);

CREATE TABLE conductor(
	dpiConductor INT PRIMARY KEY,
	nombre CHAR(50),
	direccion CHAR(50),
	telefono CHAR(50),
	valoracion CHAR(50),
	usuario CHAR(50),
	clave CHAR(50)
);

CREATE TABLE vehiculoX(
	matriculaX INT PRIMARY KEY,
	modelo CHAR(50),
	marca CHAR(50),
	dpiConductor INT,
	CONSTRAINT fk_id_conductorx FOREIGN KEY (dpiConductor) REFERENCES conductor(dpiConductor)
);

CREATE TABLE vehiculoXl(
	matriculaXl INT PRIMARY KEY,
	modelo CHAR(50),
	marca CHAR(50),
	dpiConductor INT,
	CONSTRAINT fk_id_conductorxl FOREIGN KEY (dpiConductor) REFERENCES conductor(dpiConductor)
);

CREATE TABLE vehiculoBlack(
	matriculaBlack INT PRIMARY KEY,
	modelo CHAR(50),
	marca CHAR(50),
	dpiConductor INT,
	CONSTRAINT fk_id_conductorBlack FOREIGN KEY (dpiConductor) REFERENCES conductor(dpiConductor)
);

CREATE TABLE vehiculoSuv(
	matriculaSuv INT PRIMARY KEY,
	modelo CHAR(50),
	marca CHAR(50),
	dpiConductor INT,
	CONSTRAINT fk_id_conductorSuv FOREIGN KEY (dpiConductor) REFERENCES conductor(dpiConductor)
);

CREATE TABLE helicoptero(
	idHeli INT PRIMARY KEY,
	modelo CHAR(50),
	marca CHAR(50),
	dpiConductor INT,
	CONSTRAINT fk_id_conductorHeli FOREIGN KEY (dpiConductor) REFERENCES conductor(dpiConductor)
);

CREATE TABLE bicicleta(
	idBicicleta INT PRIMARY KEY,
	modelo CHAR(50),
	marca CHAR(50),
	dpiConductor INT,
	CONSTRAINT fk_id_conductorBici FOREIGN KEY (dpiConductor) REFERENCES conductor(dpiConductor)
);


CREATE TABLE uberX(
	idX INT PRIMARY KEY,
	fecha date,
	inicio CHAR(50),
	destino CHAR(50),
	distancia CHAR(50),
	tiempo CHAR(50),
	costo CHAR(50),
	valoracion CHAR(50),
	matriculaX INT,
	dpiCliente INT,
	CONSTRAINT fk_id_vehiculoX FOREIGN KEY (matriculaX) REFERENCES vehiculoX(matriculaX),
	CONSTRAINT fk_id_clienteX FOREIGN KEY (dpiCliente) REFERENCES cliente(dpiCliente)
);

CREATE TABLE uberXl(
	idXl INT PRIMARY KEY,
	fecha date,
	inicio CHAR(50),
	destino CHAR(50),
	distancia CHAR(50),
	tiempo CHAR(50),
	costo CHAR(50),
	valoracion CHAR(50),
	matriculaXL INT,
	dpiCliente INT,
	CONSTRAINT fk_id_vehiculoXlUber FOREIGN KEY (matriculaXl) REFERENCES vehiculoXl(matriculaXl),
	CONSTRAINT fk_id_clienteXlUber FOREIGN KEY (dpiCliente) REFERENCES cliente(dpiCliente)
);

CREATE TABLE uberBlack(
	idBlack INT PRIMARY KEY,
	fecha date,
	inicio CHAR(50),
	destino CHAR(50),
	distancia CHAR(50),
	tiempo CHAR(50),
	costo CHAR(50),
	valoracion CHAR(50),
	matriculaBlack INT,
	dpiCliente INT,
	CONSTRAINT fk_id_vehiculoBlackUber FOREIGN KEY (matriculaBlack) REFERENCES vehiculoBlack(matriculaBlack),
	CONSTRAINT fk_id_clienteBlackUber FOREIGN KEY (dpiCliente) REFERENCES cliente(dpiCliente)
);

CREATE TABLE uberUnderage(
	idUnderage INT PRIMARY KEY,
	fecha date,
	inicio CHAR(50),
	destino CHAR(50),
	distancia CHAR(50),
	tiempo CHAR(50),
	costo CHAR(50),
	valoracion CHAR(50),
	nombreMenor CHAR(50),
	parentesco CHAR(50),
	matriculaBlack INT,
	dpiCliente INT,
	CONSTRAINT fk_id_vehiculoUnde FOREIGN KEY (matriculaBlack) REFERENCES vehiculoBlack(matriculaBlack),
	CONSTRAINT fk_id_clienteUnde FOREIGN KEY (dpiCliente) REFERENCES cliente(dpiCliente)
);

CREATE TABLE uberEats(
	idEats INT PRIMARY KEY,
	fecha date,
	inicio CHAR(50),
	destino CHAR(50),
	distancia CHAR(50),
	tiempo CHAR(50),
	costo CHAR(50),
	valoracion CHAR(50),
	restaurante CHAR(50),
	matriculaX INT,
	dpiCliente INT,
	CONSTRAINT fk_id_vehiculoEar FOREIGN KEY (matriculaX) REFERENCES vehiculoX(matriculaX),
	CONSTRAINT fk_id_clienteEar FOREIGN KEY (dpiCliente) REFERENCES cliente(dpiCliente)
);

CREATE TABLE uberPool(
	idPool INT PRIMARY KEY,
	fecha date,
	inicio CHAR(50),
	destino CHAR(50),
	distancia CHAR(50),
	tiempo CHAR(50),
	costo CHAR(50),
	valoracion CHAR(50),
	pasajeros INT,
	matriculaX INT,
	dpiCliente INT,
	CONSTRAINT fk_id_vehiculoPool FOREIGN KEY (matriculaX) REFERENCES vehiculoX(matriculaX),
	CONSTRAINT fk_id_clientPool FOREIGN KEY (dpiCliente) REFERENCES cliente(dpiCliente)
);

CREATE TABLE uberSuv(
	idSuv INT PRIMARY KEY,
	fecha date,
	inicio CHAR(50),
	destino CHAR(50),
	distancia CHAR(50),
	tiempo CHAR(50),
	costo CHAR(50),
	valoracion CHAR(50),
	matriculaSuv INT,
	dpiCliente INT,
	CONSTRAINT fk_id_vehiculoSuvUber FOREIGN KEY (matriculaSuv) REFERENCES vehiculoSuv(matriculaSuv),
	CONSTRAINT fk_id_clienteSuvUber FOREIGN KEY (dpiCliente) REFERENCES cliente(dpiCliente)
);

CREATE TABLE uberChopper(
	idChopper INT PRIMARY KEY,
	fecha date,
	inicio CHAR(50),
	distancia CHAR(50),
	tiempo CHAR(50),
	costo CHAR(50),
	valoracion CHAR(50),
	idHeli INT,
	dpiCliente INT,
	CONSTRAINT fk_id_vehiculoChopperUber FOREIGN KEY (idHeli) REFERENCES helicoptero(idHeli),
	CONSTRAINT fk_id_clienteChopperUber FOREIGN KEY (dpiCliente) REFERENCES cliente(dpiCliente)
);

CREATE TABLE uberRush(
	idRush INT PRIMARY KEY,
	fecha date,
	inicio CHAR(50),
	destino CHAR(50),
	distancia CHAR(50),
	tiempo CHAR(50),
	costo CHAR(50),
	descripcionPaquete CHAR(50),
	idBicicleta INT,
	dpiCliente INT,
	CONSTRAINT fk_id_bicicletaRush FOREIGN KEY (idBicicleta) REFERENCES bicicleta(idBicicleta),
	CONSTRAINT fk_id_clienteRush FOREIGN KEY (dpiCliente) REFERENCES cliente(dpiCliente)
);

CREATE TABLE uberAngel(
	idAngel INT PRIMARY KEY,
	fecha date,
	inicio CHAR(50),
	destino CHAR(50),
	distancia CHAR(50),
	tiempo CHAR(50),
	costo CHAR(50),
	valoracion CHAR(50),
	dpiConductor INT,
	dpiCliente INT,
	CONSTRAINT fk_id_vehiculoAngel FOREIGN KEY (dpiConductor) REFERENCES conductor(dpiConductor),
	CONSTRAINT fk_id_clienteAngel FOREIGN KEY (dpiCliente) REFERENCES cliente(dpiCliente)
);

CREATE TABLE uberBici(
	idBici INT PRIMARY KEY,
	fecha date,
	direccion CHAR(50),
	tiempo CHAR(50),
	costo CHAR(50),
	idBicicleta INT,
	dpiCliente INT,
	CONSTRAINT fk_id_bicicletaBICICLETA FOREIGN KEY (idBicicleta) REFERENCES bicicleta(idBicicleta),
	CONSTRAINT fk_id_clienteBICICLETA FOREIGN KEY (dpiCliente) REFERENCES cliente(dpiCliente)
);

CREATE TABLE uberVip(
	idVip INT PRIMARY KEY,
	dpiCliente INT,
	CONSTRAINT fk_id_clienteVIP FOREIGN KEY (dpiCliente) REFERENCES cliente(dpiCliente)
);
