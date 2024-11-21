-- Write your SQL code here
-- Customer Entity
CREATE VIEW CustomerFeedbackView AS
SELECT 
    c.customerID, 
    c.Personal_Info, 
    cf.Feedback
FROM 
    Customer c
LEFT JOIN 
    Customer_Feedback cf ON c.customerID = cf.customerID;

-- Employee Entity
CREATE VIEW EmployeePerformanceView AS
SELECT 
    e.employee_ID, 
    e.Personal_Info, 
    ep.Performance_Data
FROM 
    Employee e
LEFT JOIN 
 Employee_Performance ep ON e.employee_ID = ep.employee_ID;
 
-- Shareholder Entity
CREATE VIEW ShareholderPerformanceView AS
SELECT 
    s.Shareholder_ID, 
    s.Financial_Data, 
    sp.Market_Performance
FROM 
    Shareholder s
LEFT JOIN 
    Shareholder_Performance sp ON s.Shareholder_ID = sp.Shareholder_ID;

-- Calls Entity
CREATE VIEW CallDetailsView AS
SELECT 
    Call_ID, 
    Date, 
    Caller_ID
FROM 
    Calls;

-- MPesa Entity
CREATE VIEW MPesaTransactionsView AS
SELECT 
    mp.Transaction_ID, 
    mp.Customer_ID, 
    c.Personal_Info, 
    mp.Transaction_Amount
FROM 
    MPesa mp
LEFT JOIN 
 Customer c ON mp.Customer_ID = c.customerID;

-- Support Entity
CREATE VIEW SupportTicketsView AS
SELECT 
    s.Ticket_ID, 
    s.Customer_ID, 
    c.Personal_Info, 
    s.Status
FROM 
    Support s
LEFT JOIN 
    Customer c ON s.Customer_ID = c.customerID;

-- SimCard Entity
CREATE VIEW SimCardDetailsView AS
SELECT 
    SimCard_No, 
    Activation_Date, 
    Status
FROM 
    SimCard;

-- Income Entity
CREATE VIEW IncomeDetailsView AS
SELECT 
    Expenses, 
    Net_Income, 
    Status
FROM 
    Income;

-- Payment Entity
CREATE VIEW PaymentDetailsView AS
SELECT 
    p.Payment_ID, 
    p.customerID, 
    c.Personal_Info, 
    p.Payment_Date
FROM 
    Payment p
LEFT JOIN 
    Customer c ON p.customerID = c.customerID