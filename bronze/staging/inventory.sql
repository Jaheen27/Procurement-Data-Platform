CREATE TABLE staging.inventory (
    Inventory_ID VARCHAR(20),
    PO_ID VARCHAR(20),
    Product_ID VARCHAR(20),
    Warehouse_ID VARCHAR(20),
    Snapshot_Date DATE,
    Opening_Stock INT,
    Stock_In INT,
    Stock_Out INT,
    Closing_Stock INT,
    Reorder_Level INT,
    Safety_Stock INT,
    Inventory_Value_INR DECIMAL(15,2),
    Stock_Status VARCHAR(50),
    Capacity_Utilization_Percent DECIMAL(5,2)
);