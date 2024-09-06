#Creacion de la base de datos y de la entidad producto.

drop database if exists proyecto_dev_bd;

create database proyecto_dev_bd;

use proyecto_dev_bd;

create table producto (
	IDProducto int primary key auto_increment,
    nombreProducto varchar(50) not null,
    descripcion text,
    cantidadStock int not null,
    precioUnitario decimal(10, 2) not null,
    createdAt datetime not null,
    updatedAt datetime not null
);