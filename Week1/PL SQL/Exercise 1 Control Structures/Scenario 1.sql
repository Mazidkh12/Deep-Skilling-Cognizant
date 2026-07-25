SET SERVEROUTPUT ON;

DECLARE

    CURSOR customer_cursor IS
        SELECT CustomerID, Age
        FROM Customers;

BEGIN

    FOR customer_record IN customer_cursor LOOP

        IF customer_record.Age > 60 THEN

            UPDATE Loans
            SET InterestRate = InterestRate - 1
            WHERE CustomerID = customer_record.CustomerID;

            DBMS_OUTPUT.PUT_LINE(
                'Discount applied for Customer ID : '
                || customer_record.CustomerID
            );

        END IF;

    END LOOP;

    COMMIT;

END;
/