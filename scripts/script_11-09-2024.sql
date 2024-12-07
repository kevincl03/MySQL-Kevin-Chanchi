#Creacion de la base de datos "project_dev_bd".

drop database if exists project_dev_bd;

create database project_dev_bd;

use project_dev_bd;

#creacion de la entidad paises.
create table countries (
	id int(20) primary key auto_increment,
    `name` varchar(255) not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion de la entidad departamentos y relacion paises - departamentos.
create table departments (
	id int(20) primary key auto_increment,
    `name` varchar(255) not null,
    idCountry int(20) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idCountry) references countries(id)
);

#creacion entidad ciudades y relacion departamentos - ciudades.
create table cities (
	id int(20) primary key auto_increment,
    `name` varchar(255) not null,
    idDepartment int(20) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idDepartment) references departments(id)
);

#creacion de la entidad categorias-productos.
create table productsCategories (
	id int(20) primary key auto_increment,
    `name` varchar(255) not null,
    `description` text,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion de la entidad usuarios.
create table users (
	id int(20) primary key auto_increment,
    email varchar(255) not null unique,
    `password` varchar(255) not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion de la entidad tipo_documento
create table documentTypes (
	id int(20) primary key auto_increment,
    `name` varchar(255) not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion entidad personas.
#relacion entidades usuarios - personas.
create table people (
	id int(20) primary key auto_increment,
    idUser int(20) default null unique,
    idDocumentType int(20) not null,
    document varchar(255) not null unique,
    firstName varchar(255),
    middleName varchar(255),
    paternalSurname varchar(255),
    maternalSurname varchar(255),
    address varchar(255),
    email varchar(255),
    phone varchar(255) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idUser) references users(id),
    foreign key(idDocumentType) references documentTypes(id)
);

#creacion de la entidad roles.
create table roles (
	id int(20) primary key auto_increment,
    `name` varchar(255) not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion de la entidad usuarios_roles.
#entidad que relaciona usuarios con roles.
create table usersRoles (
	id int(20) primary key auto_increment,
    idUser int(20) not null,
    idRole int(20) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idUser) references users(id),
    foreign key(idRole) references roles(id)
);

#creacion entidad ciudad_personas.
#entidad que relaciona personas con ciudades.
create table peopleCity (
	id int(20) primary key auto_increment,
    idPerson int(20) not null,
    idCity int(20) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idPerson) references people(id),
    foreign key(idCity) references cities(id)
);

#creacion entidad productos.
#se relacionan las entidades categorias - productos y proveedores - productos.
create table products (
	id int(20) primary key auto_increment,
    `name` varchar(255) not null,
    `description` text,
    idCategory int(20) not null,
    idSupplier int(20) not null,
    currentStock int not null,
    minimumStock int not null,
    unitPrice decimal(10, 2) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idCategory) references productsCategories(id),
    foreign key(idSupplier) references users(id)
);

#creacion entidad estados_orden_compra
create table purchaseOrderStatus (
	id int(20) primary key auto_increment,
    `status` varchar(255) not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion entidad ordenes_compra.
#se relaciona las entidades proveedores - ordenes_compra y estados_orden_compra - ordenes_compra.
create table purchaseOrders (
	id int(20) primary key auto_increment,
    idSupplier int(20) not null,
    orderDate datetime not null,
    idStatus int(20) not null,
    total decimal(10, 2),
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idSupplier) references users(id),
    foreign key(idStatus) references purchaseOrderStatus(id)
);

#creacion entidad detalles_orden_compra.
#Entidad que relaciona ordenes_de_compra con productos.
create table purchaseOrderDetails (
	id int(20) primary key auto_increment,
    idPurchaseOrder int(20) not null,
    idProduct int(20) not null,
    quantity int not null,
    unitPrice decimal(10, 2),
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idPurchaseOrder) references purchaseOrders(id),
    foreign key(idProduct) references products(id)
);

