-- Write your SQL code here
For Customer Entity 
CREATE TABLE Customer (
customerID INT PRIMARY KEY, 
Personal_Info VARCHAR(255)
) ENGINE=MyISAM;


CREATE TABLE Customer_Feedback ( 
customerID INT, 
Feedback TEXT, 
PRIMARY KEY (customerID), 
FOREIGN KEY (customerID) REFERENCES Customer(customerID) 
) ENGINE=InnoDB;
The Index in both Customer and Customer_Feedback tables is B+ Tree.


For Employee Entity
CREATE TABLE Employee ( 
employee_ID INT PRIMARY KEY, 
Personal_Info VARCHAR(255) 
) ENGINE=Memory; 


CREATE TABLE Employee_Performance ( 
employee_ID INT, 
Performance_Data TEXT, 
PRIMARY KEY (employee_ID), 
FOREIGN KEY (employee_ID) REFERENCES Employee(employee_ID) 
) ENGINE=InnoDB;
For both tables, the index is B+ tree.


For Shareholder Entity 
CREATE TABLE Shareholder ( 
Shareholder_ID INT PRIMARY KEY, 
Financial_Data VARCHAR(255) 
) ENGINE=MyISAM;


CREATE TABLE Shareholder_Performance ( 
Shareholder_ID INT, 
Market_Performance TEXT, 
PRIMARY KEY (Shareholder_ID), 
FOREIGN KEY (Shareholder_ID) REFERENCES Shareholder(Shareholder_ID)
) ENGINE=InnoDB;
B+ Tree index  for both tables.


For Call Entity
CREATE TABLE Call ( 
Call_ID INT PRIMARY KEY, 
Date DATE, 
Caller_ID INT 
) ENGINE=InnoDB;
  Hash Index or B+ Tree index.


M-Pesa Entity
CREATE TABLE MPesa ( 
Transaction_ID INT PRIMARY KEY, 
Customer_ID INT, 
Transaction_Amount DECIMAL(10, 2), 
FOREIGN KEY (Customer_ID) REFERENCES Customer(customerID) 
) ENGINE=InnoDB;	
  Hash Index or B+ Tree index.


Support Entity
CREATE TABLE Support ( 
Ticket_ID INT PRIMARY KEY, 
Customer_ID INT, 
Status VARCHAR(50), 
FOREIGN KEY (Customer_ID) REFERENCES Customer(customerID) 
) ENGINE=InnoDB;
  Hash Index or B+ Tree index.




SimCard Entity
CREATE TABLE SimCard ( 
SimCard_No INT PRIMARY KEY, 
Activation_Date DATE, 
Status VARCHAR(50) 
) ENGINE=InnoDB;
B+ Tree index.


Income Entity
CREATE TABLE Income ( 
Expenses DECIMAL(10, 2), 
Net_Income DECIMAL(10, 2), 
Status VARCHAR(50), 
PRIMARY KEY (Expenses, Net_Income) 
) ENGINE=MyISAM;
B+ Tree index.


Payment Entity
CREATE TABLE Payment ( 
Payment_ID INT PRIMARY KEY, 
customerID INT, 
Payment_Date DATE, 
FOREIGN KEY (customerID) REFERENCES Customer(customerID) 
) ENGINE=InnoDB;
 Hash Index or B+ Tree.