CREATE OR REPLACE FUNCTION HasSufficientBalance(
    p_accountId NUMBER,
    p_amount NUMBER
)
RETURN BOOLEAN
IS
    v_balance NUMBER;
BEGIN
    SELECT Balance
    INTO v_balance
    FROM Accounts
    WHERE AccountID = p_accountId;

    IF v_balance >= p_amount THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
/

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