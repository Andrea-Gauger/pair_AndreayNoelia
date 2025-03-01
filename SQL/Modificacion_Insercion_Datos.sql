USE tienda_zapatillas;

SELECT *
	FROM zapatillas;
    
ALTER TABLE zapatillas
	ADD COLUMN marca VARCHAR(45) NOT NULL;
    
ALTER TABLE zapatillas
	ADD COLUMN talla INT NOT NULL;
    
ALTER TABLE empleados
	MODIFY salario FLOAT;

SELECT *
	FROM empleados;
    
ALTER TABLE clientes
	DROP COLUMN pais;
    
SELECT *
	FROM clientes;
    
ALTER TABLE facturas
	ADD COLUMN total FLOAT;
    
SELECT *
	FROM facturas;
    
INSERT INTO zapatillas
	VALUES (1,'XQYUN', 'Negro', 'Nike', '42');
    
INSERT INTO zapatillas(id_zapatilla, modelo, color, marca, talla)
	VALUES (2, 'UOPMN', 'Rosas', 'Nike', 39),
		(3, 'OPNYT', 'Verdes', 'Adidas', 35);
    
SELECT *
	FROM zapatillas;
    
INSERT INTO empleados
	VALUES (1, 'Laura', 'Alcobendas', 25.987, '2010-09-03'),
		(2, 'Maria', 'Sevilla', NULL, '2001-04-11'),
		(3, 'Ester', 'Oviedo', 30.165-98, '2000-11-29');
        
UPDATE empleados
	SET salario = 30165.98
    WHERE id_empleado = 3;

UPDATE empleados
	SET salario = 25987
    WHERE id_empleado = 1;

SELECT *
	FROM empleados;
    
INSERT INTO clientes
	VALUES (1, 'Monica', '1234567289', 'monica@email.com', 'Calle Felicidad', 'Móstoles', 'Madrid', '28176'),
		(2, 'Lorena', '289345678', 'lorena@email.com', 'Calle Alegría', 'Barcelona', 'Barcelona', '12346'),
        (3, 'Carmen', '298463759', 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', '23456');
        
SELECT *
	FROM clientes; 
    
INSERT INTO facturas
	VALUES (1, '123', '2001-12_11', 1, 2, 1, 54.98);

SELECT *
	FROM facturas; 
 
 INSERT INTO facturas
	VALUES (2, '1234', '2005-05-23', 1, 1, 3, 89.91),
    (3, '12345', '2015-09-18', 2, 3, 3, 76.23);
    
SELECT *
	FROM facturas; 
    
UPDATE zapatillas
	SET color = 'amarillas'
    WHERE id_zapatilla = 2;