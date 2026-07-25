CREATE OR REPLACE TRIGGER CheckTransactionRules
BEFORE INSERT
ON Transactions
FOR EACH ROW
DECLARE
    v_balance NUMBER;
BEGIN

    SELECT Balance
    INTO v_balance
    FROM Accounts
    WHERE AccountID = :NEW.AccountID;

    IF :NEW.TransactionType = 'Deposit'
       AND :NEW.Amount <= 0 THEN

        RAISE_APPLICATION_ERROR(
            -20010,
            'Deposit amount must be positive'
        );

    END IF;

    IF :NEW.TransactionType = 'Withdrawal'
       AND :NEW.Amount > v_balance THEN

        RAISE_APPLICATION_ERROR(
            -20011,
            'Insufficient Balance'
        );

    END IF;

END;
/

INSERT INTO Transactions
VALUES(
    4,
    1,
    SYSDATE,
    300,
    'Deposit'
);

INSERT INTO Transactions
VALUES(
    5,
    1,
    SYSDATE,
    50000,
    'Withdrawal'
);