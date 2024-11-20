
-- For Customer Entity
CREATE TABLE Customer (
customerID INT PRIMARY KEY, 
Personal_Info VARCHAR(255) NOT NULL,
CHECK (CHAR_LENGTH(Personal_Info) > 0)
) ENGINE=InnoDB;


CREATE TABLE Customer_Feedback ( 
customerID INT, 
Feedback TEXT, 
PRIMARY KEY (customerID), 
FOREIGN KEY (customerID) REFERENCES Customer(customerID),
CHECK (CHAR_LENGTH(Feedback) > 0)
) ENGINE=InnoDB;
-- The Index in both Customer and Customer_Feedback tables is B+ Tree.


-- For Employee Entity
CREATE TABLE Employee ( 
employee_ID INT PRIMARY KEY, 
Personal_Info VARCHAR(255) NOT NULL,
CHECK (CHAR_LENGTH(Personal_Info) > 0)
) ENGINE=InnoDB ;


CREATE TABLE Employee_Performance ( 
employee_ID INT, 
Performance_Data TEXT, 
PRIMARY KEY (employee_ID), 
FOREIGN KEY (employee_ID) REFERENCES Employee(employee_ID),
CHECK (CHAR_LENGTH(Performance_Data) > 0)
) ENGINE=InnoDB;
-- For both tables, the index is B+ tree.


-- For Shareholder Entity 
CREATE TABLE Shareholder ( 
Shareholder_ID INT PRIMARY KEY, 
Financial_Data VARCHAR(255) NOT NULL,
CHECK (CHAR_LENGTH(Financial_Data) > 0)
) ENGINE=InnoDB;


CREATE TABLE Shareholder_Performance ( 
Shareholder_ID INT, 
Market_Performance TEXT, 
PRIMARY KEY (Shareholder_ID), 
FOREIGN KEY (Shareholder_ID) REFERENCES Shareholder(Shareholder_ID),
CHECK (CHAR_LENGTH(Market_Performance) > 0)
) ENGINE=InnoDB;
-- B+ Tree index for both tables.


-- For Call Entity
CREATE TABLE Calls ( 
Call_ID INT PRIMARY KEY, 
Date DATE NOT NULL, 
Caller_ID INT NOT NULL
) ENGINE=InnoDB;


-- MPesa Entity
CREATE TABLE MPesa ( 
Transaction_ID INT PRIMARY KEY, 
Customer_ID INT NOT NULL, 
Transaction_Amount DECIMAL(10, 2) NOT NULL, 
FOREIGN KEY (Customer_ID) REFERENCES Customer(customerID),
CHECK (Transaction_Amount >= 0)
) ENGINE=InnoDB;	
  -- Hash Index or B+ Tree index.


-- Support Entity
CREATE TABLE Support ( 
Ticket_ID INT PRIMARY KEY, 
Customer_ID INT NOT NULL, 
Status VARCHAR(50) NOT NULL, 
FOREIGN KEY (Customer_ID) REFERENCES Customer(customerID),
CHECK (CHAR_LENGTH(Status) > 0)
) ENGINE=InnoDB;
-- Hash Index or B+ Tree index.-->

-- SimCard Entity
CREATE TABLE SimCard ( 
SimCard_No INT PRIMARY KEY, 
Activation_Date DATE NOT NULL, 
Status VARCHAR(50) NOT NULL,
CHECK (CHAR_LENGTH(Status) > 0)
) ENGINE=InnoDB;
-- B+ Tree index.

-- Income Entity
CREATE TABLE Income ( 
Expenses DECIMAL(10, 2) NOT NULL, 
Net_Income DECIMAL(10, 2) NOT NULL, 
Status VARCHAR(50) NOT NULL, 
PRIMARY KEY (Expenses, Net_Income) ,
CHECK (Expenses >= 0), 
CHECK (Net_Income >= 0), 
CHECK (CHAR_LENGTH(Status) > 0)
) ENGINE=InnoDB;

-- Payment Entity
CREATE TABLE Payment (
Payment_ID INT PRIMARY KEY, 
customerID INT NOT NULL, 
Payment_Date DATE NOT NULL, 
FOREIGN KEY (customerID) REFERENCES Customer(customerID)
) ENGINE=InnoDB;
-- Hash Index or B+ Tree.