CREATE TABLE staging.contracts (
    Contract_ID VARCHAR(20),
    Supplier_ID VARCHAR(20),
    Contract_Name VARCHAR(200),
    Start_Date DATE,
    End_Date DATE,
    Contract_Value DECIMAL(15,2),
    Currency VARCHAR(10),
    Contract_Type VARCHAR(50),
    Contract_Status VARCHAR(50),
    Payment_Terms_Days INT
);