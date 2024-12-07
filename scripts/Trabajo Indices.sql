USE project_dev_bd;

### TRABAJO INDICES ###

### INDICE CLUSTERED (AGRUPADO) ###

### INDICE NON-CLUSTERED (NO AGRUPADO) ###

# listar todas las ordenes de compra y el estado de cada una, incluyendo ordenes sin estado

CREATE INDEX idx_idStatus ON purchaseOrders(idStatus);

SELECT po.id AS purchaseOrderId, po.orderDate, pos.`status`
FROM purchaseOrders po
LEFT JOIN purchaseOrderStatus pos ON po.idStatus = pos.id;

# Traer todos los campos del registro donde la ciudad sea Mocoa

CREATE INDEX idx_name ON cities(`name`);

EXPLAIN SELECT * FROM cities WHERE `name` = 'Mocoa';

### INDICE UNIQUE (UNICO) ###

# Traer el nombre completo de una persona a partir de un numero de documento especifico

CREATE UNIQUE INDEX document ON people(document);

SELECT CONCAT_WS(' ', firstName, middleName, paternalSurname, maternalSurname) AS fullName
FROM people WHERE document = '27358885';

# Traer todos los campos de un usuario a partir de un correo electronico especifico

CREATE UNIQUE INDEX email ON users(email);

SELECT * FROM users WHERE email = 'juan.perez@gmail.com';

### INDICE COMPUESTO ###

# Mostrar los productos comprados y el valor total de la compra por cada producto

CREATE INDEX idx_quantity_unitPrice ON purchaseOrderDetails(quantity, unitPrice);

SELECT pod.idProduct, SUM(pod.quantity * pod.unitPrice) AS totalValue
FROM purchaseOrderDetails pod
GROUP BY pod.idProduct
HAVING SUM(pod.quantity * pod.unitPrice) > 100000;
