use project_dev_bd;

#Mostrar todos los productos con su respectiva categoría y proveedor
select pd.`name` as productName, pc.`name` as category,
concat_ws(" ", p.firstName, p.middleName, p.paternalSurname, p.maternalSurname)
as supplierFullName
from products pd
inner join productsCategories pc on pd.idCategory = pc.id
inner join users u on pd.idSupplier = u.id
inner join people p on u.id = p.idUser;

#Obtener las órdenes de compra realizadas en un rango de fechas
select po.id as orderId, po.idSupplier as supplierId, po.orderDate,
pos.`status` as orderStatus, po.total
from purchaseOrders po
inner join purchaseOrderStatus pos on pos.id = po.idStatus
where orderDate between "2024-09-01" and "2024-09-30";

#Obtener los proveedores de un país específico
select p.firstName, p.paternalSurname,
c.`name` as city, ctr.`name` as country
from peopleCity pc
inner join people p on p.id = pc.idPerson
inner join cities c on c.id = pc.idCity
inner join departments d on d.id = c.idDepartment
inner join countries ctr on ctr.id = d.idCountry
inner join users u on p.idUser = u.id
inner join usersRoles ur on u.id = ur.idUser
where ctr.`name` = "Colombia" and ur.idRole = 4; #ID=4 => id de proveedores

#Detallar los productos de una orden de compra específica
select pod.idPurchaseOrder, p.`name` as productName, 
pod.quantity, pod.unitPrice
from purchaseOrderDetails pod
inner join products p on p.id = pod.idProduct
where pod.idPurchaseOrder = 1;

#Encontrar todos los productos que se adquirieron a un proveedor específico
select p.`name` as productName, ps.firstName as supplierFirstName, ps.paternalSurname
from products p
inner join users u on p.idSupplier = u.id
inner join people ps on u.id = ps.idUser
inner join usersRoles ur on u.id = ur.idUser
where ur.idUser = 4;

#Enumerar todas las ordenes de compra realizadas a un proveedor específico
select po.id as idPurchaseOrder, po.orderDate, pos.`status` as orderStatus,
po.total, p.firstName as supplierFirstName, p.paternalSurname
from purchaseOrders po
inner join users u on po.idSupplier = u.id
inner join people p on u.id = p.idUser
inner join purchaseOrderStatus pos on po.idStatus = pos.id
where u.id = 4;

#Encontrar la cantidad total comprada de un producto específico
select p.`name` as productName, sum(pod.quantity) as totalQuantity
from purchaseOrderDetails pod
inner join products p on pod.idProduct = p.id
where p.id = 10;

#Obtener los proveedores de un departamento específico
select concat_ws(" ", p.firstName, p.middleName, p.paternalSurname, p.maternalSurname)
as supplierFullName, d.`name` as department
from people p
inner join peopleCity pc on p.id = pc.idPerson
inner join cities c on pc.idCity = c.id
inner join departments d on c.idDepartment = d.id
inner join users u on p.idUser = u.id
inner join usersRoles ur on u.id = ur.idUser
where d.`name` = "Putumayo" and ur.idRole = 4; #id=4 ID de proveedores

#Mostrar a todas las personas que tienen un usuario
select p.firstName, p.middleName, p.paternalSurname, p.maternalSurname,
u.email, u.`password`
from people p
inner join users u on p.idUser = u.id;

#Obtener todos los productos adquiridos dentro de un rango de fechas específico
select p.`name` as productName, po.orderDate
from products p
inner join purchaseOrderDetails pod on p.id = pod.idProduct
inner join purchaseOrders po on pod.idPurchaseOrder = po.id
where po.orderDate between "2024-08-01" and "2024-08-31";

#Encontrar el precio unitario promedio de los productos de una categoría específica
select round(avg(p.unitPrice), 2) as averageUnitPrice, pc.`name` as productCategory
from products p
inner join productsCategories pc on p.idCategory = pc.id
where pc.id = 1;

#Listar las órdenes de compra pendientes de un proveedor específico
select po.id as orderID, po.total, pos.`status` as orderStatus,
po.idSupplier as supplierId
from purchaseOrders po
inner join users u on po.idSupplier = u.id
inner join purchaseOrderStatus pos on po.idStatus = pos.id
where u.id = 1 and pos.`status` = 'Pendiente';

#Obtener los productos comprados en una orden de compra y el precio total por cada uno
select p.`name` AS productName, pod.quantity, pod.unitPrice,
(pod.quantity * pod.unitPrice) AS totalPrice
from purchaseOrderDetails pod
inner join products p on pod.idProduct = p.id
where pod.idPurchaseOrder = 2;

#Listar las órdenes de compra con un total mayor a un monto específico y su estado
select po.id as orderId, po.total, pos.`status` as orderStatus
from purchaseOrders po
inner join purchaseOrderStatus pos on po.idStatus = pos.id
where po.total > 210000;

#Obtener las categorías con el número de productos que pertenecen a cada una
select pc.`name` as category, count(p.id) as productCount
from productsCategories pc
inner join products p on pc.id = p.idCategory
group by pc.`name`
having productCount > 0;
