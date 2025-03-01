-- ANDREA TIENES QUE ABRIR BD NORTHWIND DESDE CARPETA DEL PAIR ABRIRLA PARA EJECUTARLA Y QUE SE GUARDE

USE northwind;

SELECT *
	FROM employees;

SELECT EmployeeID, Lastname, FirstName
	FROM employees;
    
-- Conociendo los productos más baratos:
-- identificar aquellos productos (tabla products) cuyos precios por unidad (UnitPrice) oscilen entre 0 y 5 dólares, 
-- los productos más asequibles.

SELECT ProductID, ProductName, UnitPrice, UnitsInStock
	FROM products
	WHERE UnitPrice BETWEEN 0 AND 5;

-- Conociendo los productos que no tienen precio: Para comprobar si los datos en la tabla products están correctos,
--  nos interesa seleccionar aquellos productos que no tengan precio, porque lo hayan dejado vacío al introducir los datos (NULL).
SELECT *
	FROM products
	WHERE UnitPrice IS NULL; -- resultado ninguno

-- Comparando productos: Ahora obtén los datos de aquellos productos con un precio menor a 15 dólares,
 -- pero sólo aquellos que tienen un ID menor que 20 (para tener una muestra significativa
 -- pero no tener que ver todos los productos existentes).
SELECT *
	FROM products
	WHERE UnitPrice < 15 AND ProductID < 20;
    
-- Cambiando de operadores: Ahora vamos a hacer la misma consulta que en ejercicio anterior, 
-- pero invirtiendo el uso de los operadores y queremos saber aquellos que tengan un precio superior 
-- a 15 dólares y un ID superior a 20..
SELECT *
	FROM products
	WHERE NOT (UnitPrice < 15 AND ProductID < 20);
    
-- 9
-- Conociendo los países a los que vendemos: A Northwind le interesa conocer los datos de los países que hacen pedidos (orders) 
-- para focalizar el negocio en esas regiones y al mismo tiempo crear campañas de marketing para conseguir mejorar en las otras
-- regiones. Realiza una consulta para obtener ese dato.

SELECT ShipCountry 
	FROM Orders;
   
-- 10. Conociendo el tipo de productos que vendemos en Northwind: Crea una consulta que muestre los primeros 10 productos según su ID 
-- y que nos indique el nombre de dichos productos y sus precios.

-- 11
-- ordenando los resultados realiza la misma consulta pero que nos muestre los últimos 10 productos según su ID de manera descendiente.




-- 12
-- Que pedidos tenemos en nuestra BBDD:
-- ha habido algo de descontrol en la empresa a la hora de controlar los pedidos. Nos interesa conocer los distintos pedidos que hemos tenido
-- MOSTRAR los valores únicos de ID en la tabla order_details).

