--usario 2 
SELECT * from conta;

BEGIN;
SELECT * from conta; 
UPDATE CONTA VALUES (5,'Rafael', 300);
end; 
ROLLBACK;


--usario 2
begin; 
INSERT
select * from conta; 


--usario2 
begin;
select * from conta; 
UPDATE conta set saldo = 200 WHERE id = 1;
select * from conta;

----------------------------------------------------------------------------------------
--usario2
begin;
SELECT * FROM CONTA;

end; 
begin;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
select * from conta; 
end;


select * from conta; 




