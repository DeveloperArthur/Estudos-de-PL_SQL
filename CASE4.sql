/*
Criar um bloco PL/SQL para preencher a coluna resultado conforme o seguinte:
Se o aluno obteve m�dia igual ou maior que 7.0 e suas faltas n�o ultrapassarem 25%
da carga hor�ria da disciplina o resultado ser�: APROVADO.
Se o aluno obteve m�dia inferior a 7.0 e suas faltas n�o ultrapassarem 25% da carga
hor�ria da disciplina o resultado ser�: EXAME.
Para demais casos o resultado ser�: REPROVADO.
*/
BEGIN
    update aluno
    set aluno.RESULTADO = case
                          when media >= 7 and FALTAS/carga_hora <= 0.25 then
                          'APROVADO'
                          when media < 7 and FALTAS/carga_hora <= 0.25 then
                          'EXAME'
                          ELSE 'REPROVADO'
    end;
END;


