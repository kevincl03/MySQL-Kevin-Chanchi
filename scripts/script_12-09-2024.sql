use project_dev_bd;

######## Ingreso de Datos Entidad pais ########
insert into country (country, createdAt, updatedAt)
values
("Colombia", "2024-09-12 09:05:00", "2024-09-12 09:05:00"),
("Brasil", "2024-09-12 09:06:00", "2024-09-12 09:06:00"),
("Ecuador", "2024-09-12 09:07:00", "2024-09-12 09:07:00"),
("Estados Unidos", "2024-09-12 09:08:00", "2024-09-12 09:08:00"),
("España", "2024-09-12 09:09:00", "2024-09-12 09:09:00");

######## Ingreso de Datos Entidad departamento ########
insert into department (department, idCountry, createdAt, updatedAt)
values
("Putumayo", 1, "2024-09-12 09:10:00", "2024-09-12 09:10:00"),
("Nariño", 1, "2024-09-12 09:10:00", "2024-09-12 09:10:00"),
("Huila", 1, "2024-09-12 09:10:00", "2024-09-12 09:10:00"),
("Antioquia", 1, "2024-09-12 09:10:00", "2024-09-12 09:10:00"),
("Cataluña", 5, "2024-09-12 09:11:00", "2024-09-12 09:11:00"),
("Florida", 4, "2024-09-12 09:11:00", "2024-09-12 09:11:00"),
("Sao Paulo", 2, "2024-09-12 09:12:00", "2024-09-12 09:12:00"),
("Guayas", 3, "2024-09-12 09:12:00", "2024-09-12 09:12:00");

######## Ingreso de Datos Entidad ciudad ########
insert into city (city, idDepartment, createdAt, updatedAt)
values
("Pasto", 2, "2024-09-12 09:20:00", "2024-09-12 09:20:00"),
("Mocoa", 1, "2024-09-12 09:20:00", "2024-09-12 09:20:00"),
("Villagarzon", 1, "2024-09-12 09:20:00", "2024-09-12 09:20:00"),
("Medellin", 4, "2024-09-12 09:22:00", "2024-09-12 09:22:00"),
("Neiva", 3, "2024-09-12 09:22:00", "2024-09-12 09:22:00"),
("Miami", 6, "2024-09-12 09:23:00", "2024-09-12 09:23:00"),
("Sao Paulo", 7, "2024-09-12 09:23:00", "2024-09-12 09:23:00"),
("Guayaquil", 8, "2024-09-12 09:24:00", "2024-09-12 09:24:00"),
("Barcelona", 5, "2024-09-12 09:24:00", "2024-09-12 09:24:00");

######## Ingreso de Datos Entidad categoria ########
insert into category (category, `description`, createdAt, updatedAt)
values
("Carnico", "Categoria carnes", "2024-09-12 09:45:00", "2024-09-12 09:45:00"),
("Grano", "Categoria granos", "2024-09-12 09:45:00", "2024-09-12 09:45:00"),
("Lacteo", "Categoria lacteos", "2024-09-12 09:50:00", "2024-09-12 09:50:00"),
("Mecato", "Categoria Mecato", "2024-09-12 09:50:00", "2024-09-12 09:50:00"),
("Aseo", "Categoria Aseo", "2024-09-12 10:00:00", "2024-09-12 10:00:00");

######## Ingreso de Datos Entidad tipo_proveedor ########
insert into supplierType (`type`, createdAt, updatedAt)
values
("Empresa", "2024-09-30 13:15:00", "2024-09-30 13:15:00"),
("Persona", "2024-09-30 13:16:00", "2024-09-30 13:16:00");

######## Ingreso de Datos Entidad proveedor ########
insert into supplier (idSupplierType, `names`, paternalSurname, maternalSurname, companyName, nit, address, email, phone, createdAt, updatedAt)
values 
(2, "Michael Alejandro", "Riascos", "Fernández", NULL, NULL, "Calle 123, Zona 4", "michael.riascos@gmail.com", "3136541230", "2024-09-18 07:15:00", "2024-09-18 07:15:00"),
(2, "María Fernanda", "García", "Pérez", NULL, NULL, "Av. Principal 456, Zona 2", "maria.garcia@hotmail.com", "3207891230", "2024-09-18 07:15:00", "2024-09-18 07:15:00"),
(1, NULL, NULL, NULL, "Suministros ABC", "8009001001", "Calle 5, Zona Industrial", "contacto@abc.com", "4561237", "2024-09-18 07:20:00", "2024-09-18 07:20:00"),
(1, NULL, NULL, NULL, "SurtiFami", "8012003004", "Avenida Tecnológica 8, Centro", "ventas@surtifami.com", "4234567", "2024-09-18 07:20:00", "2024-09-18 07:20:00");

