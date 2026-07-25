CREATE OR REPLACE PROCEDURE AddNewCustomer(

    p_id NUMBER,
    p_name VARCHAR2,
    p_dob DATE,
    p_balance NUMBER

)
IS

    v_count NUMBER;

BEGIN

    SELECT COUNT(*)

    INTO v_count

    FROM Customers

    WHERE CustomerID = p_id;

    IF v_count > 0 THEN

        RAISE_APPLICATION_ERROR(-20003,'Customer Already Exists');

    END IF;

    INSERT INTO Customers(

        CustomerID,
        Name,
        DOB,
        Balance,
        LastModified

    )

    VALUES(

        p_id,
        p_name,
        p_dob,
        p_balance,
        SYSDATE

    );

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Customer Added');

EXCEPTION

    WHEN OTHERS THEN

        ROLLBACK;

        DBMS_OUTPUT.PUT_LINE(SQLERRM);

END;
/

BEGIN

AddNewCustomer(

3,
'Rahul',
TO_DATE('1998-05-12','YYYY-MM-DD'),
5000

);

END;
/