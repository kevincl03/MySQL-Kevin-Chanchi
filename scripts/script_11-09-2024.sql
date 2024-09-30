#Creacion de la base de datos "project_dev_bd".

drop database if exists project_dev_bd;

create database project_dev_bd;

use project_dev_bd;

#creacion de la entidad pais con sus atributos.
create table country (
	idCountry int primary key auto_increment,
    country varchar(50) not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion de la entidad departamento con sus atributos y relacion pais-departamento.
create table department (
	idDepartment int primary key auto_increment,
    department varchar(40) not null,
    idCountry int not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idCountry) references country(idCountry)
);

#creacion entidad ciudad con sus atributos y relacion departamento-ciudad.
create table city (
	idCity int primary key auto_increment,
    city varchar(50) not null,
    idDepartment int not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idDepartment) references department(idDepartment)
);

#creacion de la entidad categoria con sus atributos.
create table category (
	idCategory int primary key auto_increment,
    category varchar(50) not null,
    `description` text,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion de la entidad tipo_proveedor.
create table supplierType (
	idSupplierType int primary key auto_increment,
    `type` varchar(10) not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion entidad proveedor con sus atributos.
#relacion entidades tipo_proveedor y proveedor.
create table supplier (
	idSupplier int primary key auto_increment,
    idSupplierType int not null,
    `names` varchar(40),
    paternalSurname varchar(30),
    maternalSurname varchar(30),
    companyName varchar(50),
    nit varchar(15),
    address varchar(80),
    email varchar(80),
    phone varchar(12) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idSupplierType) references supplierType(idSupplierType)
);

#creacion entidad proveedor_ciudad.
#se relacionan las entidades proveedor y ciudad.
create table supplierCity (
	idSupplierCity int primary key auto_increment,
    idSupplier int not null,
    idCity int not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idSupplier) references supplier(idSupplier),
    foreign key(idCity) references city(idCity)
);

#creacion entidad producto con sus atributos.
#se relacionan las entidades categoria-producto y proveedor-producto.
create table product (
	idProduct int primary key auto_increment,
    product varchar(50) not null,
    `description` text,
    idCategory int not null,
    idSupplier int not null,
    currentStock int not null,
    minimumStock int not null,
    unitPrice decimal(10, 2) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idCategory) references category(idCategory),
    foreign key(idSupplier) references supplier(idSupplier)
);

#creacion entidad estado_orden_compra
create table purchaseOrderStatus (
	idPurchaseOrderStatus int primary key auto_increment,
    `status` varchar(20) not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion entidad orden_compra con sus atributos.
#se relaciona las entidades proveedor-orden_compra y estado_orden_compra-orden_compra.
create table purchaseOrder (
	idPurchaseOrder int primary key auto_increment,
    idSupplier int not null,
    orderDate datetime not null,
    idStatus int not null,
    total decimal(10, 2),
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idSupplier) references supplier(idSupplier),
    foreign key(idStatus) references purchaseOrderStatus(idPurchaseOrderStatus)
);

#creacion entidad detalle_orden_compra.
#relacion entidades detalle_orden_compra - orden_compra  y  detalle_orden_compra - producto.
create table purchaseOrderDetail (
	idPurchaseOrderDetail int primary key auto_increment,
    idPurchaseOrder int not null,
    idProduct int not null,
    quantity int not null,
    unitPrice decimal(10, 2),
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idPurchaseOrder) references purchaseOrder(idPurchaseOrder),
    foreign key(idProduct) references product(idProduct)
);