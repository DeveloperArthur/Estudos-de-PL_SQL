/*1 - Fa�a um bloco PL/SQL onde informado o n�mero do m�s 
retorne o m�s em seu formato literal.
Ex: se o usu�rio digitar 3, retorna Mar�o, 
se o usu�rio digitar 5 retorna maio.*/
set serveroutput on
DECLARE
  type meses is varray(12) of varchar(10);
  v_meses meses;
BEGIN
  v_meses:=meses('JANEIRO', 'FEVEREIRO', 'MAR�O', 
                 'ABRIL', 'MAIO', 'JUNHO', 'JULHO', 
                 'AGOSTO', 'SETEMBRO', 'OUTUBRO', 
                 'NOVEMBRO', 'DEZEMBRO');
  dbms_output.put_line(v_meses(&mes));
END;