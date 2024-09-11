#Creacion de la base de datos "proyecto_dev_bd".

drop database if exists proyecto_dev_bd;

create database proyecto_dev_bd;

use proyecto_dev_bd;

#creacion de la entidad pais con sus atributos.
create table pais (
	IDPais int primary key auto_increment,
    pais varchar(50) not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion de la entidad departamento con sus atributos y relacion pais-departamento.
create table departamento (
	IDDepartamento int primary key auto_increment,
    departamento varchar(40) not null,
    IDPais int not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(IDPais) references pais(IDPais)
);

#creacion entidad ciudad con sus atributos y relacion departamento-ciudad.
create table ciudad (
	IDCiudad int primary key auto_increment,
    ciudad varchar(50) not null,
    IDDepartamento int not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(IDDepartamento) references departamento(IDDepartamento)
);

#creacion de la entidad categoria con sus atributos.
create table categoria (
	IDCategoria int primary key auto_increment,
    nombreCategoria varchar(50) not null,
    descripcion text,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion entidad proveedor con sus atributos y relacion ciudad-proveedor
create table proveedor (
	IDProveedor int primary key auto_increment,
    nombresProveedor varchar(40),
    apellidoPaterno varchar(40),
    apellidoMaterno varchar(40),
    razonSocial varchar(50),
    nit varchar(15),
    direccion varchar(80),
    email varchar(80),
    telefono varchar(12) not null,
    IDCiudad int not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(IDCiudad) references ciudad(IDCiudad)
);

#creacion entidad producto con sus atributos.
#se relacionan las entidades producto-categoria y producto-proveedor.
create table producto (
	IDProducto int primary key auto_increment,
    nombreProducto varchar(50) not null,
    descripcion text,
    IDCategoria int not null,
    IDProveedor int not null,
    stockActual int not null,
    stockMinimo int not null,
    precioUnitario decimal(10, 2) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(IDCategoria) references categoria(IDCategoria),
    foreign key(IDProveedor) references proveedor(IDProveedor)
);

#creacion entidad orden_compra con sus atributos.
#se relaciona las entidades proveedor-orden_compra.
create table orden_compra (
	IDOrdenCompra int primary key auto_increment,
    IDProveedor int not null,
    fechaOrden datetime not null,
    estado varchar(20),
    total decimal(10, 2),
    foreign key(IDProveedor) references proveedor(IDProveedor)
);

#creacion entidad detalle_orden_compra.
#relacion entidades detalle_orden_compra - orden_compra  y  detalle_orden_compra - producto.
create table detalle_orden_compra (
	IDDetalleOrdenCompra int primary key auto_increment,
    IDOrdenCompra int not null,
    IDProducto int not null,
    cantidad int not null,
    precioUnitario decimal(10, 2),
    foreign key(IDOrdenCompra) references orden_compra(IDOrdenCompra),
    foreign key(IDProducto) references producto(IDProducto)
);