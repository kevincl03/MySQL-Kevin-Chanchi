use project_dev_bd;

######## Ingreso de Datos Entidad paises ########
insert into countries (`name`, createdAt, updatedAt)
values
("Colombia", "2024-09-12 09:05:00", "2024-09-12 09:05:00"),
("Brasil", "2024-09-12 09:06:00", "2024-09-12 09:06:00"),
("Ecuador", "2024-09-12 09:07:00", "2024-09-12 09:07:00"),
("Estados Unidos", "2024-09-12 09:08:00", "2024-09-12 09:08:00"),
("España", "2024-09-12 09:09:00", "2024-09-12 09:09:00");

######## Ingreso de Datos Entidad departamentos ########
insert into departments (`name`, idCountry, createdAt, updatedAt)
values
("Putumayo", 1, "2024-09-12 09:10:00", "2024-09-12 09:10:00"),
("Nariño", 1, "2024-09-12 09:10:00", "2024-09-12 09:10:00"),
("Huila", 1, "2024-09-12 09:10:00", "2024-09-12 09:10:00"),
("Antioquia", 1, "2024-09-12 09:10:00", "2024-09-12 09:10:00"),
("Cataluña", 5, "2024-09-12 09:11:00", "2024-09-12 09:11:00"),
("Florida", 4, "2024-09-12 09:11:00", "2024-09-12 09:11:00"),
("Sao Paulo", 2, "2024-09-12 09:12:00", "2024-09-12 09:12:00"),
("Guayas", 3, "2024-09-12 09:12:00", "2024-09-12 09:12:00");

######## Ingreso de Datos Entidad ciudades ########
insert into cities (`name`, idDepartment, createdAt, updatedAt)
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

######## Ingreso de Datos Entidad categorias-productos ########
insert into productsCategories (`name`, `description`, createdAt, updatedAt)
values
("Carnico", "Categoria carnes", "2024-09-12 09:45:00", "2024-09-12 09:45:00"),
("Grano", "Categoria granos", "2024-09-12 09:45:00", "2024-09-12 09:45:00"),
("Lacteo", "Categoria lacteos", "2024-09-12 09:50:00", "2024-09-12 09:50:00"),
("Mecato", "Categoria Mecato", "2024-09-12 09:50:00", "2024-09-12 09:50:00"),
("Aseo", "Categoria Aseo", "2024-09-12 10:00:00", "2024-09-12 10:00:00");

######## Ingreso de Datos Entidad usuarios ########
insert into users (email, `password`, createdAt, updatedAt)
values
("michael.riascos@gmail.com", 'password12', "2024-10-08 07:30:00", "2024-10-08 07:30:00"),
("maria.garcia@hotmail.com", 'password1200', "2024-10-08 07:30:00", "2024-10-08 07:30:00"),
("contacto@abc.com", 'password1234', "2024-10-08 07:30:00", "2024-10-08 07:30:00"),
("ventas@surtifami.com", 'password1235', "2024-10-08 07:30:00", "2024-10-08 07:30:00"),
("juan.perez@gmail.com", 'password123', "2024-10-08 07:30:00", "2024-10-08 07:30:00"),
("maria.lopez@hotmail.com", 'securepass456', "2024-10-08 07:32:00", "2024-10-08 07:32:00");

######## Ingreso de Datos Entidad tipo-documento ########
insert into documentTypes (`name`, createdAt, updatedAt)
values
('CC', now(), now()),
('CE', now(), now()),
('PP', now(), now());

######## Ingreso de Datos Entidad persona ########
insert into people (idUser, idDocumentType, document, firstName, middleName, paternalSurname, maternalSurname, address, email, phone, createdAt, updatedAt)
values 
(1, 1, "1006945725", "Michael", "Alejandro", "Riascos", "Fernández", "Calle 123, Zona 4", "michael.riascos@gmail.com", "3136541230", "2024-09-18 07:15:00", "2024-09-18 07:15:00"),
(2, 1, "1007462351", "María", "Fernanda", "García", "Pérez", "Av. Principal 456, Zona 2", "maria.garcia@hotmail.com", "3207891230", "2024-09-18 07:15:00", "2024-09-18 07:15:00"),
(3, 1, "1127037425", "Andres", "Camilo", "Murcia", "Acosta", "Calle 5, Zona Industrial", "contacto@abc.com", "4561237", "2024-09-18 07:20:00", "2024-09-18 07:20:00"),
(4, 1, "27358885", "Ximena", "Alejandra", "Acosta", "Lopez", "Avenida Tecnológica 8, Centro", "ventas@surtifami.com", "4234567", "2024-09-18 07:20:00", "2024-09-18 07:20:00"),
(5, 1, "69472692", 'Juan', 'Antonio', 'Pérez', 'García', 'Calle Principal 123, Ciudad', 'juan.perez@gmail.com', '555-123-4567', "2024-10-08 07:20:00", "2024-10-08 07:20:00"),
(6, 1, "1124843207", 'María', 'Isabel', 'López', 'Rodríguez', 'Avenida Central 456, Pueblo', 'maria.lopez@hotmail.com', '555-987-6543', "2024-10-08 07:20:00", "2024-10-08 07:20:00");

