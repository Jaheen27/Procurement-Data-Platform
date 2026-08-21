CREATE TABLE staging.purchase_orders (
    PO_ID VARCHAR(20),
    PO_Date DATE,
    Supplier_ID VARCHAR(20),
    Product_ID VARCHAR(20),
    Warehouse_ID VARCHAR(20),
    Contract_ID VARCHAR(20),
    Supply_Type VARCHAR(50),
    Quantity INT,

    Subtotal_INR DECIMAL(15,2),
    Freight_INR DECIMAL(15,2),
    
    Import_Duty_INR DECIMAL(15,2),
    Tax_INR DECIMAL(15,2),
    Total_PO_Value_INR DECIMAL(15,2),
    Currency VARCHAR(10),
    Exchange_Rate_to_INR DECIMAL(10,4),
    Shipping_Mode VARCHAR(50),
    Expected_Delivery_Date DATE,
    Actual_Receipt_Date DATE,
    Delay_Days INT,
    Approval_Status VARCHAR(50),
    PO_Status VARCHAR(50)
);