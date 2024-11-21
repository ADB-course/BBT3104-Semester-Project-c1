-- Customer Entity

DELIMITER // 
CREATE PROCEDURE InsertCustomer ( 
IN p_customerID INT, 
IN p_Personal_Info VARCHAR(255) ) 
BEGIN 
INSERT INTO Customer (customerID, Personal_Info) 
VALUES (p_customerID, p_Personal_Info); 
END // 
DELIMITER ;

-- Customer Feedback
DELIMITER // 
CREATE PROCEDURE InsertCustomerFeedback ( 
IN p_customerID INT, 
IN p_Feedback TEXT ) 
BEGIN 
INSERT INTO Customer_Feedback (customerID, Feedback) 
VALUES (p_customerID, p_Feedback); 
END // 
DELIMITER ;

-- Employee Entity
DELIMITER // 
CREATE PROCEDURE InsertEmployee ( 
IN p_employee_ID INT, 
IN p_Personal_Info VARCHAR(255) ) 
BEGIN 
INSERT INTO Employee (employee_ID, Personal_Info) 
VALUES (p_employee_ID, p_Personal_Info); 
END // 
DELIMITER ;

-- Employee Performance
DELIMITER // 
CREATE PROCEDURE InsertEmployeePerformance ( 
IN p_employee_ID INT, 
IN p_Performance_Data TEXT ) 
BEGIN 
INSERT INTO Employee_Performance (employee_ID, Performance_Data) 
VALUES (p_employee_ID, p_Performance_Data); 
END // 
DELIMITER ;

-- Shareholder Entity
DELIMITER // 
CREATE PROCEDURE InsertShareholder ( 
IN p_Shareholder_ID INT, 
IN p_Financial_Data VARCHAR(255) ) 
BEGIN 
INSERT INTO Shareholder (Shareholder_ID, Financial_Data) 
VALUES (p_Shareholder_ID, p_Financial_Data); 
END // 
DELIMITER ;

-- Shareholder Performance
DELIMITER // 
CREATE PROCEDURE InsertShareholder ( 
IN p_Shareholder_ID INT, 
IN p_Financial_Data VARCHAR(255) ) 
BEGIN 
INSERT INTO Shareholder (Shareholder_ID, Financial_Data) 
VALUES (p_Shareholder_ID, p_Financial_Data); 
END // 
DELIMITER ;

-- Calls Entity
DELIMITER // 
CREATE PROCEDURE InsertCall ( 
IN p_Call_ID INT, 
IN p_Date DATE, 
IN p_Caller_ID INT ) 
BEGIN 
INSERT INTO Calls (Call_ID, Date, Caller_ID) 
VALUES (p_Call_ID, p_Date, p_Caller_ID); 
END // 
DELIMITER ;

-- MPesa Entity
DELIMITER // 
CREATE PROCEDURE InsertMPesa ( 
IN p_Transaction_ID INT, 
IN p_Customer_ID INT, 
IN p_Transaction_Amount DECIMAL(10, 2) ) 
BEGIN 
INSERT INTO MPesa (Transaction_ID, Customer_ID, Transaction_Amount) VALUES (p_Transaction_ID, p_Customer_ID, p_Transaction_Amount); 
END // 
DELIMITER ;

-- Support Entity
DELIMITER // 
CREATE PROCEDURE InsertSupport ( 
IN p_Ticket_ID INT, 
IN p_Customer_ID INT, 
IN p_Status VARCHAR(50) ) 
BEGIN 
INSERT INTO Support (Ticket_ID, Customer_ID, Status) 
VALUES (p_Ticket_ID, p_Customer_ID, p_Status); 
END // 
DELIMITER ;

-- SimCard Entity
DELIMITER // 
CREATE PROCEDURE InsertSimCard ( 
IN p_SimCard_No INT, 
IN p_Activation_Date DATE, 
IN p_Status VARCHAR(50) ) 
BEGIN 
INSERT INTO SimCard (SimCard_No, Activation_Date, Status) 
VALUES (p_SimCard_No, p_Activation_Date, p_Status); 
END // 
DELIMITER ;

-- Income Entity
DELIMITER // 
CREATE PROCEDURE InsertIncome ( 
IN p_Expenses DECIMAL(10, 2), 
IN p_Net_Income DECIMAL(10, 2), 
IN p_Status VARCHAR(50) ) 
BEGIN 
INSERT INTO Income (Expenses, Net_Income, Status) 
VALUES (p_Expenses, p_Net_Income, p_Status); 
END // 
DELIMITER ;
-- Payment Entity
DELIMITER // 
CREATE PROCEDURE InsertPayment ( 
IN p_Payment_ID INT, 
IN p_customerID INT, 
IN p_Payment_Date DATE ) 
BEGIN 
INSERT INTO Payment (Payment_ID, customerID, Payment_Date) 
VALUES (p_Payment_ID, p_customerID, p_Payment_Date); 
END // 
DELIMITER ;