######## Ingreso de Datos Entidad roles ########
insert into roles (`name`, createdAt, updatedAt)
values
("Administrador", now(), now()),
("Cajero", now(), now()),
("Bodeguero", now(), now()),
("Proveedor", now(), now()),
("Cliente", now(), now());

######## Ingreso de Datos Entidad roles_usuarios ########
insert into usersRoles (idUser, idRole, createdAt, updatedAt)
values
(1, 4, now(), now()),
(2, 4, now(), now()),
(3, 4, now(), now()),
(4, 4, now(), now()),
(5, 2, now(), now()),
(6, 1, now(), now());

######## Ingreso de Datos Entidad persona_ciudad ########
insert into peopleCity (idPerson, idCity, createdAt, updatedAt)
values
(3, 7,"2024-09-27 08:21:00", "2024-09-27 08:21:00"),
(1, 8, "2024-09-27 08:22:00", "2024-09-27 08:22:00"),
(4, 2, "2024-09-27 08:23:00", "2024-09-27 08:23:00"),
(4, 5, "2024-09-27 08:24:00", "2024-09-27 08:24:00"),
(2, 4, "2024-09-27 08:25:00", "2024-09-27 08:25:00"),
(5, 3, "2024-09-27 08:25:00", "2024-09-27 08:25:00"),
(6, 2, "2024-09-27 08:25:00", "2024-09-27 08:25:00");

######## Ingreso de Datos Entidad productos ########
insert into products (`name`, `description`, idCategory, idSupplier, currentStock, minimumStock, unitPrice, createdAt, updatedAt)
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

######## Ingreso de Datos Entidad ordenes_compra ########
insert into purchaseOrders (idSupplier, orderDate, idStatus, total, createdAt, updatedAt)
values
(3, "2024-08-18 10:32:00", 3, 250000, "2024-08-18 10:32:00", "2024-08-18 10:32:00"),
(1, "2024-09-18 10:49:00", 2, 160000, "2024-09-18 10:49:00", "2024-09-18 10:49:00"),
(4, "2024-09-19 11:07:00", 1, 282000, "2024-09-19 11:07:00", "2024-09-19 11:07:00");

######## Ingreso de Datos Entidad detalles_orden_compra ########
insert into purchaseOrderDetails (idPurchaseOrder, idProduct, quantity, unitPrice, createdAt, updatedAt)
values
(1, 2, 12, 12500, "2024-09-18 11:22:00", "2024-09-18 11:22:00"),
(1, 4, 10, 6000, "2024-09-18 11:22:00", "2024-09-18 11:22:00"),
(1, 7, 8, 5000, "2024-09-18 11:22:00", "2024-09-18 11:22:00"),
(3, 5, 40, 7050, "2024-09-18 11:25:00", "2024-09-18 11:25:00"),
(2, 10, 16, 7000, "2024-09-18 11:30:00", "2024-09-18 11:30:00"),
(2, 3, 12, 4000, "2024-09-18 11:30:00", "2024-09-18 11:30:00");

######## Ingreso de Datos Entidad facturas ########
insert into invoices (idSeller, invoiceDate, totalAmount, createdAt, updatedAt)
values
(5, now(), 57500, now(), now()),
(5, now(), 125200, now(), now()),
(5, now(), 210000, now(), now());

######## Ingreso de Datos Entidad detalles_factura ########
insert into invoiceDetails (idInvoice, idProduct, quantity, unitPrice, createdAt, updatedAt)
values
(1, 3, 7, 5000, now(), now()),
(1, 5, 10, 8000, now(), now()),
(3, 1, 12, 10000, now(), now()),
(3, 8, 4, 5000, now(), now()),
(3, 10, 5, 8000, now(), now()),
(2, 5, 15, 8000, now(), now());

