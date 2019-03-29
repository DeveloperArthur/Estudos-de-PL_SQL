/*
ACESSAR TABELA FORNECEDOR, CUJO C�DIGO DEVER� SER INFORMADO NA TELA E 
ALTERAR O VALOR DA COMISS�O, NAS CONDI��ES ABAIXO. 
Fazer usando IF-THEN-ELSE e fazer usando CASE. 

Fazer a seguinte atualiza��o na comiss�o:
Se as vendas forem maiores que 6000 a comiss�o dever� ser 15% do valor das vendas
Caso contr�rio  a comiss�o dever� ser 5% do valor das vendas
No final, dar uma mensagem do valor calculado da comiss�o.
*/

DECLARE
    v_numero number(1):=&NUMERO;
    v_vendas FORNECEDOR.VALORVENDAS%type;
BEGIN
    update fornecedor
    set FORNECEDOR.VALORCOMISSAO = case
                                   when valorvendas > 6000 then
                                   FORNECEDOR.VALORVENDAS*0.15
                                   when valorvendas <= 6000 then
                                   FORNECEDOR.VALORVENDAS*0.05
    end
    where numero = v_numero;
    dbms_output.put_line('Valor da comissao atualizado para: '||v_vendas);
END;