#creacion entidad facturas
#Relacion facturas-usuarios(vendedor)
create table invoices (
	id int(20) primary key auto_increment,
    idCustomer int(20) default null,
    idSeller int(20) not null,
    invoiceDate datetime not null,
    totalAmount decimal(10, 2) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idCustomer) references users(id),
    foreign key(idSeller) references users(id)
);

#creacion entidad detalles_factura
#Entidad que relaciona facturas con productos
create table invoiceDetails (
	id int(20) primary key auto_increment,
    idInvoice int(20) not null,
    idProduct int(20) not null,
    quantity int not null,
    unitPrice decimal(10, 2),
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idInvoice) references invoices(id),
    foreign key(idProduct) references products(id)
);

#creacion entidad tiendas
create table stores (
	id int(20) primary key auto_increment,
    `name` varchar(255) not null,
    nit varchar(255) not null unique,
    address varchar(255),
    phone varchar(255),
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion entidad productos_tienda
#Entidad que relaciona la tienda con sus productos
create table storeProducts (
	id int(20) primary key auto_increment,
    idStore int(20) not null,
    idProduct int(20) not null,
    stock int(20) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idStore) references stores(id),
    foreign key(idProduct) references products(id)
);

#creacion entidad metodos_de_pago
create table paymentMethods (
	id int(20) primary key auto_increment,
    `name` varchar(255) not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacion entidad pasarelas_de_pago
#relacion pasarelas_de_pago con metodos_de_pago
create table paymentGateaways (
	id int(20) primary key auto_increment,
    idPaymentMethod int(20) not null,
    `name` varchar(255) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idPaymentMethod) references paymentMethods(id)
);

#creacion entidad tiendas_pasarelas_de_pago
#relacion con tiendas y pasarelas_de_pago
create table paymentGateawaysStores (
	id int(20) primary key auto_increment,
    idStore int(20) not null,
    idPaymentGateaway int(20) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idStore) references stores(id),
    foreign key(idPaymentGateaway) references paymentGateaways(id)
);

#creacion entidad pagos
#Relacion pagos con metodos_de_pago y pagos con facturas
create table payments (
	id int(20) primary key auto_increment,
    idInvoice int(20) not null,
    idPaymentMethod int(20) not null,
    paymentDate datetime not null,
    amount decimal(10, 2),
    idPaymentGateawaysStore int(20) not null,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idInvoice) references invoices(id),
    foreign key(idPaymentMethod) references paymentMethods(id),
    foreign key(idPaymentGateawaysStore) references paymentGateawaysStores(id)
);

#creacion entidad registros_de_pasarela_de_pago
#relacion registros_de_pasarela_de_pago con pagos
create table paymentGateawayRecords (
	id int(20) primary key auto_increment,
    idInvoice int(20) not null,
    idPayment int(20) not null,
    dataResponse text,
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idInvoice) references invoices(id),
    foreign key(idPayment) references payments(id)
);

#creacion entidad parametros
create table parameters (
	id int(20) primary key auto_increment,
    `code` varchar(255) not null,
    `description` varchar(255),
    createdAt datetime not null,
    updatedAt datetime not null
);

#creacio entidad parametros_tiendas_pasarelas_de_pago
#relacion con parametros y tiendas_pasarelas_de_pago
create table paymentGateawaysStoresParameters (
	id int(20) primary key auto_increment,
    idParameter int(20) not null,
    idPaymentGateawayStore int(20) not null,
    `value` varchar(255),
    createdAt datetime not null,
    updatedAt datetime not null,
    foreign key(idParameter) references parameters(id),
    foreign key(idPaymentGateawayStore) references paymentGateawaysStores(id)
);

#Tablas para realizar Auditoria
create table departmentsAudit (
	id int(20) primary key auto_increment,
    `name` varchar(255) not null,
    idCountry int(20) not null,
    createdAt datetime not null,
    actionTime datetime not null
);