######## Ingreso de Datos Entidad proveedor_ciudad ########
insert into supplierCity (idSupplier, idCity, createdAt, updatedAt)
values
(3, 7,"2024-09-27 08:21:00", "2024-09-27 08:21:00"),
(1, 8, "2024-09-27 08:22:00", "2024-09-27 08:22:00"),
(4, 2, "2024-09-27 08:23:00", "2024-09-27 08:23:00"),
(4, 5, "2024-09-27 08:24:00", "2024-09-27 08:24:00"),
(2, 4, "2024-09-27 08:25:00", "2024-09-27 08:25:00");

######## Ingreso de Datos Entidad producto ########
insert into product (product, `description`, idCategory, idSupplier, currentStock, minimumStock, unitPrice, createdAt, updatedAt)
values
("Carne de res", "kilo", 1, 3, 30, 8, 10000, "2024-09-18 07:21:00", "2024-09-18 07:21:00"),
("Carne de cerdo", "kilo", 1, 3, 6, 8, 15000, "2024-09-18 07:21:00", "2024-09-18 07:21:00"),
("Leche", "Litro", 3, 4, 28, 5, 5000, "2024-09-18 07:25:00", "2024-09-18 07:25:00"),
("Arroz Roa", "kilo", 2, 1, 48, 5, 11000, "2024-09-18 07:25:00", "2024-09-18 07:25:00"),
("Queso crema", "Tarro", 3, 2, 35, 5, 8000, "2024-09-18 07:30:00", "2024-09-18 07:30:00"),
("Lenteja", "kilo", 2, 1, 39, 5, 9000, "2024-09-18 07:30:00", "2024-09-18 07:30:00"),
("Papas fritas", "Paquete", 4, 4, 3, 5, 3000, "2024-09-18 07:52:00", "2024-09-18 07:52:00"),
("Jabon de manos", "Tarro", 5, 2, 18, 5, 5000, "2024-09-18 07:52:00", "2024-09-18 07:52:00"),
("Chocolatina Jumbo Grande", "Unidad", 4, 2, 10, 5, 2000, "2024-09-18 08:00:00", "2024-09-18 08:00:00"),
("Detergente fab", "Bolsa grande", 5, 4, 13, 5, 8000, "2024-09-18 08:00:00", "2024-09-18 08:00:00");

######## Ingreso de Datos Entidad estado_orden_compra ########
insert into purchaseOrderStatus (`status`, createdAt, updatedAt)
values
("Cancelada", "2024-09-27 08:00:00", "2024-09-27 08:00:00"),
("Pendiente", "2024-09-27 08:01:00", "2024-09-27 08:01:00"),
("Procesada", "2024-09-27 08:02:00", "2024-09-27 08:02:00");

######## Ingreso de Datos Entidad orden_compra ########
insert into purchaseOrder (idSupplier, orderDate, idStatus, total, createdAt, updatedAt)
values
(3, "2024-08-18 10:32:00", 3, 250000, "2024-08-18 10:32:00", "2024-08-18 10:32:00"),
(1, "2024-09-18 10:49:00", 2, 160000, "2024-09-18 10:49:00", "2024-09-18 10:49:00"),
(4, "2024-09-19 11:07:00", 1, 282000, "2024-09-19 11:07:00", "2024-09-19 11:07:00");

######## Ingreso de Datos Entidad detalle_orden_compra ########
insert into purchaseOrderDetail (idPurchaseOrder, idProduct, quantity, unitPrice, createdAt, updatedAt)
values
(1, 2, 12, 12500, "2024-09-18 11:22:00", "2024-09-18 11:22:00"),
(1, 4, 10, 6000, "2024-09-18 11:22:00", "2024-09-18 11:22:00"),
(1, 7, 8, 5000, "2024-09-18 11:22:00", "2024-09-18 11:22:00"),
(3, 5, 40, 7050, "2024-09-18 11:25:00", "2024-09-18 11:25:00"),
(2, 10, 16, 7000, "2024-09-18 11:30:00", "2024-09-18 11:30:00"),
(2, 3, 12, 4000, "2024-09-18 11:30:00", "2024-09-18 11:30:00");
