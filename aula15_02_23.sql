CREATE TABLE obra(
	id_obra numeric not null,
	codigo numeric, 
	descricao varchar(20), 
	CONSTRAINT pk_obra primary key (id_obra)
);

CREATE TABLE maquina(
	id_maquina numeric not null, 
	codigo numeric,
	marca varchar,
	CONSTRAINT pk_maquina primary key (id_maquina)
);

CREATE TABLE usa(
	id_usa numeric not null, 
	id_obra NUMERIC REFERENCES obra (id_obra), 
	id_maquina numeric REFERENCES maquina (id_maquina),
	data_do_uso date, 
	CONSTRAINT pk_usa primary key (id_usa)
);

create sequence sid_obra;
create sequence sid_maquina;
create sequence sid_usa;


insert into obra VALUES (nextval('sid_obra'), '22', 'descricao1');

insert into maquina VALUES (nextval('sid_maquina'), '22', 'descricao1');
insert into maquina VALUES (nextval('sid_maquina'), '50', 'descricao2');


insert into usa VALUES (nextval('sid_usa'), 1, 1);
(nextval('sid_usa'), currval('sid_obra'), currval('sid_maquina');



Select * from maquina;
 
 
 
SELECT inst_nome as Nome FROM instrutor
UNION
SELECT alu_nome as Nome FROM aluno;
 
select inst_nome as nome from instrutor
INTERSECT
select alu_nome as nome from aluno;
/*------------------------------------------------------------------*/ 
select * from instrutor;
 
select codigo_cliente as nome_cliente as nome from cliente
union 
select codigo_vendedor as nom_vendedor as nome from vendor; 
 
select descricao from produto
INTERSECT