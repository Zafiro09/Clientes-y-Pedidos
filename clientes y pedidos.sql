INSERT INTO clientes (nombre, direccion, telefono)
VALUES('Camila Cabello', 'Suiza segundo pasaje casa numero 3', 289472618) ,
		('Andrea Razollini', 'Bremen calle dos casa numero 3', 526616356) ,
        ('Roberto Roman', 'Quinta normal calle ocho depto 345', 682668368) ,
        ('Miriam Arias', 'Honduras calle siete casa numero 57', 7927482638) ,
        ('Samira Taha', 'New State calle 5 casa numero 24', 792027659);

INSERT INTO pedidos (fecha, total, Clientes_id_cliente)
VALUES (now(), 30.000, 1),
		(now(), 25.000, 1),
        (now(), 20.000, 1),
        (now(), 20.000, 1),
        (now(), 20.000, 1),
        (now(), 40.000, 2),
        (now(), 10.000, 2),
        (now(), 10.000, 2),
        (now(), 10.000, 2),
        (now(), 50.000, 3),
        (now(), 30.000, 3),
        (now(), 30.000, 3),
		(now(), 50.000, 4),
        (now(), 20.000, 4);
        
SELECT clientes.*, pedidos.*
FROM clientes JOIN pedidos 
     ON clientes.id_cliente = pedidos.Clientes_id_cliente;
     
SELECT clientes.*, pedidos.*
FROM clientes JOIN pedidos
	ON clientes.id_cliente= pedidos.Clientes_id_cliente
WHERE clientes.id_cliente=3;

SELECT SUM(total), Clientes_id_cliente
FROM pedidos group by Clientes_id_cliente; 

DELETE FROM pedidos
WHERE id_pedido = 9;

DELETE FROM pedidos
WHERE id_pedido = 10;

DELETE FROM clientes
WHERE id_cliente = 5;

SELECT nombre, count(Clientes_id_cliente) AS total
FROM pedidos  JOIN clientes
ON Clientes_id_cliente= id_cliente
group by Clientes_id_cliente
order by total DESC
LIMIT 3;


