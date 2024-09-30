use project_dev_bd;

#Traer todo de la entidad categoria.
select * from category;

#Mostrar todos los productos con su respectiva categoría y proveedor.
select product.product, category.category, supplierType.`type`, supplier.`names`,
supplier.paternalSurname, supplier.companyName
from product, category, supplier, supplierType
where product.idCategory = category.idCategory and product.idSupplier = supplier.idSupplier
and supplier.idSupplierType = supplierType.idSupplierType;

#Obtener las órdenes de compra realizadas en un rango de fechas.
select purchaseOrder.idpurchaseOrder, purchaseOrder.idSupplier, purchaseOrder.orderDate,
purchaseOrderStatus.`status`, purchaseOrder.total
from purchaseOrder, purchaseOrderStatus
where purchaseOrder.idStatus = purchaseOrderStatus.idPurchaseOrderStatus and
orderDate between "2024-09-01" and "2024-09-30";

#Listar los productos con un stock bajo (menor al stock mínimo).
select product, currentStock, minimumStock
from product
where currentStock < minimumStock;

#Obtener los proveedores de un país específico.
select supplierType.`type`, supplier.`names`, supplier.paternalSurname,
supplier.companyName, city.city, country.country
from supplierType, supplier, country, city, department, supplierCity
where supplierCity.idSupplier = supplier.idSupplier and supplierCity.idCity = city.idCity
and city.idDepartment = department.idDepartment and department.idCountry = country.idCountry 
and supplier.idSupplierType = supplierType.idSupplierType and country.country = "Colombia";

#Detallar los productos de una orden de compra específica.
select purchaseOrderDetail.idPurchaseOrder, product.product, 
purchaseOrderDetail.quantity, purchaseOrderDetail.unitPrice
from purchaseOrderDetail, product
where purchaseOrderDetail.idProduct = product.idProduct
and purchaseOrderDetail.idPurchaseOrder = 1;