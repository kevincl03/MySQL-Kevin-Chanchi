use project_dev_bd;

#Tema 1: Vistas

#crear vista para traer todos los campos de users donde el id sea diferente de null
create view usersView as
select * from users
where users.id is not null;

#llamar a la vista creada
select * from usersView;

#reemplazar vista
create or replace view usersView as
select users.email from users
where users.id is not null;

#llamar a la vista actualizada
select * from usersView;

#eliminar vista
drop view if exists usersView;


#Trabajo Vistas, Procedimientos Almacenados y Trigger

#Tema 1: Vistas

#Crear vista para mostrar todos los productos con su respectiva categoría y proveedor
create view productsWithCategoryAndSupplierView as
select pd.`name` as productName, pc.`name` as category,
concat_ws(" ", p.firstName, p.middleName, p.paternalSurname, p.maternalSurname)
as supplierFullName
from products pd
inner join productsCategories pc on pd.idCategory = pc.id
inner join users u on pd.idSupplier = u.id
inner join people p on u.id = p.idUser;

select * from productsWithCategoryAndSupplierView;

#Crear vista para listar todas las ordenes de compra y el estado de cada una, incluyendo ordenes sin estado
create view purchaseOrdersAndTheirStatusView as
select po.id as purchaseOrderId, po.orderDate, pos.`status`
from purchaseOrders po
left join purchaseOrderStatus pos on po.idStatus = pos.id;

select * from purchaseOrdersAndTheirStatusView;

#Crear vista para obtener todos los departamentos y las ciudades que pertenecen a ellos, incluyendo departamentos sin ciudades 
create view departmentsAndTheirCitiesView as
select d.`name` as department, c.`name` as city
from cities c
right join departments d on c.idDepartment = d.id;

select * from departmentsAndTheirCitiesView;

/*
Crear vista para Obtener las personas que vivan en una ciudad específica. Se usara el nombre de la
ciudad parafiltrar las personas que vivan en esa ciudad
*/
CREATE VIEW peopleCityView AS
SELECT firstName, middleName, paternalSurname, maternalSurname
FROM people
WHERE id IN (SELECT idPerson FROM peopleCity
WHERE idCity IN (SELECT id FROM cities WHERE `name` = 'Mocoa'));

SELECT * FROM peopleCityView;

#Tema 2: Procedimientos Almacenados

#Procedimiento almacenado para obtener un usuario por su ID
DELIMITER //

CREATE PROCEDURE getUsers(IN idUser INT)
BEGIN
	SELECT * FROM users WHERE id = idUser;
END //

DELIMITER ;

CALL getUsers(2);

#Procedimiento almacenado para insertar un nuevo departamento y realizar auditoria
DELIMITER //

CREATE PROCEDURE insertDepartmentsAndAudit(
	IN newName VARCHAR(255),
    IN newIdCountry INT
)
BEGIN
	-- Insertar nuevo departamento
    INSERT INTO departments(`name`, idCountry, createdAt, updatedAt)
    VALUES (newName, newIdCountry, NOW(), NOW());
    
    -- Insertar auditoria de la insercion
    INSERT INTO departmentsAudit(`name`, idCountry, createdAt, actionTime)
    VALUES (newName, newIdCountry, NOW(), NOW());
END //

DELIMITER ;

CALL insertDepartmentsAndAudit('California', 4);

SELECT * FROM departments;

SELECT * FROM departmentsAudit;

#Tema 3: Trigger

#Trigger para Auditoría en la Tabla departments
DELIMITER //

CREATE TRIGGER afterDepartmentInsert
	AFTER INSERT
	ON departments
	FOR EACH ROW
BEGIN
	INSERT INTO departmentsAudit (`name`, idCountry, createdAt, actionTime)
    VALUES (NEW.`name`, NEW.idCountry, NEW.createdAt, NOW());
END //

DELIMITER ;

-- Insertar nuevo registro en la tabla departments
INSERT INTO departments(`name`, idCountry, createdAt, updatedAt)
values ('Texas', 4, NOW(), NOW());

SELECT * FROM departments;

SELECT * FROM departmentsAudit;