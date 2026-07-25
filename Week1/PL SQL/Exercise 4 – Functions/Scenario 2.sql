CREATE OR REPLACE FUNCTION CalculateMonthlyInstallment(
    p_loanAmount NUMBER,
    p_interestRate NUMBER,
    p_years NUMBER
)
RETURN NUMBER
IS
    v_monthly NUMBER;
BEGIN
    v_monthly :=
        (p_loanAmount +
        (p_loanAmount * p_interestRate * p_years / 100))
        / (p_years * 12);

    RETURN v_monthly;
END;
/

SELECT CalculateMonthlyInstallment(5000,5,5)
AS MonthlyInstallment
FROM Dual;