use proyecto_dev_bd;
######## Ingreso de Datos Entidad pais ########
insert into pais (pais, createdAt, updatedAt)
values
("Colombia", "2024-09-12 09:05:00", "2024-09-12 09:05:00"),
("Brasil", "2024-09-12 09:06:00", "2024-09-12 09:06:00"),
("Ecuador", "2024-09-12 09:07:00", "2024-09-12 09:07:00"),
("Estados Unidos", "2024-09-12 09:08:00", "2024-09-12 09:08:00"),
("España", "2024-09-12 09:09:00", "2024-09-12 09:09:00");

######## Ingreso de Datos Entidad departamento ########
insert into departamento (departamento, IDPais, createdAt, updatedAt)
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
insert into ciudad (ciudad, IDDepartamento, createdAt, updatedAt)
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
insert into categoria (nombreCategoria, descripcion, createdAt, updatedAt)
values
("Carnico", "Categoria carnes", "2024-09-12 09:45:00", "2024-09-12 09:45:00"),
("Grano", "Categoria granos", "2024-09-12 09:45:00", "2024-09-12 09:45:00"),
("Lacteo", "Categoria lacteos", "2024-09-12 09:50:00", "2024-09-12 09:50:00"),
("Mecato", "Categoria Mecato", "2024-09-12 09:50:00", "2024-09-12 09:50:00"),
("Aseo", "Categoria Aseo", "2024-09-12 10:00:00", "2024-09-12 10:00:00");

######## Ingreso de Datos Entidad proveedor ########
