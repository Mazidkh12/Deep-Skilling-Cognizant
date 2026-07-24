SET SERVEROUTPUT ON;

DECLARE
    result BOOLEAN;
BEGIN
    result := HasSufficientBalance(1,500);

    IF result THEN
        DBMS_OUTPUT.PUT_LINE('Sufficient Balance');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');
    END IF;
END;
/