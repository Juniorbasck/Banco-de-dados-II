
CREATE TABLE marinheiros (id_marin integer PRIMARY KEY, nome_marin VARCHAR (40), avaliacao integer, idade integer);

INSERT INTO marinheiros VALUES (1,'Capitão Gancho', 8, 57),(2,'Alma Negra', 9, 37),
			(3,'Jack Sparrow', 5, 35),(4,'Marujo Frajuto', 3, 42),(5,'Barba Branca', 10, 67);

--INSERT INTO marinheiros VALUES (6,'Willy caolho', 8, 59)
CREATE TABLE barcos (id_barco INTEGER PRIMARY KEY, nome_barco VARCHAR (40), cor VARCHAR(10));

INSERT INTO barcos VALUES (1, 'Pérola Negra', 'Preto'), (2, 'Azul do Mar', 'Azul'),(3, 'Catraca voadora', 'Verde')
			,(4, 'Sigano do Mar', 'Marron'),(5, 'Jóia do Oceano', 'Preto'),(6, 'Marinheiros Gayvotenses', 'Rosa');

CREATE TABLE reservas (id_marin INTEGER REFERENCES marinheiros (id_marin), id_barco INTEGER REFERENCES barcos (id_barco), data_res date,
			PRIMARY KEY (id_marin,id_barco,data_res));

INSERT INTO reservas values (1,2,'01/01/2013'),(2,4,'07/04/2013'),(3,1,'05/06/2013'),(2,2,'07/08/2013'),(4,2,'05/03/2013'),
(5,6,'24/10/2013'),(3,5,'08/02/2013'),(2,4,'12/08/2013'),(5,5,'03/04/2013'),(3,5,'07/04/2013'),(1,6,'25/09/2013');

SELECT * FROM marinheiros;
SELECT * FROM barcos;
SELECT * FROM reservas;


--EX1
SELECT nome_marin FROM marinheiros
	 WHERE nome_marin LIKE '%a%' OR nome_marin LIKE 'r_';

--EX2 
SELECT cor, COUNT(cor) FROM barcos
	GROUP BY cor;
	
--3
SELECT nome_barco b, data_res r FROM barcos b
	INNER JOIN reservas r 
 	on b.id_barco = r.id_barco
	ORDER BY data_res;
	
--outra forma
SELECT nome_barco, data_res FROM barcos b
	INNER JOIN reservas r 
	ON b.id_barco = r.id_barco
	ORDER BY data_res;

--EX4
SELECT nome_marin, data_res r FROM marinheiros 
	INNER JOIN reservas r 
 	WHERE marinheiros LIKE '%i%' AND data_res > '05/05/2013';
	
--outra forma 
SELECT nome_marin, data_res FROM marinheiros m, reservas r
	WHERE m.id_marin = r.id_marin AND nome_marin lIKE '%i%'
	AND data_res > '05/05/2013';

--EX5
SELECT nome_marin, COUNT(data_res) FROM marinheiros m
	INNER JOIN reservas r
	ON m.id_marin = r.id_marin
	GROUP BY m.nome_marin;

--outra forma
SELECT nome_marin, COUNT(data_res) FROM marinheiros m, reserva r
	WHERE m.id_marin = m.id_marin
	GROUP BY m.nome_marin;
	
--6
SELECT nome_barco b, data_res r FROM barcos b
	INNER JOIN reservas r 
 	on b.id_barco = r.id_barco
	GROUP BY m.nome_marin
	HAVING COUNT(data_res) > 1;
	
--outra forma


--EX7
SELECT nome_marin, nome_barco FROM marinheiros m
	INNER JOIN reservas r 
	ON m.id_marin = r.id_marin
	INNER JOIN barcos b 
	ON b.id_barco = r.id_barco
	ORDER BY m.nome_marin;

--outra forma 
SELECT nome_marin, nome_barco FROM marinheiros m, reservas r, barcos b
	WHERE m.id_marin = r.id_marin AND r.id_barco = b.id_barco
	ORDER BY nome_marin;






