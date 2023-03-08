create or replace function f_olamundo() returns text as
$$
begin
--Função que mostra a frase Olá Mundo!;
return 'Olá Mundo!';
end;
$$
language PLPGSQL;

select f_olamundo();


CREATE OR REPLACE FUNCTION f_SomaTresPar(Valor1 numeric,
										 Valor2 integer, 
										 Valor3 Numeric) 
RETURNS numeric
AS
$$
DECLARE
Resultado numeric;
BEGIN
	resultado = Valor1+Valor2+Valor3;
	RETURN resultado;
END;
$$
LANGUAGE plpgsql;
Uso: select f_SomaTresPar(2.2,4,6.3)

---------------------------------------------------------

CREATE OR REPLACE FUNCTION f_SomaSelect (num1 numeric, 
										 num2 numeric,
										 op varchar)  
RETURNS NUMERIC
AS
$$
DECLARE resultado numeric;
BEGIN
	if(op='soma')then
	resultado = num1 + num2;   
	elsif(op='sub')then
	resultado = num1 - num2;   
	elsif(op='multi')then
	resultado = num1 * num2;
	elsif(op='div')then
	resultado = num1 / num2;
	end if; 
	return resultado;
end;
$$
language plpgsql;

select f_SomaSelect(1,2,'soma');



--------------------------------------

--exemplo 2







