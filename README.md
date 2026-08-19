[README_Data_Model.txt](https://github.com/user-attachments/files/31221153/README_Data_Model.txt)
INVENTORY & WAREHOUSE ANALYTICS DATASET
==========================================
Purpose: Pentaho ETL -> PostgreSQL -> Power BI.

Exactly 5,000 procurement/supply transactions:
2,500 Domestic + 2,500 International.

Files and row counts:
products.csv    300
suppliers.csv   250
warehouses.csv  10
contracts.csv   600
procurement.csv 5000
inventory.csv   5000
invoices.csv    5000

Recommended PostgreSQL load order:
products -> suppliers -> warehouses -> contracts -> procurement -> inventory -> invoices

Primary keys:
Product_ID, Supplier_ID, Warehouse_ID, Contract_ID, PO_ID, Inventory_ID, Invoice_ID

Foreign keys:
contracts.Supplier_ID -> suppliers.Supplier_ID
procurement.Supplier_ID -> suppliers.Supplier_ID
procurement.Product_ID -> products.Product_ID
procurement.Warehouse_ID -> warehouses.Warehouse_ID
procurement.Contract_ID -> contracts.Contract_ID
inventory.PO_ID -> procurement.PO_ID
inventory.Product_ID -> products.Product_ID
inventory.Warehouse_ID -> warehouses.Warehouse_ID
invoices.PO_ID -> procurement.PO_ID
invoices.Supplier_ID -> suppliers.Supplier_ID

Power BI KPIs:
Total Procurement Value, Domestic vs International Spend, Inventory Value,
Stockout Count, Reorder Count, Overstock Count, On-Time Delivery %,
Average Supplier Lead Time, Average Delay, Overdue Invoice %, Contract Value,
Warehouse Capacity Utilization, Top Suppliers, Top Products, Monthly Spend,
Procurement by Country and Warehouse.

Pentaho:
Use CSV File Input -> Select Values/Data Validator -> Calculator/Formula ->
Filter Rows/Database Lookup -> PostgreSQL Table Output.
Keep IDs as text/VARCHAR, dates as DATE, quantities as INTEGER, monetary fields as DECIMAL.
