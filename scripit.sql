CREATE TABLE CLIENTE(
	nome VARCHAR(50) NOT NULL,
	codCliente INTEGER NOT NULL,
	CONSTRAINT pk_cliente PRIMARY KEY(codCliente)
);

CREATE TABLE telefoneCliente(
	codCliente integer references cliente (codCliente) ON DELETE CASCADE ON UPDATE CASCADE, 
	telefone CHARACTER varying (13),
	PRIMARY KEY (codCliente,telefone)
);

CREATE TABLE FUNCIONARIO(
	nome VARCHAR(50),
	rg integer, 
	rua VARCHAR(30),
	cep integer, 
	bairro VARCHAR(30),
	CONSTRAINT pk_funcionario PRIMARY KEY (rg)
);

CREATE TABLE PEDIDO(
	codPedido INTEGER NOT NULL, 
	pedidoTotal INTEGER NOT NULL, 
	data date NOT NULL, 
	codCliente INTEGER NOT NULL, 
	rg INTEGER NOT NULL,
	CONSTRAINT pk_pedido PRIMARY KEY (codPedido),
	CONSTRAINT fk_codCliente FOREIGN KEY (codCliente) REFERENCES cliente, 
	CONSTRAINT fk_rg FOREIGN KEY (rg) REFERENCES funcionario
);


CREATE TABLE TENIS(
	modelo varchar(15),
	valor integer, 
	tamanho INTEGER,
	codTenis INTEGER,
	CONSTRAINT pk_tenis PRIMARY KEY (codTenis)
);

CREATE TABLE pedidoTenis(
	codPedido INTEGER NOT NULL,
	codTenis INTEGER NOT NULL, 
	CONSTRAINT pk_pedidoTenis PRIMARY KEY (codPedido, codTenis),
	CONSTRAINT fk_pedido FOREIGN KEY (codPedido) REFERENCES pedido, 
	CONSTRAINT fk_tenis FOREIGN KEY (codTenis) REFERENCES tenis
);


SELECT * FROM cliente;

INSERT INTO cliente values('carlos sumare', 1);
INSERT INTO cliente values('antonio nunes', 2);
INSERT INTO cliente values('antonio tablet', 3);
INSERT INTO cliente values('denis palmeira', 4);
INSERT INTO cliente values('tuta davila', 5);

INSERT INTO telefoneCliente values(1,00000000001);
INSERT INTO telefoneCliente values(2,00000000002);
INSERT INTO telefoneCliente values(3,00000000003);
INSERT INTO telefoneCliente values(4,00000000004);
INSERT INTO telefoneCliente values(5,00000000005);


INSERT INTO Funcionario values('Marcos Assunção', 111, 'rua dos bobo', 09871234, 'toboão');
INSERT INTO Funcionario values('Arnaldo antunes', 222, 'jacarezinho', 54679787, 'Santana');
INSERT INTO Funcionario values('Yuri Vacilão', 333, 'Sacomã', 03530987, 'Parque Alexandre');
INSERT INTO Funcionario values('Fred Salsicha', 444, 'Vinicius de moraes', 34051223, 'Angelical');
INSERT INTO Funcionario values('Orlando Thomas', 555, 'rua amor', 32540935, 'Pontual');

INSERT INTO PEDIDO values(1, 44, cano baixo)
INSERT INTO PEDIDO values(2, 38, cano baixo)
INSERT INTO PEDIDO values(3, 46, cano alto)
INSERT INTO PEDIDO values(4, 40, cano alto)
INSERT INTO PEDIDO values(5, 33, cano baixo)


INSERT INTO PEDIDO(1, ,29/12/2012, 1, 111);
INSERT INTO PEDIDO(2, ,11/11/2011, 2, 222);
INSERT INTO PEDIDO(3, ,14/11/2011, 3, 333);
INSERT INTO PEDIDO(4, ,31/12/2020, 4, 444);
INSERT INTO PEDIDO(5, ,30/02/2004, 5, 555);

INSERT INTO PEDIDO TENIS("Cano baixo", 50, 35, 1);
INSERT INTO PEDIDO TENIS("Cano alto", 100, 39, 2);
INSERT INTO PEDIDO TENIS("Cano baixo", 200, 38, 3);
INSERT INTO PEDIDO TENIS("Cano alto", 70, 41, 1);
INSERT INTO PEDIDO TENIS("Cano baixo", 400, 45, 5);


ALTER TABLE PEDIDO DROP CONSTRAINT pk_pedido;

ALTER TABLE PEDIDO ADD CONSTRAINT pk_pedido PRIMARY KEY (codpedido);






