CREATE TABLE staging.invoices (
    Invoice_ID VARCHAR(20),
    PO_ID VARCHAR(20),
    Supplier_ID VARCHAR(20),
    Invoice_Date DATE,
    Receipt_Date DATE,
    Due_Date DATE,
    Invoice_Amount_INR DECIMAL(15,2),
    Currency VARCHAR(10),
    Exchange_Rate_to_INR DECIMAL(10,4),
    Payment_Status VARCHAR(50),
    Paid_Date DATE,
    Matching_Status VARCHAR(50),
    Invoice_Approval_Status VARCHAR(50)
);