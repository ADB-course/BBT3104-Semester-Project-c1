-- Write your SQL code here
-- Customer Entity
DELIMITER //
CREATE FUNCTION GetCustomerPersonalInfo(p_customerID INT) 
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE v_Personal_Info VARCHAR(255);
    SELECT Personal_Info INTO v_Personal_Info
    FROM Customer
    WHERE customerID = p_customerID;
    RETURN v_Personal_Info;
END //
DELIMITER ;

-- Employee Entity
DELIMITER //
CREATE FUNCTION GetEmployeePersonalInfo(p_employee_ID INT) 
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE v_Personal_Info VARCHAR(255);
    SELECT Personal_Info INTO v_Personal_Info
    FROM Employee
    WHERE employee_ID = p_employee_ID;
    RETURN v_Personal_Info;
END //
DELIMITER ;

-- Shareholder Entity
DELIMITER //
CREATE FUNCTION GetShareholderFinancialData(p_Shareholder_ID INT) 
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE v_Financial_Data VARCHAR(255);
    SELECT Financial_Data INTO v_Financial_Data
    FROM Shareholder
    WHERE Shareholder_ID = p_Shareholder_ID;
    RETURN v_Financial_Data;
END //
DELIMITER ;

-- Calls Entity
DELIMITER //
CREATE FUNCTION GetCallDate(p_Call_ID INT) 
RETURNS DATE
DETERMINISTIC
BEGIN
    DECLARE v_Date DATE;
    SELECT Date INTO v_Date
    FROM Calls
    WHERE Call_ID = p_Call_ID;
    RETURN v_Date;
END //
DELIMITER ;

-- MPesa Entity
DELIMITER //
CREATE FUNCTION GetMPesaTransactionAmount(p_Transaction_ID INT) 
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE v_Transaction_Amount DECIMAL(10, 2);
    SELECT Transaction_Amount INTO v_Transaction_Amount
    FROM MPesa
    WHERE Transaction_ID = p_Transaction_ID;
    RETURN v_Transaction_Amount;
END //
DELIMITER ;

-- Support Entity
DELIMITER //
CREATE FUNCTION GetSupportTicketStatus(p_Ticket_ID INT) 
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE v_Status VARCHAR(50);
    SELECT Status INTO v_Status
    FROM Support
    WHERE Ticket_ID = p_Ticket_ID;
    RETURN v_Status;
END //
DELIMITER ;

-- SimCard Entity
DELIMITER //
CREATE FUNCTION GetSimCardActivationDate(p_SimCard_No INT) 
RETURNS DATE
DETERMINISTIC
BEGIN
    DECLARE v_Activation_Date DATE;
    SELECT Activation_Date INTO v_Activation_Date
    FROM SimCard
    WHERE SimCard_No = p_SimCard_No;
    RETURN v_Activation_Date;
END //
DELIMITER ;

-- Income Entity
DELIMITER //
CREATE FUNCTION GetNetIncome(p_Expenses DECIMAL(10, 2)) 
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE v_Net_Income DECIMAL(10, 2);
    SELECT Net_Income INTO v_Net_Income
    FROM Income
    WHERE Expenses = p_Expenses;
    RETURN v_Net_Income;
END //
DELIMITER ;

-- Payment Entity
DELIMITER //
CREATE FUNCTION GetPaymentDate(p_Payment_ID INT) 
RETURNS DATE
DETERMINISTIC
BEGIN
    DECLARE v_Payment_Date DATE;
    SELECT Payment_Date INTO v_Payment_Date
    FROM Payment
    WHERE Payment_ID = p_Payment_ID;
    RETURN v_Payment_Date;
END //
DELIMITER ;