use project_dev_bd;

select concat(firstName, " ", middleName, " ", paternalSurname, " ", maternalsurname)
as fullName
from people;

select concat_ws(" ", firstName, middleName, paternalSurname, maternalsurname)
as fullName,
length(phone) as phoneLength,
upper(firstName) as `firstNameUpper`,
lower(paternalSurname) as `paternalSurnameLower`
from people;

select substring(productsCategories.`name`, 1, 4) as categorySubstring
from productsCategories;

select count(*) as totalProducts from products
where products.unitPrice > 5000;

select pod.idPurchaseOrder, sum(pod.quantity * pod.unitPrice) as totalValue
from purchaseOrderDetails pod
group by pod.idPurchaseOrder;

select pod.idProduct, sum(pod.quantity * pod.unitPrice) as totalValue
from purchaseOrderDetails pod
group by pod.idProduct
having sum(pod.quantity * pod.unitPrice) > 100000;
