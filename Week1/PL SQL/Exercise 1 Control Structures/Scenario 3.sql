SET SERVEROUTPUT ON;

DECLARE

    CURSOR loan_cursor IS

        SELECT CustomerID,
               EndDate

        FROM Loans

        WHERE EndDate BETWEEN SYSDATE
                          AND SYSDATE + 30;

BEGIN

    FOR loan_record IN loan_cursor LOOP

        DBMS_OUTPUT.PUT_LINE(

            'Reminder : Loan due for Customer ID '

            || loan_record.CustomerID

            || ' on '

            || loan_record.EndDate

        );

    END LOOP;

END;
/