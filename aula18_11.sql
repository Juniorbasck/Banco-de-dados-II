CREATE TABLE CONTA(
	idConta integer,
	cliente VARCHAR (255) NOT NULL,
	saldo NUMERIC (15,2) default 0,
	CONSTRAINT pk_conta PRIMARY KEY (idConta)
);


INSERT INTO CONTA VALUES(1, 'JOÃO', 100),
						(2, 'PEDRO', 15000),
						(3, 'MARIO', 450),
						(4, 'JOAQUIM', 40000);

--bloco de transação 
--exemplo 1
begin;
	INSERT INTO CONTA VALUES(5, 'CARLOS', 2000);
	SELECT * FROM CONTA;
rollback; 

	SELECT * FROM CONTA; 
 
--Exemplo 2 
BEGIN
	UPDATE CONTA SET saldo = 120 WHERE idConta= 1;
	SELECT * FROM CONTA;
	savepoint sv1; 
	UPDATE CONTA SET saldo = -1000 WHERE idConta = 2;
	SELECT * FROM CONTA;
	ROLLBACK TO sv1;
	SELECT * FROM CONTA;
end;

--execicios 1
BEGIN  
	INSERT INTO CONTA VALUES (6, 'MARA', 5000);
    UPDATE CONTA SET saldo = 500 WHERE idConta = 6;
ROLLBACK;
SELECT * FROM CONTA;
--------------------------------------------------------------

--TRANSAÇÃO A
BEGIN
	UPDATE CONTA SET cliente = 'JOÃO II' WHERE idConta;
	commit 
------------------------------------------------------------------------
	
	
	