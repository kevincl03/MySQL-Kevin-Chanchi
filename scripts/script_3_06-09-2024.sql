#Creacion de la base de datos "proyecto_dev_bd".

drop database if exists proyecto_dev_bd;

create database proyecto_dev_bd;

use proyecto_dev_bd;

#creacion de la entidad categoria con sus atributos.
create table categoria (
	IDCategoria int primary key auto_increment,
    nombreCategoria varchar(50) not null,
    descripcion text,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion de la entidad proveedor con sus atributos.
create table proveedor (
	IDProveedor int primary key auto_increment,
    nombreProveedor varchar(50) not null,
    direccion varchar(100) not null,
    email varchar(100),
    telefono varchar(12) not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion de la entidad producto con sus atributos.
#se relacionan las entidades producto-categoria y producto-proveedor.
create table producto (
	IDProducto int primary key auto_increment,
    nombreProducto varchar(50) not null,
    descripcion text,
    IDCategoria int not null,
    IDProveedor int not null,
    cantidadStock int not null,
    precioUnitario decimal(10, 2) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(IDCategoria) references categoria(IDCategoria),
    foreign key(IDProveedor) references proveedor(IDProveedor)
);