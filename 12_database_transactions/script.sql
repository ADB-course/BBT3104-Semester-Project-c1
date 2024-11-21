START TRANSACTION;

-- TRANSACTION 1: Customer Makes a Payment via MPesa
-- Step 1: Insert a new payment record
INSERT INTO Payment (Payment_ID, customerID, Payment_Date)
VALUES (101, 201, '2024-11-21');

-- Step 2: Record the MPesa transaction for the payment
INSERT INTO MPesa (Transaction_ID, Customer_ID, Transaction_Amount)
VALUES (301, 201, 500.00);

-- Step 3: Update the customer's feedback based on the payment
INSERT INTO Customer_Feedback (customerID, Feedback)
VALUES (201, 'Payment made successfully via MPesa.');

-- TRANSACTION 2: Sending Money (Debit from sender, Credit to receiver)
-- Deduct amount from sender
UPDATE Accounts
SET balance = balance - 500
WHERE account_id = 1 AND balance >= 500;

-- Add amount to receiver
UPDATE Accounts
SET balance = balance + 500
WHERE account_id = 2;

-- Log the sender's transaction
INSERT INTO Transactions (account_id, transaction_type, amount, transaction_status)
VALUES (1, 'Send Money', 500, 'Success');

-- Log the receiver's transaction
INSERT INTO Transactions (account_id, transaction_type, amount, transaction_status)
VALUES (2, 'Receive Money', 500, 'Success');

-- TRANSACTION 3: MPesa Transaction Reversal
-- Step 1: Mark MPesa transaction as reversed
UPDATE MPesa
SET Transaction_Amount = 0
WHERE Transaction_ID = 901;

-- Step 2: Delete corresponding payment record
DELETE FROM Payment
WHERE Payment_ID = 1001;

-- TRANSACTION 4: Withdraw Cash (Debit from account)
-- Check if account has sufficient balance
UPDATE Accounts
SET balance = balance - 300
WHERE account_id = 1 AND balance >= 300;

-- Log the withdrawal transaction
INSERT INTO Transactions (account_id, transaction_type, amount, transaction_status)
VALUES (1, 'Withdraw Cash', 300, 'Success');

-- TRANSACTION 5: Buy Airtime (Debit from account)
-- Deduct from user account for airtime purchase
UPDATE Accounts
SET balance = balance - 100
WHERE account_id = 1 AND balance >= 100;

-- Log the airtime purchase
INSERT INTO Transactions (account_id, transaction_type, amount, transaction_status)
VALUES (1, 'Buy Airtime', 100, 'Success');

-- If all steps are successful, commit the transaction
COMMIT;

-- If any step fails, rollback all changes
-- ROLLBACK;

START TRANSACTION;

-- Step-by-step transaction code

-- Check for success condition after each operation
IF <error_condition> THEN
    ROLLBACK;
    -- You can also log or notify the error condition if necessary
ELSE
    COMMIT;
END IF;
