use project_dev_bd;

############# Subconsultas con IN #############

/*
Obtener las personas que vivan en una ciudad específica. Se usara el nombre de la
ciudad para filtrar las personas que vivan en esa ciudad
*/
SELECT firstName, middleName, paternalSurname, maternalSurname
FROM people
WHERE id IN (SELECT idPerson FROM peopleCity
WHERE idCity IN (SELECT id FROM cities WHERE `name` = 'Mocoa'));

#Obtener los productos que pertenezcan a una categoría específica
SELECT `name` AS productName, `description`
FROM products
WHERE idCategory IN (SELECT id FROM productsCategories WHERE `name` = 'Mecato');

############# Subconsultas con EXISTS #############

#Obtener los departamentos que tienen al menos una ciudad registrada
SELECT `name` AS department
FROM departments d
WHERE EXISTS (SELECT 1 FROM cities c WHERE c.idDepartment = d.id);

#Obtener las órdenes de compra que incluyen al menos un producto
SELECT id AS purchaseOrderId, orderDate, total
FROM purchaseOrders po
WHERE EXISTS (SELECT 1 FROM purchaseOrderDetails pod
WHERE pod.idPurchaseOrder = po.id);

############# Subconsultas con ANY y ALL #############

/*
Obtener los productos cuyo precio sea mayor que el precio de
cualquier producto del proveedor con idSupplier = 1
*/
SELECT `name` AS productName, unitPrice
FROM products
WHERE unitPrice > ANY (SELECT unitPrice FROM products WHERE idSupplier = 1);

/*
Obtener las órdenes de compra cuyo total sea mayor que el total de todas
las órdenes de compra del proveedor con idSupplier = 2
*/
SELECT id AS purchaseOrderID, total
FROM purchaseOrders
WHERE total > ALL (SELECT total FROM purchaseOrders WHERE idSupplier = 3);
