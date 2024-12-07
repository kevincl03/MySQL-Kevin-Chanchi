use project_dev_bd;

############# Consultas LEFT JOIN #############

#Obtener todos los productos y si existe, el nombre del proveedor asociado
select p.`name` as productName,
concat_ws(" ", pe.firstName, pe.middleName, pe.paternalSurname, pe.maternalSurname)
as supplierFullName
from products p
left join users u on p.idSupplier = u.id
left join people pe on u.id = pe.idUser;

#Listar todas las ordenes de compra y el estado de cada una, incluyendo ordenes sin estado
select po.id as purchaseOrderId, po.orderDate, pos.`status`
from purchaseOrders po
left join purchaseOrderStatus pos on po.idStatus = pos.id;

#Mostrar todas las personas y la ciudad en la que viven, incluyendo personas sin ciudad registrada
select p.firstName, p.paternalSurname, c.`name` as cityName
from people p
left join peopleCity pc on p.id = pc.idPerson
left join cities c on pc.idCity = c.id;

#Obtener todas las categorías de productos y los productos en ellas, incluyendo categorías sin productos
select pc.`name` as category, p.`name` as productName
from productsCategories pc
left join products p on pc.id = p.idCategory;

#Listar todas las órdenes de compra y sus detalles, incluso si no tienen productos asociados
select po.id as orderId, pod.idProduct as productId,
pod.quantity, pod.unitPrice
from purchaseOrders po
left join purchaseOrderDetails pod on po.id = pod.idPurchaseOrder;

#Mostrar todos los usuarios y sus roles, incluso aquellos usuarios que no tienen roles asignados
select u.email, u.`password`, r.`name` as `role`
from users u
left join usersRoles ur on u.id = ur.idUser
left join roles r on ur.idRole = r.id;

#Obtener todos los países y sus departamentos, incluyendo países sin departamentos
select c.`name` as country, d.`name` as department
from countries c
left join departments d on c.id = d.idCountry;

#Listar todas las ciudades y las personas asociadas a ellas, incluyendo ciudades sin personas asociadas
select c.`name` as city, p.firstName, p.paternalSurname
from cities c
left join peopleCity pc on c.id = pc.idCity
left join people p on pc.idPerson = p.id;

#Mostrar todos los departamentos y las ciudades en ellos, incluyendo departamentos sin ciudades
select d.`name` as department, c.`name` as city
from departments d
left join cities c on d.id = c.idDepartment;

/*
Obtener todas las categorías y sus productos junto con los proveedores de esos productos,
incluyendo categorías sin productos o productos sin proveedor
*/
select pc.`name` as category, p.`name` as productName,
concat_ws(" ", pe.firstName, pe.middleName, pe.paternalSurname, pe.maternalSurname)
as supplierFullName
from productsCategories pc
left join products p on pc.id = p.idCategory
left join users u on p.idSupplier = u.id
left join people pe on u.id = pe.idUser;

############# Consultas RIGHT JOIN #############

#Obtener todos los productos y los proveedores, incluyendo productos sin proveedor
select p.`name` as productName, pe.firstName, pe.paternalSurname
from users u
right join products p on u.id = p.idSupplier
right join people pe on u.id = pe.idUser
right join usersRoles ur on u.id = ur.idUser
where ur.idRole = 4;

#Mostrar todos los estados de órdenes de compra y las órdenes asociadas, incluyendo estados sin órdenes
select pos.`status`, po.id as orderId, po.orderDate
from purchaseOrders po
right join purchaseOrderStatus pos on po.idStatus = pos.id;

#Listar todas las ciudades y las personas asociadas, incluyendo ciudades sin personas asociadas
select c.`name` as city, pe.firstName, pe.paternalSurname
from peopleCity pc
right join cities c on c.id = pc.idCity
right join people pe on pc.idPerson = pe.id;

#Obtener todas las categorías de productos y los productos en ellas, incluyendo categorias sin productos
select pc.`name` as category, p.`name` as productName
from products p
right join productsCategories pc on p.idCategory = pc.id;

#Mostrar todos los detalles de productos y las órdenes a las que están asociadas, incluyendo productos sin órdenes
select pod.idProduct, pod.quantity, pod.unitPrice, po.id as orderId
from purchaseOrders po
right join purchaseOrderDetails pod on po.id = pod.idPurchaseOrder;

#Listar todos los roles y los usuarios que tienen asignado cada rol, incluyendo roles sin usuarios
select r.`name` as `role`, u.email
from usersRoles ur
right join roles r on ur.idRole = r.id
right join users u on ur.idUser = u.id;

#Obtener todas las ciudades y los departamentos a los que pertenecen, incluyendo ciudades sin departamentos
select c.`name` as city, d.`name` as department
from departments d
right join cities c on d.id = c.idDepartment;

#Mostrar todos los proveedores y las órdenes de compra que tienen asignadas, incluyendo proveedores sin órdenes
select p.firstName, p.paternalSurname, po.id as orderId
from purchaseOrders po
right join users u on po.idSupplier = u.id
right join people p on u.id = p.idUser
right join usersRoles ur on u.id = ur.idUser
where ur.idRole = 4;

#Listar todos los departamentos y los países a los que pertenecen, incluyendo departamentos sin país
select d.`name` as department, c.`name` as country
from countries c
right join departments d on c.id = d.idCountry;

#Obtener todas las órdenes de compra y los productos asociados, incluyendo ordenes sin productos
select po.id as orderId, p.`name` as productName
from products p
right join purchaseOrderDetails pod on p.id = pod.idProduct
right join purchaseOrders po on pod.idPurchaseOrder = po.id;

############# Consultas CROSS JOIN #############

#Combinar todos los usuarios y todas las categorias, creando una lista de posibles combinaciones
select u.email, pc.`name` as category
from users u
cross join productsCategories pc;

