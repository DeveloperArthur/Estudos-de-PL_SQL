DECLARE
  V_ENTRADA NUMBER(10):=&NUMERO; 
BEGIN
  IF MOD (V_ENTRADA,2)=0 THEN
    DBMS_OUTPUT.PUT_LINE('O NUMERO EH PAR');
  ELSE
    DBMS_OUTPUT.PUT_LINE('O NUMERO EH IMPAR');
  END IF;
END;

