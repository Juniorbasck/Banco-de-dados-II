create table conta(
	    id integer primary key,
	    cliente varchar(255) not null,
	    saldo numeric(15,2) default 0 
);

insert into conta(id,cliente,saldo)
  values (1,'JOAO',1000),
  (2,'PEDRO',15000),
  (3,'MARIO',450),
  (4,'JOAQUIM',40000);

select * from conta;

--usario 1
begin;
INSERT INTO conta VALUES (5,'Rafael', 300);
SELECT * from conta;
end; 

select * from conta; 

begin;
INSERT INTO conta VALUES (6,'Rafael', 100);
SELECT * from conta;

SAVEPOINT s1;

UPDATE conta SET cliente = 'Rafel Niani' WHERE d = 1;

ROLLBACK s1;

--usuaio1

select * from conta;
 --------------------------------------------------------------------------------------
 
 SELECT * FROM CONTA; 
 
 --usario 1 
 begin; 
 INSERT INTO conta VALUES (7, 'Silvana', 500);
 COMMIT;
 
 
 begin;
 INSERT INTO conta values (8,'Douglas',1000);
 select * from conta;
 commit; 
 
 select * from conta;
 
 
 
 