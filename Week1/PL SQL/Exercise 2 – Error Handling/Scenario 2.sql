CREATE OR REPLACE PROCEDURE UpdateSalary(

    p_employeeId NUMBER,
    p_percentage NUMBER

)
IS

    v_count NUMBER;

BEGIN

    SELECT COUNT(*)

    INTO v_count

    FROM Employees

    WHERE EmployeeID = p_employeeId;

    IF v_count = 0 THEN

        RAISE_APPLICATION_ERROR(-20002,'Employee Not Found');

    END IF;

    UPDATE Employees

    SET Salary = Salary + (Salary*p_percentage/100)

    WHERE EmployeeID = p_employeeId;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Salary Updated');

EXCEPTION

    WHEN OTHERS THEN

        ROLLBACK;

        DBMS_OUTPUT.PUT_LINE(SQLERRM);

END;
/

BEGIN

UpdateSalary(1,10);

END;
/