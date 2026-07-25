CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(

    p_department Employees.Department%TYPE,
    p_bonus NUMBER

)
IS
BEGIN

    UPDATE Employees
    SET Salary = Salary + (Salary * p_bonus / 100)
    WHERE Department = p_department;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Bonus Updated Successfully');

END;
/

BEGIN
    UpdateEmployeeBonus('IT',10);
END;
/

SELECT * FROM Employees;